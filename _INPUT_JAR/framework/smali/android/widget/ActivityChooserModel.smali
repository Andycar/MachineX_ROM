.class public Landroid/widget/ActivityChooserModel;
.super Landroid/database/DataSetObservable;
.source "ActivityChooserModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActivityChooserModel$1;,
        Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;,
        Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;,
        Landroid/widget/ActivityChooserModel$DefaultSorter;,
        Landroid/widget/ActivityChooserModel$ActivityResolveInfo;,
        Landroid/widget/ActivityChooserModel$HistoricalRecord;,
        Landroid/widget/ActivityChooserModel$OnChooseActivityListener;,
        Landroid/widget/ActivityChooserModel$ActivitySorter;,
        Landroid/widget/ActivityChooserModel$ActivityChooserModelClient;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final ATTRIBUTE_TIME:Ljava/lang/String; = "time"

.field private static final ATTRIBUTE_WEIGHT:Ljava/lang/String; = "weight"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIVITY_INFLATION:I = 0x5

.field private static final DEFAULT_HISTORICAL_RECORD_WEIGHT:F = 1.0f

.field public static final DEFAULT_HISTORY_FILE_NAME:Ljava/lang/String; = "activity_choser_model_history.xml"

.field public static final DEFAULT_HISTORY_MAX_LENGTH:I = 0x32

.field private static final HISTORY_FILE_EXTENSION:Ljava/lang/String; = ".xml"

.field private static final INVALID_INDEX:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_HISTORICAL_RECORD:Ljava/lang/String; = "historical-record"

.field private static final TAG_HISTORICAL_RECORDS:Ljava/lang/String; = "historical-records"

.field private static final sDataModelRegistry:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/ActivityChooserModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final sRegistryLock:Ljava/lang/Object;


# instance fields
.field private final mActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$ActivityResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

.field private mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

.field private mCanReadHistoricalData:Z

.field private final mContext:Landroid/content/Context;

.field private final mHistoricalRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ActivityChooserModel$HistoricalRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHistoricalRecordsChanged:Z

.field private final mHistoryFileName:Ljava/lang/String;

.field private mHistoryMaxSize:I

.field private final mInstanceLock:Ljava/lang/Object;

.field private mIntent:Landroid/content/Intent;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mReadShareHistoryCalled:Z

.field private mReloadActivities:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    const-class v0, Landroid/widget/ActivityChooserModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    .line 225
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "historyFileName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 358
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 251
    new-instance v0, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;

    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DataModelPackageMonitor;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 271
    new-instance v0, Landroid/widget/ActivityChooserModel$DefaultSorter;

    invoke-direct {v0, p0, v3}, Landroid/widget/ActivityChooserModel$DefaultSorter;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 276
    const/16 v0, 0x32

    iput v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 286
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 297
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 305
    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 310
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 359
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    .line 360
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_66

    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    .line 366
    :goto_5e
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 367
    return-void

    .line 364
    :cond_66
    iput-object p2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    goto :goto_5e
.end method

