.class public Landroid/os/storage/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/StorageManager$1;,
        Landroid/os/storage/StorageManager$ListenerDelegate;,
        Landroid/os/storage/StorageManager$StorageStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$UmsConnectionChangedStorageEvent;,
        Landroid/os/storage/StorageManager$StorageEvent;,
        Landroid/os/storage/StorageManager$ObbStateChangedStorageEvent;,
        Landroid/os/storage/StorageManager$ObbListenerDelegate;,
        Landroid/os/storage/StorageManager$ObbActionListener;,
        Landroid/os/storage/StorageManager$MountServiceBinderListener;
    }
.end annotation


# static fields
.field public static final CRYPT_TYPE_DEFAULT:I = 0x1

.field public static final CRYPT_TYPE_PASSWORD:I = 0x0

.field public static final CRYPT_TYPE_PATTERN:I = 0x2

.field public static final CRYPT_TYPE_PIN:I = 0x3

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:J = 0x100000L

.field private static final DEFAULT_THRESHOLD_MAX_BYTES:J = 0x1f400000L

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field public static final OWNER_INFO_KEY:Ljava/lang/String; = "OwnerInfo"

.field public static final PATTERN_VISIBLE_KEY:Ljava/lang/String; = "PatternVisible"

.field public static final SYSTEM_LOCALE_KEY:Ljava/lang/String; = "SystemLocale"

.field private static final TAG:Ljava/lang/String; = "StorageManager"


# instance fields
.field private mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/StorageManager$ListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMountService:Landroid/os/storage/IMountService;

.field private final mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mTgtLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/os/Looper;)V
    .registers 5
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "tgtLooper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 113
    new-instance v0, Landroid/os/storage/StorageManager$ObbActionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/storage/StorageManager$ObbActionListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    .line 319
    iput-object p1, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    .line 320
    iput-object p2, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    .line 321
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    iput-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    .line 322
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v0, :cond_3e

    .line 323
    const-string v0, "StorageManager"

    const-string v1, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Could not contact mount service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_3e
    return-void
.end method

