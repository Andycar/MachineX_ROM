.class final Landroid/app/SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/SharedPreferencesImpl$EditorImpl;,
        Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SharedPreferencesImpl"

.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private mDiskWritesInFlight:I

.field private final mFile:Ljava/io/File;

.field private final mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mMode:I

.field private mStatSize:J

.field private mStatTimestamp:J

.field private final mWritingToDiskLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;I)V
    .registers 5
    .param p1, "file"    # Ljava/io/File;
    .param p2, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    .line 65
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 69
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    .line 71
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 75
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 76
    invoke-static {p1}, Landroid/app/SharedPreferencesImpl;->makeBackupFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 77
    iput p2, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    .line 78
    iput-boolean v1, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 80
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Landroid/app/SharedPreferencesImpl;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->loadFromDiskLocked()V

    return-void
.end method

.method static synthetic access$100(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 3
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/SharedPreferencesImpl;)I
    .registers 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$308(Landroid/app/SharedPreferencesImpl;)I
    .registers 3
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$310(Landroid/app/SharedPreferencesImpl;)I
    .registers 3
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    iget v0, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    return v0
.end method

.method static synthetic access$400(Landroid/app/SharedPreferencesImpl;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/SharedPreferencesImpl;Ljava/util/Map;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 51
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Landroid/app/SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .registers 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;

    .prologue
    .line 51
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mWritingToDiskLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 2
    .param p0, "x0"    # Landroid/app/SharedPreferencesImpl;
    .param p1, "x1"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/app/SharedPreferencesImpl;->writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    return-void
.end method

.method private awaitLoadedLocked()V
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_b

    .line 202
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v0

    invoke-interface {v0}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 204
    :cond_b
    :goto_b
    iget-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-nez v0, :cond_15

    .line 206
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_b

    .line 207
    :catch_13
    move-exception v0

    goto :goto_b

    .line 210
    :cond_15
    return-void
.end method

.method private static createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .registers 9
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, -0x1

    .line 542
    const/4 v3, 0x0

    .line 544
    .local v3, "str":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_7} :catch_a

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .local v4, "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "str":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    :goto_8
    move-object v5, v3

    .line 561
    :goto_9
    return-object v5

    .line 545
    :catch_a
    move-exception v0

    .line 546
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 547
    .local v2, "parent":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 548
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v5, 0x0

    goto :goto_9

    .line 551
    :cond_2f
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x1f9

    invoke-static {v5, v6, v7, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 556
    :try_start_38
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_3d} :catch_3f

    .end local v3    # "str":Ljava/io/FileOutputStream;
    .restart local v4    # "str":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 559
    .end local v4    # "str":Ljava/io/FileOutputStream;
    .restart local v3    # "str":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 557
    :catch_3f
    move-exception v1

    .line 558
    .local v1, "e2":Ljava/io/FileNotFoundException;
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
    .registers 9
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;
    .param p2, "postWriteRunnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 509
    new-instance v2, Landroid/app/SharedPreferencesImpl$2;

    invoke-direct {v2, p0, p1, p2}, Landroid/app/SharedPreferencesImpl$2;-><init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V

    .line 523
    .local v2, "writeToDiskRunnable":Ljava/lang/Runnable;
    if-nez p2, :cond_1a

    move v0, v3

    .line 527
    .local v0, "isFromSyncCommit":Z
    :goto_a
    if-eqz v0, :cond_21

    .line 528
    const/4 v1, 0x0

    .line 529
    .local v1, "wasEmpty":Z
    monitor-enter p0

    .line 530
    :try_start_e
    iget v5, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-ne v5, v3, :cond_1c

    move v1, v3

    .line 531
    :goto_13
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_1e

    .line 532
    if-eqz v1, :cond_21

    .line 533
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 539
    .end local v1    # "wasEmpty":Z
    :goto_19
    return-void

    .end local v0    # "isFromSyncCommit":Z
    :cond_1a
    move v0, v4

    .line 523
    goto :goto_a

    .restart local v0    # "isFromSyncCommit":Z
    .restart local v1    # "wasEmpty":Z
    :cond_1c
    move v1, v4

    .line 530
    goto :goto_13

    .line 531
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v3

    .line 538
    .end local v1    # "wasEmpty":Z
    :cond_21
    invoke-static {}, Landroid/app/QueuedWork;->singleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_19