.method static synthetic access$300(Landroid/widget/ActivityChooserModel;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActivityChooserModel;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;

    .prologue
    .line 97
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Landroid/widget/ActivityChooserModel;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    return p1
.end method

.method static synthetic access$702(Landroid/widget/ActivityChooserModel;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/ActivityChooserModel;
    .param p1, "x1"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    return p1
.end method

.method private addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z
    .registers 4
    .param p1, "historicalRecord"    # Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .prologue
    .line 751
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 752
    .local v0, "added":Z
    if-eqz v0, :cond_17

    .line 753
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 754
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 755
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->persistHistoricalDataIfNeeded()V

    .line 756
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 757
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 759
    :cond_17
    return v0
.end method

.method private ensureConsistentState()V
    .registers 3

    .prologue
    .line 673
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->loadActivitiesIfNeeded()Z

    move-result v0

    .line 674
    .local v0, "stateChanged":Z
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataIfNeeded()Z

    move-result v1

    or-int/2addr v0, v1

    .line 675
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 676
    if-eqz v0, :cond_14

    .line 677
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    .line 678
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 680
    :cond_14
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/ActivityChooserModel;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "historyFileName"    # Ljava/lang/String;

    .prologue
    .line 342
    sget-object v2, Landroid/widget/ActivityChooserModel;->sRegistryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 343
    :try_start_3
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel;

    .line 344
    .local v0, "dataModel":Landroid/widget/ActivityChooserModel;
    if-nez v0, :cond_17

    .line 345
    new-instance v0, Landroid/widget/ActivityChooserModel;

    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    invoke-direct {v0, p0, p1}, Landroid/widget/ActivityChooserModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    .restart local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    sget-object v1, Landroid/widget/ActivityChooserModel;->sDataModelRegistry:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    :cond_17
    monitor-exit v2

    return-object v0

    .line 349
    .end local v0    # "dataModel":Landroid/widget/ActivityChooserModel;
    :catchall_19
    move-exception v1

    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private loadActivitiesIfNeeded()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 706
    iget-boolean v6, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    if-eqz v6, :cond_4b

    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v6, :cond_4b

    .line 707
    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 708
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 709
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 711
    .local v4, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 712
    .local v3, "resolveInfoCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_21
    if-ge v1, v3, :cond_4a

    .line 713
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 714
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 715
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v8, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v5, v6, v7, v8}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v5

    if-nez v5, :cond_47

    .line 718
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    new-instance v6, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    invoke-direct {v6, p0, v2}, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;-><init>(Landroid/widget/ActivityChooserModel;Landroid/content/pm/ResolveInfo;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 721
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v2    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4a
    const/4 v5, 0x1

    .line 723
    .end local v1    # "i":I
    .end local v3    # "resolveInfoCount":I
    .end local v4    # "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4b
    return v5
.end method

.method private persistHistoricalDataIfNeeded()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 579
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    if-nez v0, :cond_d

    .line 580
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No preceding call to #readHistoricalData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_d
    iget-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-nez v0, :cond_12

    .line 590
    :cond_11
    :goto_11
    return-void

    .line 585
    :cond_12
    iput-boolean v5, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 586
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 587
    new-instance v0, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;-><init>(Landroid/widget/ActivityChooserModel;Landroid/widget/ActivityChooserModel$1;)V

    sget-object v1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/ActivityChooserModel$PersistHistoryAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_11
.end method

.method private pruneExcessiveHistoricalRecordsIfNeeded()V
    .registers 5

    .prologue
    .line 766
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    sub-int v1, v2, v3

    .line 767
    .local v1, "pruneCount":I
    if-gtz v1, :cond_d

    .line 777
    :cond_c
    return-void

    .line 770
    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    .line 771
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v1, :cond_c

    .line 772
    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method private readHistoricalDataIfNeeded()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 734
    iget-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    if-eqz v2, :cond_1a

    iget-boolean v2, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecordsChanged:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 736
    iput-boolean v1, p0, Landroid/widget/ActivityChooserModel;->mCanReadHistoricalData:Z

    .line 737
    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReadShareHistoryCalled:Z

    .line 738
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->readHistoricalDataImpl()V

    .line 741
    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method private readHistoricalDataImpl()V
    .registers 19

    .prologue
    .line 983
    const/4 v3, 0x0

    .line 985
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/ActivityChooserModel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_e} :catch_23

    move-result-object v3

    .line 993
    :try_start_f
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    .line 994
    .local v8, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v15, 0x0

    invoke-interface {v8, v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 996
    const/4 v12, 0x0

    .line 997
    .local v12, "type":I
    :goto_18
    const/4 v15, 0x1

    if-eq v12, v15, :cond_25

    const/4 v15, 0x2

    if-eq v12, v15, :cond_25

    .line 998
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    goto :goto_18

    .line 986
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_23
    move-exception v4

    .line 1051
    :cond_24
    :goto_24
    return-void

    .line 1001
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_25
    const-string v15, "historical-records"

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_62

    .line 1002
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file does not start with historical-records tag."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_39
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_39} :catch_39
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_39} :catch_92
    .catchall {:try_start_f .. :try_end_39} :catchall_ec

    .line 1038
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_39
    move-exception v14

    .line 1039
    .local v14, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3a
    sget-object v15, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_3a .. :try_end_5a} :catchall_ec

    .line 1043
    if-eqz v3, :cond_24

    .line 1045
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_24

    .line 1046
    :catch_60
    move-exception v15

    goto :goto_24

    .line 1006
    .end local v14    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_62
    :try_start_62
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    .line 1007
    .local v5, "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1010
    :cond_69
    :goto_69
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_62 .. :try_end_6c} :catch_39
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_6c} :catch_92
    .catchall {:try_start_62 .. :try_end_6c} :catchall_ec

    move-result v12

    .line 1011
    const/4 v15, 0x1

    if-ne v12, v15, :cond_78

    .line 1043
    if-eqz v3, :cond_24

    .line 1045
    :try_start_72
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_75} :catch_76

    goto :goto_24

    .line 1046
    :catch_76
    move-exception v15

    goto :goto_24

    .line 1014
    :cond_78
    const/4 v15, 0x3

    if-eq v12, v15, :cond_69

    const/4 v15, 0x4

    if-eq v12, v15, :cond_69

    .line 1017
    :try_start_7e
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1018
    .local v7, "nodeName":Ljava/lang/String;
    const-string v15, "historical-record"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_bd

    .line 1019
    new-instance v15, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v16, "Share records file not well-formed."

    invoke-direct/range {v15 .. v16}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_92
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7e .. :try_end_92} :catch_39
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_92} :catch_92
    .catchall {:try_start_7e .. :try_end_92} :catchall_ec

    .line 1040
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v12    # "type":I
    :catch_92
    move-exception v6

    .line 1041
    .local v6, "ioe":Ljava/io/IOException;
    :try_start_93
    sget-object v15, Landroid/widget/ActivityChooserModel;->LOG_TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Error reading historical recrod file: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/ActivityChooserModel;->mHistoryFileName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b3
    .catchall {:try_start_93 .. :try_end_b3} :catchall_ec

    .line 1043
    if-eqz v3, :cond_24

    .line 1045
    :try_start_b5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_ba

    goto/16 :goto_24

    .line 1046
    :catch_ba
    move-exception v15

    goto/16 :goto_24

    .line 1022
    .end local v6    # "ioe":Ljava/io/IOException;
    .restart local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .restart local v7    # "nodeName":Ljava/lang/String;
    .restart local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v12    # "type":I
    :cond_bd
    const/4 v15, 0x0

    :try_start_be
    const-string v16, "activity"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1023
    .local v2, "activity":Ljava/lang/String;
    const/4 v15, 0x0

    const-string/jumbo v16, "time"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 1025
    .local v10, "time":J
    const/4 v15, 0x0

    const-string/jumbo v16, "weight"

    move-object/from16 v0, v16

    invoke-interface {v8, v15, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    .line 1027
    .local v13, "weight":F
    new-instance v9, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-direct {v9, v2, v10, v11, v13}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Ljava/lang/String;JF)V

    .line 1028
    .local v9, "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ea
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_be .. :try_end_ea} :catch_39
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_ea} :catch_92
    .catchall {:try_start_be .. :try_end_ea} :catchall_ec

    goto/16 :goto_69

    .line 1043
    .end local v2    # "activity":Ljava/lang/String;
    .end local v5    # "historicalRecords":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$HistoricalRecord;>;"
    .end local v7    # "nodeName":Ljava/lang/String;
    .end local v8    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v9    # "readRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v10    # "time":J
    .end local v12    # "type":I
    .end local v13    # "weight":F
    :catchall_ec
    move-exception v15

    if-eqz v3, :cond_f2

    .line 1045
    :try_start_ef
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_f2
    .catch Ljava/io/IOException; {:try_start_ef .. :try_end_f2} :catch_f3

    .line 1048
    :cond_f2
    :goto_f2
    throw v15

    .line 1046
    :catch_f3
    move-exception v16

    goto :goto_f2