.method static synthetic access$000(Landroid/os/storage/StorageManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Landroid/os/storage/StorageManager;)I
    .registers 2
    .param p0, "x0"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/storage/StorageManager;->getNextNonce()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/os/storage/StorageManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Landroid/os/storage/StorageManager;

    .prologue
    .line 64
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mTgtLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static from(Landroid/content/Context;)Landroid/os/storage/StorageManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method private getNextNonce()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mNextNonce:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public static getPhysicalExternalVolume([Landroid/os/storage/StorageVolume;)Ljava/util/ArrayList;
    .registers 5
    .param p0, "volumesphy"    # [Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/storage/StorageVolume;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation

    .prologue
    .line 690
    array-length v0, p0

    .line 691
    .local v0, "count":I
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 692
    .local v2, "volumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-ge v1, v0, :cond_18

    .line 693
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v3

    if-nez v3, :cond_15

    .line 694
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 697
    :cond_18
    return-object v2
.end method

.method public static getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;
    .registers 7
    .param p0, "volumes"    # [Landroid/os/storage/StorageVolume;

    .prologue
    .line 633
    move-object v0, p0

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_3
    if-ge v1, v2, :cond_11

    aget-object v3, v0, v1

    .line 634
    .local v3, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 639
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :goto_d
    return-object v3

    .line 633
    .restart local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 638
    .end local v3    # "volume":Landroid/os/storage/StorageVolume;
    :cond_11
    const-string v4, "StorageManager"

    const-string v5, "No primary storage defined"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v3, 0x0

    goto :goto_d
.end method


# virtual methods
.method public disableUsbMassStorage()V
    .registers 4

    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 428
    :goto_6
    return-void

    .line 425
    :catch_7
    move-exception v0

    .line 426
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to disable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public enableUsbMassStorage()V
    .registers 4

    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->setUsbMassStorageEnabled(Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    .line 415
    :goto_6
    return-void

    .line 412
    :catch_7
    move-exception v0

    .line 413
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to enable UMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 562
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    :try_start_6
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    .line 570
    :goto_c
    return-object v1

    .line 566
    :catch_d
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to find mounted path for OBB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 570
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public getPrimaryVolume()Landroid/os/storage/StorageVolume;
    .registers 2

    .prologue
    .line 628
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    return-object v0
.end method

.method public getStorageBytesUntilLow(Ljava/io/File;)J
    .registers 6
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 653
    invoke-virtual {p1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getStorageFullBytes(Ljava/io/File;)J
    .registers 6
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 680
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "sys_storage_full_threshold_bytes"

    const-wide/32 v2, 0x100000

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStorageLowBytes(Ljava/io/File;)J
    .registers 12
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 663
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_threshold_percentage"

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v2, v6

    .line 665
    .local v2, "lowPercent":J
    invoke-virtual {p1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    mul-long/2addr v6, v2

    const-wide/16 v8, 0x64

    div-long v0, v6, v8

    .line 667
    .local v0, "lowBytes":J
    iget-object v6, p0, Landroid/os/storage/StorageManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "sys_storage_threshold_max_bytes"

    const-wide/32 v8, 0x1f400000

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v4

    .line 670
    .local v4, "maxLowBytes":J
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    return-wide v6
.end method

.method public getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 708
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 709
    .local v2, "volumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_8

    .line 716
    :cond_7
    :goto_7
    return-object v3

    .line 710
    :cond_8
    array-length v0, v2

    .line 711
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_7

    .line 712
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 713
    aget-object v3, v2, v1

    goto :goto_7

    .line 711
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public getVolumeList()[Landroid/os/storage/StorageVolume;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 594
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v5, :cond_8

    new-array v4, v6, [Landroid/os/storage/StorageVolume;

    .line 606
    :cond_7
    :goto_7
    return-object v4

    .line 596
    :cond_8
    :try_start_8
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v5}, Landroid/os/storage/IMountService;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 597
    .local v3, "list":[Landroid/os/Parcelable;
    if-nez v3, :cond_14

    const/4 v5, 0x0

    new-array v4, v5, [Landroid/os/storage/StorageVolume;

    goto :goto_7

    .line 598
    :cond_14
    array-length v2, v3

    .line 599
    .local v2, "length":I
    new-array v4, v2, [Landroid/os/storage/StorageVolume;

    .line 600
    .local v4, "result":[Landroid/os/storage/StorageVolume;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v2, :cond_7

    .line 601
    aget-object v5, v3, v1

    check-cast v5, Landroid/os/storage/StorageVolume;

    aput-object v5, v4, v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_20} :catch_23

    .line 600
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 604
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "list":[Landroid/os/Parcelable;
    .end local v4    # "result":[Landroid/os/storage/StorageVolume;
    :catch_23
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "StorageManager"

    const-string v6, "Failed to get volume list"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public getVolumePaths()[Ljava/lang/String;
    .registers 6

    .prologue
    .line 616
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 617
    .local v3, "volumes":[Landroid/os/storage/StorageVolume;
    if-nez v3, :cond_8

    const/4 v2, 0x0

    .line 623
    :cond_7
    return-object v2

    .line 618
    :cond_8
    array-length v0, v3

    .line 619
    .local v0, "count":I
    new-array v2, v0, [Ljava/lang/String;

    .line 620
    .local v2, "paths":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_7

    .line 621
    aget-object v4, v3, v1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 620
    add-int/lit8 v1, v1, 0x1

    goto :goto_c
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 579
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_8

    const-string/jumbo v1, "removed"

    .line 584
    :goto_7
    return-object v1

    .line 581
    :cond_8
    :try_start_8
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_f

    move-result-object v1

    goto :goto_7

    .line 582
    :catch_f
    move-exception v0

    .line 583
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public isObbMounted(Ljava/lang/String;)Z
    .registers 5
    .param p1, "rawPath"    # Ljava/lang/String;

    .prologue
    .line 541
    const-string/jumbo v1, "rawPath cannot be null"

    invoke-static {p1, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    :try_start_6
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1}, Landroid/os/storage/IMountService;->isObbMounted(Ljava/lang/String;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    .line 549
    :goto_c
    return v1

    .line 545
    :catch_d
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to check if OBB is mounted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public isUsbMassStorageConnected()Z
    .registers 4

    .prologue
    .line 438
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageConnected()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 442
    :goto_6
    return v1

    .line 439
    :catch_7
    move-exception v0

    .line 440
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS connection state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isUsbMassStorageEnabled()Z
    .registers 4

    .prologue
    .line 453
    :try_start_0
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1}, Landroid/os/storage/IMountService;->isUsbMassStorageEnabled()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 457
    :goto_6
    return v1

    .line 454
    :catch_7
    move-exception v0

    .line 455
    .local v0, "rex":Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to get UMS enable state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public modifyVolumeLocked(Ljava/lang/String;IZLjava/lang/String;)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "descriptionId"    # I
    .param p3, "removable"    # Z
    .param p4, "subsystem"    # Ljava/lang/String;

    .prologue
    .line 738
    const/4 v1, 0x0

    .line 739
    .local v1, "ret":I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v2, :cond_7

    const/4 v2, -0x1

    .line 745
    :goto_6
    return v2

    .line 741
    :cond_7
    :try_start_7
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/os/storage/IMountService;->modifyVolumeLocked(Ljava/lang/String;IZLjava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_f

    move-result v1

    :goto_d
    move v2, v1

    .line 745
    goto :goto_6

    .line 742
    :catch_f
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to modify volume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d
.end method

.method public mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/OnObbStateChangeListener;)Z
    .registers 11
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 482
    const-string/jumbo v0, "rawPath cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    const-string v0, "listener cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :try_start_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 487
    .local v2, "canonicalPath":Ljava/lang/String;
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v0, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v5

    .line 488
    .local v5, "nonce":I
    iget-object v0, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    move-object v1, p1

    move-object v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IMountService;->mountObb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_23} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_23} :catch_3f

    .line 489
    const/4 v0, 0x1

    .line 496
    .end local v2    # "canonicalPath":Ljava/lang/String;
    .end local v5    # "nonce":I
    :goto_24
    return v0

    .line 490
    :catch_25
    move-exception v6

    .line 491
    .local v6, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 492
    .end local v6    # "e":Ljava/io/IOException;
    :catch_3f
    move-exception v6

    .line 493
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "StorageManager"

    const-string v1, "Failed to mount OBB"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 496
    const/4 v0, 0x0

    goto :goto_24
.end method

.method public prepareDecryptOnRecovery(ILjava/lang/String;)I
    .registers 7
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 771
    const/4 v1, 0x0

    .line 773
    .local v1, "ret":I
    :try_start_1
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v2, p1, p2}, Landroid/os/storage/IMountService;->prepareDecryptOnRecovery(ILjava/lang/String;)I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 777
    :goto_7
    return v1

    .line 774
    :catch_8
    move-exception v0

    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to set volume state"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public registerListener(Landroid/os/storage/StorageEventListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .prologue
    .line 337
    if-nez p1, :cond_3

    .line 353
    :goto_2
    return-void

    .line 341
    :cond_3
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v2

    .line 342
    :try_start_6
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;
    :try_end_8
    .catchall {:try_start_6 .. :try_end_8} :catchall_25

    if-nez v1, :cond_19

    .line 344
    :try_start_a
    new-instance v1, Landroid/os/storage/StorageManager$MountServiceBinderListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/os/storage/StorageManager$MountServiceBinderListener;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageManager$1;)V

    iput-object v1, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    .line 345
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v1, v3}, Landroid/os/storage/IMountService;->registerListener(Landroid/os/storage/IMountServiceListener;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_19} :catch_28
    .catchall {:try_start_a .. :try_end_19} :catchall_25

    .line 351
    :cond_19
    :try_start_19
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    new-instance v3, Landroid/os/storage/StorageManager$ListenerDelegate;

    invoke-direct {v3, p0, p1}, Landroid/os/storage/StorageManager$ListenerDelegate;-><init>(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageEventListener;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    monitor-exit v2

    goto :goto_2

    :catchall_25
    move-exception v1

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_19 .. :try_end_27} :catchall_25

    throw v1

    .line 346
    :catch_28
    move-exception v0

    .line 347
    .local v0, "rex":Landroid/os/RemoteException;
    :try_start_29
    const-string v1, "StorageManager"

    const-string v3, "Register mBinderListener failed"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_29 .. :try_end_31} :catchall_25

    goto :goto_2
.end method

.method public setUsbMassStorageEnabled(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 394
    if-eqz p1, :cond_1f

    const-string/jumbo v0, "mass_storage"

    new-instance v1, Landroid/hardware/usb/UsbManager;

    invoke-direct {v1, v2, v2}, Landroid/hardware/usb/UsbManager;-><init>(Landroid/content/Context;Landroid/hardware/usb/IUsbManager;)V

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 396
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 397
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->enableUsbMassStorage()V

    .line 402
    :cond_1e
    :goto_1e
    return-void

    .line 399
    :cond_1f
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 400
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    goto :goto_1e
.end method

.method public setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_5

    .line 731
    :goto_4
    return-void

    .line 727
    :cond_5
    :try_start_5
    iget-object v1, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v1, p1, p2}, Landroid/os/storage/IMountService;->setVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 728
    :catch_b
    move-exception v0

    .line 729
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "StorageManager"

    const-string v2, "Failed to set volume state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method public unmountObb(Ljava/lang/String;ZLandroid/os/storage/OnObbStateChangeListener;)Z
    .registers 8
    .param p1, "rawPath"    # Ljava/lang/String;
    .param p2, "force"    # Z
    .param p3, "listener"    # Landroid/os/storage/OnObbStateChangeListener;

    .prologue
    .line 520
    const-string/jumbo v2, "rawPath cannot be null"

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v2, "listener cannot be null"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    :try_start_b
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-virtual {v2, p3}, Landroid/os/storage/StorageManager$ObbActionListener;->addListener(Landroid/os/storage/OnObbStateChangeListener;)I

    move-result v1

    .line 525
    .local v1, "nonce":I
    iget-object v2, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Landroid/os/storage/StorageManager;->mObbActionListener:Landroid/os/storage/StorageManager$ObbActionListener;

    invoke-interface {v2, p1, p2, v3, v1}, Landroid/os/storage/IMountService;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_1a

    .line 526
    const/4 v2, 0x1

    .line 531
    .end local v1    # "nonce":I
    :goto_19
    return v2

    .line 527
    :catch_1a
    move-exception v0

    .line 528
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "StorageManager"

    const-string v3, "Failed to mount OBB"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 531
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public unregisterListener(Landroid/os/storage/StorageEventListener;)V
    .registers 9
    .param p1, "listener"    # Landroid/os/storage/StorageEventListener;

    .prologue
    .line 363
    if-nez p1, :cond_3

    .line 386
    :goto_2
    return-void

    .line 367
    :cond_3
    iget-object v5, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    monitor-enter v5

    .line 368
    :try_start_6
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 369
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    if-ge v0, v3, :cond_22

    .line 370
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager$ListenerDelegate;

    .line 371
    .local v1, "l":Landroid/os/storage/StorageManager$ListenerDelegate;
    invoke-virtual {v1}, Landroid/os/storage/StorageManager$ListenerDelegate;->getListener()Landroid/os/storage/StorageEventListener;

    move-result-object v4

    if-ne v4, p1, :cond_3d

    .line 372
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 376
    .end local v1    # "l":Landroid/os/storage/StorageManager$ListenerDelegate;
    :cond_22
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_38

    iget-object v4, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;
    :try_end_2c
    .catchall {:try_start_6 .. :try_end_2c} :catchall_3a

    if-eqz v4, :cond_38

    .line 378
    :try_start_2e
    iget-object v4, p0, Landroid/os/storage/StorageManager;->mMountService:Landroid/os/storage/IMountService;

    iget-object v6, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;

    invoke-interface {v4, v6}, Landroid/os/storage/IMountService;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 379
    const/4 v4, 0x0

    iput-object v4, p0, Landroid/os/storage/StorageManager;->mBinderListener:Landroid/os/storage/StorageManager$MountServiceBinderListener;
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_38} :catch_40
    .catchall {:try_start_2e .. :try_end_38} :catchall_3a

    .line 385
    :cond_38
    :try_start_38
    monitor-exit v5

    goto :goto_2

    .end local v0    # "i":I
    .end local v3    # "size":I
    :catchall_3a
    move-exception v4

    monitor-exit v5
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3a

    throw v4

    .line 369
    .restart local v0    # "i":I
    .restart local v1    # "l":Landroid/os/storage/StorageManager$ListenerDelegate;
    .restart local v3    # "size":I
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 380
    .end local v1    # "l":Landroid/os/storage/StorageManager$ListenerDelegate;
    :catch_40
    move-exception v2

    .line 381
    .local v2, "rex":Landroid/os/RemoteException;
    :try_start_41
    const-string v4, "StorageManager"

    const-string v6, "Unregister mBinderListener failed"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    monitor-exit v5
    :try_end_49
    .catchall {:try_start_41 .. :try_end_49} :catchall_3a

    goto :goto_2
.end method