.end method

.method private hasFileChangedUnexpectedly()Z
    .registers 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 160
    monitor-enter p0

    .line 161
    :try_start_3
    iget v4, p0, Landroid/app/SharedPreferencesImpl;->mDiskWritesInFlight:I

    if-lez v4, :cond_9

    .line 164
    monitor-exit p0

    .line 181
    :goto_8
    return v2

    .line 166
    :cond_9
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_32

    .line 174
    :try_start_a
    invoke-static {}, Ldalvik/system/BlockGuard;->getThreadPolicy()Ldalvik/system/BlockGuard$Policy;

    move-result-object v4

    invoke-interface {v4}, Ldalvik/system/BlockGuard$Policy;->onReadFromDisk()V

    .line 175
    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_a .. :try_end_1a} :catch_35

    move-result-object v1

    .line 180
    .local v1, "stat":Landroid/system/StructStat;
    monitor-enter p0

    .line 181
    :try_start_1c
    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_mtime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_2c

    iget-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    iget-wide v6, v1, Landroid/system/StructStat;->st_size:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2d

    :cond_2c
    move v2, v3

    :cond_2d
    monitor-exit p0

    goto :goto_8

    .line 182
    :catchall_2f
    move-exception v2

    monitor-exit p0
    :try_end_31
    .catchall {:try_start_1c .. :try_end_31} :catchall_2f

    throw v2

    .line 166
    .end local v1    # "stat":Landroid/system/StructStat;
    :catchall_32
    move-exception v2

    :try_start_33
    monitor-exit p0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v2

    .line 176
    :catch_35
    move-exception v0

    .local v0, "e":Landroid/system/ErrnoException;
    move v2, v3

    .line 177
    goto :goto_8
.end method

.method private loadFromDiskLocked()V
    .registers 9

    .prologue
    .line 97
    iget-boolean v5, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    if-eqz v5, :cond_5

    .line 141
    :goto_4
    return-void

    .line 100
    :cond_5
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 101
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 102
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 106
    :cond_19
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_49

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_49

    .line 107
    const-string v5, "SharedPreferencesImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Attempt to read preferences file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " without permission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_49
    const/4 v1, 0x0

    .line 111
    .local v1, "map":Ljava/util/Map;
    const/4 v2, 0x0

    .line 113
    .local v2, "stat":Landroid/system/StructStat;
    :try_start_4b
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v2

    .line 114
    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z
    :try_end_5a
    .catch Landroid/system/ErrnoException; {:try_start_4b .. :try_end_5a} :catch_93

    move-result v5

    if-eqz v5, :cond_73

    .line 115
    const/4 v3, 0x0

    .line 117
    .local v3, "str":Ljava/io/BufferedInputStream;
    :try_start_5e
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v6, 0x4000

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5e .. :try_end_6c} :catch_87
    .catch Ljava/io/FileNotFoundException; {:try_start_5e .. :try_end_6c} :catch_95
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_6c} :catch_a1
    .catchall {:try_start_5e .. :try_end_6c} :catchall_ad

    .line 119
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .local v4, "str":Ljava/io/BufferedInputStream;
    :try_start_6c
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_6f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_6f} :catch_c3
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_6f} :catch_c0
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_bd
    .catchall {:try_start_6c .. :try_end_6f} :catchall_ba

    move-result-object v1

    .line 127
    :try_start_70
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_73
    .catch Landroid/system/ErrnoException; {:try_start_70 .. :try_end_73} :catch_93

    .line 132
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    :cond_73
    :goto_73
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 133
    if-eqz v1, :cond_b2

    .line 134
    iput-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 135
    iget-wide v6, v2, Landroid/system/StructStat;->st_mtime:J

    iput-wide v6, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    .line 136
    iget-wide v6, v2, Landroid/system/StructStat;->st_size:J

    iput-wide v6, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 140
    :goto_82
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 120
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    :catch_87
    move-exception v0

    .line 121
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_88
    :try_start_88
    const-string v5, "SharedPreferencesImpl"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8f
    .catchall {:try_start_88 .. :try_end_8f} :catchall_ad

    .line 127
    :try_start_8f
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_92
    .catch Landroid/system/ErrnoException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_73

    .line 130
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    :catch_93
    move-exception v5

    goto :goto_73

    .line 122
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    :catch_95
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_96
    :try_start_96
    const-string v5, "SharedPreferencesImpl"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9d
    .catchall {:try_start_96 .. :try_end_9d} :catchall_ad

    .line 127
    :try_start_9d
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_a0
    .catch Landroid/system/ErrnoException; {:try_start_9d .. :try_end_a0} :catch_93

    goto :goto_73

    .line 124
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_a1
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    :goto_a2
    :try_start_a2
    const-string v5, "SharedPreferencesImpl"

    const-string v6, "getSharedPreferences"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_ad

    .line 127
    :try_start_a9
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_73

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_ad
    move-exception v5

    :goto_ae
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v5
    :try_end_b2
    .catch Landroid/system/ErrnoException; {:try_start_a9 .. :try_end_b2} :catch_93

    .line 138
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    :cond_b2
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    goto :goto_82

    .line 127
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catchall_ba
    move-exception v5

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_ae

    .line 124
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_bd
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_a2

    .line 122
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_c0
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_96

    .line 120
    .end local v3    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :catch_c3
    move-exception v0

    move-object v3, v4

    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v3    # "str":Ljava/io/BufferedInputStream;
    goto :goto_88