.end method

.method private sortActivitiesIfNeeded()Z
    .registers 5

    .prologue
    .line 690
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 692
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    iget-object v3, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/ActivityChooserModel$ActivitySorter;->sort(Landroid/content/Intent;Ljava/util/List;Ljava/util/List;)V

    .line 694
    const/4 v0, 0x1

    .line 696
    :goto_28
    return v0

    :cond_29
    const/4 v0, 0x0

    goto :goto_28
.end method


# virtual methods
.method public chooseActivity(I)Landroid/content/Intent;
    .registers 12
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 470
    iget-object v7, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v7

    .line 471
    :try_start_4
    iget-object v8, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-nez v8, :cond_b

    .line 472
    monitor-exit v7

    move-object v0, v6

    .line 500
    :goto_a
    return-object v0

    .line 475
    :cond_b
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 477
    iget-object v8, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 479
    .local v2, "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v8, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .local v3, "chosenName":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    iget-object v8, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 484
    .local v0, "choiceIntent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 486
    iget-object v8, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    if-eqz v8, :cond_45

    .line 488
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 489
    .local v1, "choiceIntentCopy":Landroid/content/Intent;
    iget-object v8, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    invoke-interface {v8, p0, v1}, Landroid/widget/ActivityChooserModel$OnChooseActivityListener;->onChooseActivity(Landroid/widget/ActivityChooserModel;Landroid/content/Intent;)Z

    move-result v4

    .line 491
    .local v4, "handled":Z
    if-eqz v4, :cond_45

    .line 492
    monitor-exit v7

    move-object v0, v6

    goto :goto_a

    .line 496
    .end local v1    # "choiceIntentCopy":Landroid/content/Intent;
    .end local v4    # "handled":Z
    :cond_45
    new-instance v5, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v8, v9, v6}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 498
    .local v5, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v5}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 500
    monitor-exit v7

    goto :goto_a

    .line 501
    .end local v0    # "choiceIntent":Landroid/content/Intent;
    .end local v2    # "chosenActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "chosenName":Landroid/content/ComponentName;
    .end local v5    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    :catchall_55
    move-exception v6

    monitor-exit v7
    :try_end_57
    .catchall {:try_start_4 .. :try_end_57} :catchall_55

    throw v6
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 662
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 663
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 664
    return-void