.end method

.method private static makeBackupFile(Ljava/io/File;)Ljava/io/File;
    .registers 4
    .param p0, "prefsFile"    # Ljava/io/File;

    .prologue
    .line 144
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bak"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private startLoadFromDisk()V
    .registers 3

    .prologue
    .line 84
    monitor-enter p0

    .line 85
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/app/SharedPreferencesImpl;->mLoaded:Z

    .line 86
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_10

    .line 87
    new-instance v0, Landroid/app/SharedPreferencesImpl$1;

    const-string v1, "SharedPreferencesImpl-load"

    invoke-direct {v0, p0, v1}, Landroid/app/SharedPreferencesImpl$1;-><init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/SharedPreferencesImpl$1;->start()V

    .line 94
    return-void

    .line 86
    :catchall_10
    move-exception v0

    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method private writeToFile(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .registers 9
    .param p1, "mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 567
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 568
    iget-boolean v3, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->changesMade:Z

    if-nez v3, :cond_12

    .line 573
    invoke-virtual {p1, v4}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    .line 626
    :goto_11
    return-void

    .line 576
    :cond_12
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 577
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v4, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 578
    const-string v3, "SharedPreferencesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t rename file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to backup file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p1, v6}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto :goto_11

    .line 584
    :cond_4e
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 592
    :cond_53
    :try_start_53
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-static {v3}, Landroid/app/SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 593
    .local v2, "str":Ljava/io/FileOutputStream;
    if-nez v2, :cond_98

    .line 594
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_5f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_53 .. :try_end_5f} :catch_60
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_5f} :catch_ce

    goto :goto_11

    .line 614
    .end local v2    # "str":Ljava/io/FileOutputStream;
    :catch_60
    move-exception v0

    .line 615
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 620
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_69
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_93

    .line 621
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_93

    .line 622
    const-string v3, "SharedPreferencesImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t clean up partially-written file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_93
    invoke-virtual {p1, v6}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V

    goto/16 :goto_11

    .line 597
    .restart local v2    # "str":Ljava/io/FileOutputStream;
    :cond_98
    :try_start_98
    iget-object v3, p1, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->mapToWriteToDisk:Ljava/util/Map;

    invoke-static {v3, v2}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 598
    invoke-static {v2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 599
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 600
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Landroid/app/SharedPreferencesImpl;->mMode:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/app/ContextImpl;->setFilePermissionsFromMode(Ljava/lang/String;II)V
    :try_end_af
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_98 .. :try_end_af} :catch_60
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_af} :catch_ce

    .line 602
    :try_start_af
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 603
    .local v1, "stat":Landroid/system/StructStat;
    monitor-enter p0
    :try_end_ba
    .catch Landroid/system/ErrnoException; {:try_start_af .. :try_end_ba} :catch_db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_af .. :try_end_ba} :catch_60
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_ba} :catch_ce

    .line 604
    :try_start_ba
    iget-wide v4, v1, Landroid/system/StructStat;->st_mtime:J

    iput-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatTimestamp:J

    .line 605
    iget-wide v4, v1, Landroid/system/StructStat;->st_size:J

    iput-wide v4, p0, Landroid/app/SharedPreferencesImpl;->mStatSize:J

    .line 606
    monitor-exit p0
    :try_end_c3
    .catchall {:try_start_ba .. :try_end_c3} :catchall_d8

    .line 611
    .end local v1    # "stat":Landroid/system/StructStat;
    :goto_c3
    :try_start_c3
    iget-object v3, p0, Landroid/app/SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 612
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/SharedPreferencesImpl$MemoryCommitResult;->setDiskWriteResult(Z)V
    :try_end_cc
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c3 .. :try_end_cc} :catch_60
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_cc} :catch_ce

    goto/16 :goto_11

    .line 616
    .end local v2    # "str":Ljava/io/FileOutputStream;
    :catch_ce
    move-exception v0

    .line 617
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "SharedPreferencesImpl"

    const-string/jumbo v4, "writeToFile: Got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 606
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "stat":Landroid/system/StructStat;
    .restart local v2    # "str":Ljava/io/FileOutputStream;
    :catchall_d8
    move-exception v3

    :try_start_d9
    monitor-exit p0
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    :try_start_da
    throw v3
    :try_end_db
    .catch Landroid/system/ErrnoException; {:try_start_da .. :try_end_db} :catch_db
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_da .. :try_end_db} :catch_60
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_db} :catch_ce

    .line 607
    .end local v1    # "stat":Landroid/system/StructStat;
    :catch_db
    move-exception v3

    goto :goto_c3
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 266
    monitor-enter p0

    .line 267
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 268
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 269
    :catchall_c
    move-exception v0

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 280
    monitor-enter p0

    .line 281
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 282
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_b

    .line 284
    new-instance v0, Landroid/app/SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/SharedPreferencesImpl;)V

    return-object v0

    .line 282
    :catchall_b
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 213
    monitor-enter p0

    .line 214
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 216
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 217
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 258
    monitor-enter p0

    .line 259
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 260
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 261
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_12
    monitor-exit p0

    return p2

    .line 262
    .end local v0    # "v":Ljava/lang/Boolean;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 251
    monitor-enter p0

    .line 252
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 253
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 254
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .end local p2    # "defValue":F
    :cond_12
    monitor-exit p0

    return p2

    .line 255
    .end local v0    # "v":Ljava/lang/Float;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 239
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 240
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .end local p2    # "defValue":I
    :cond_12
    monitor-exit p0

    return p2

    .line 241
    .end local v0    # "v":Ljava/lang/Integer;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 244
    monitor-enter p0

    .line 245
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 246
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 247
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_12
    monitor-exit p0

    return-wide p2

    .line 248
    .end local v0    # "v":Ljava/lang/Long;
    :catchall_14
    move-exception v1

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 221
    monitor-enter p0

    .line 222
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 223
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 224
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_10

    .end local v0    # "v":Ljava/lang/String;
    :goto_e
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/lang/String;
    :cond_10
    move-object v0, p2

    goto :goto_e

    .line 225
    .end local v0    # "v":Ljava/lang/String;
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 230
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->awaitLoadedLocked()V

    .line 231
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 232
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_10

    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_e
    monitor-exit p0

    return-object v0

    .restart local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_10
    move-object v0, p2

    goto :goto_e

    .line 233
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_12
    move-exception v1

    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    monitor-exit p0

    .line 189
    return-void

    .line 188
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method startReloadIfChangedUnexpectedly()V
    .registers 2

    .prologue
    .line 148
    monitor-enter p0

    .line 150
    :try_start_1
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->hasFileChangedUnexpectedly()Z

    move-result v0

    if-nez v0, :cond_9

    .line 151
    monitor-exit p0

    .line 155
    :goto_8
    return-void

    .line 153
    :cond_9
    invoke-direct {p0}, Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V

    .line 154
    monitor-exit p0

    goto :goto_8

    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    monitor-exit p0

    .line 195
    return-void

    .line 194
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method