.end method

.method public getActivity(I)Landroid/content/pm/ResolveInfo;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 423
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 424
    :try_start_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 425
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    return-object v0

    .line 426
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public getActivityCount()I
    .registers 3

    .prologue
    .line 408
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 410
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 411
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getActivityIndex(Landroid/content/pm/ResolveInfo;)I
    .registers 8
    .param p1, "activity"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 437
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v5

    .line 438
    :try_start_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 439
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    .line 440
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 441
    .local v1, "activityCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v1, :cond_1e

    .line 442
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 443
    .local v2, "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v4, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    if-ne v4, p1, :cond_1b

    .line 444
    monitor-exit v5

    .line 447
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "i":I
    :goto_1a
    return v3

    .line 441
    .restart local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .restart local v3    # "i":I
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 447
    .end local v2    # "currentActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    :cond_1e
    const/4 v3, -0x1

    monitor-exit v5

    goto :goto_1a

    .line 448
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ActivityChooserModel$ActivityResolveInfo;>;"
    .end local v1    # "activityCount":I
    .end local v3    # "i":I
    :catchall_21
    move-exception v4

    monitor-exit v5
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v4
.end method

.method public getDefaultActivity()Landroid/content/pm/ResolveInfo;
    .registers 4

    .prologue
    .line 525
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 526
    :try_start_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 527
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 528
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    iget-object v0, v0, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    monitor-exit v1

    .line 531
    :goto_1a
    return-object v0

    .line 530
    :cond_1b
    monitor-exit v1

    .line 531
    const/4 v0, 0x0

    goto :goto_1a

    .line 530
    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public getHistoryMaxSize()I
    .registers 3

    .prologue
    .line 643
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 644
    :try_start_3
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    monitor-exit v1

    return v0

    .line 645
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getHistorySize()I
    .registers 3

    .prologue
    .line 654
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 655
    :try_start_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 656
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mHistoricalRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    return v0

    .line 657
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public getIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 395
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 396
    :try_start_3
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    monitor-exit v1

    return-object v0

    .line 397
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setActivitySorter(Landroid/widget/ActivityChooserModel$ActivitySorter;)V
    .registers 4
    .param p1, "activitySorter"    # Landroid/widget/ActivityChooserModel$ActivitySorter;

    .prologue
    .line 600
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 601
    :try_start_3
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    if-ne v0, p1, :cond_9

    .line 602
    monitor-exit v1

    .line 609
    :goto_8
    return-void

    .line 604
    :cond_9
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivitySorter:Landroid/widget/ActivityChooserModel$ActivitySorter;

    .line 605
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 606
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 608
    :cond_14
    monitor-exit v1

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setDefaultActivity(I)V
    .registers 12
    .param p1, "index"    # I

    .prologue
    .line 545
    iget-object v6, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v6

    .line 546
    :try_start_3
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 548
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 549
    .local v2, "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    iget-object v5, p0, Landroid/widget/ActivityChooserModel;->mActivities:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;

    .line 552
    .local v3, "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    if-eqz v3, :cond_41

    .line 554
    iget v5, v3, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    iget v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->weight:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x40a00000    # 5.0f

    add-float v4, v5, v7

    .line 560
    .local v4, "weight":F
    :goto_22
    new-instance v0, Landroid/content/ComponentName;

    iget-object v5, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/widget/ActivityChooserModel$ActivityResolveInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    .local v0, "defaultName":Landroid/content/ComponentName;
    new-instance v1, Landroid/widget/ActivityChooserModel$HistoricalRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v1, v0, v8, v9, v4}, Landroid/widget/ActivityChooserModel$HistoricalRecord;-><init>(Landroid/content/ComponentName;JF)V

    .line 565
    .local v1, "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    invoke-direct {p0, v1}, Landroid/widget/ActivityChooserModel;->addHisoricalRecord(Landroid/widget/ActivityChooserModel$HistoricalRecord;)Z

    .line 566
    monitor-exit v6

    .line 567
    return-void

    .line 557
    .end local v0    # "defaultName":Landroid/content/ComponentName;
    .end local v1    # "historicalRecord":Landroid/widget/ActivityChooserModel$HistoricalRecord;
    .end local v4    # "weight":F
    :cond_41
    const/high16 v4, 0x3f800000    # 1.0f

    .restart local v4    # "weight":F
    goto :goto_22

    .line 566
    .end local v2    # "newDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v3    # "oldDefaultActivity":Landroid/widget/ActivityChooserModel$ActivityResolveInfo;
    .end local v4    # "weight":F
    :catchall_44
    move-exception v5

    monitor-exit v6
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v5
.end method

.method public setHistoryMaxSize(I)V
    .registers 4
    .param p1, "historyMaxSize"    # I

    .prologue
    .line 625
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_3
    iget v0, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    if-ne v0, p1, :cond_9

    .line 627
    monitor-exit v1

    .line 635
    :goto_8
    return-void

    .line 629
    :cond_9
    iput p1, p0, Landroid/widget/ActivityChooserModel;->mHistoryMaxSize:I

    .line 630
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->pruneExcessiveHistoricalRecordsIfNeeded()V

    .line 631
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->sortActivitiesIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 632
    invoke-virtual {p0}, Landroid/widget/ActivityChooserModel;->notifyChanged()V

    .line 634
    :cond_17
    monitor-exit v1

    goto :goto_8

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public setIntent(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_3
    iget-object v0, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    if-ne v0, p1, :cond_9

    .line 381
    monitor-exit v1

    .line 387
    :goto_8
    return-void

    .line 383
    :cond_9
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mIntent:Landroid/content/Intent;

    .line 384
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActivityChooserModel;->mReloadActivities:Z

    .line 385
    invoke-direct {p0}, Landroid/widget/ActivityChooserModel;->ensureConsistentState()V

    .line 386
    monitor-exit v1

    goto :goto_8

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public setOnChooseActivityListener(Landroid/widget/ActivityChooserModel$OnChooseActivityListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .prologue
    .line 510
    iget-object v1, p0, Landroid/widget/ActivityChooserModel;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_3
    iput-object p1, p0, Landroid/widget/ActivityChooserModel;->mActivityChoserModelPolicy:Landroid/widget/ActivityChooserModel$OnChooseActivityListener;

    .line 512
    monitor-exit v1

    .line 513
    return-void

    .line 512
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
