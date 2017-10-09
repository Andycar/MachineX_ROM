.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$1;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;,
        Lcom/android/server/notification/ConditionProviders$DowntimeCallback;,
        Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;
    }
.end annotation


# static fields
.field private static final NO_CONDITIONS:[Landroid/service/notification/Condition;

.field private static mIsTouchwizDnd:Z


# instance fields
.field private final mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

.field private final mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

.field private mExitCondition:Landroid/service/notification/Condition;

.field private mExitConditionComponent:Landroid/content/ComponentName;

.field private final mListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/IConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/service/notification/Condition;

    sput-object v0, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/notification/ConditionProviders;->mIsTouchwizDnd:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/notification/ManagedServices$UserProfiles;Lcom/android/server/notification/ZenModeHelper;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userProfiles"    # Lcom/android/server/notification/ManagedServices$UserProfiles;
    .param p4, "zenModeHelper"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;)V

    .line 55
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v0}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    .line 59
    new-instance v0, Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-direct {v0}, Lcom/android/server/notification/DowntimeConditionProvider;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    .line 71
    iput-object p4, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 72
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance v1, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ConditionProviders$ZenModeHelperCallback;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ZenModeHelper;->addCallback(Lcom/android/server/notification/ZenModeHelper$Callback;)V

    .line 73
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    .line 74
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/notification/ConditionProviders;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->loadZenConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/ZenModeHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/server/notification/ConditionProviders;->mIsTouchwizDnd:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/notification/ConditionProviders;)Lcom/android/server/notification/DowntimeConditionProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/notification/ConditionProviders;)Landroid/service/notification/Condition;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/ConditionProviders;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    return-object v0
.end method

.method private getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .registers 7
    .param p1, "id"    # Landroid/net/Uri;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 227
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 228
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_25

    .line 229
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 230
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 236
    :goto_21
    return-object v2

    .line 228
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 234
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_25
    new-instance v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$1;)V

    .line 235
    .restart local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21
.end method

.method private loadZenConfig()V
    .registers 12

    .prologue
    const/4 v1, 0x0

    .line 463
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v7}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 464
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_15

    .line 465
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v8, "loadZenConfig: no config"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :cond_14
    :goto_14
    return-void

    .line 468
    :cond_15
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v8

    .line 469
    :try_start_18
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v7, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    const/4 v1, 0x1

    .line 470
    .local v1, "changingExit":Z
    :cond_23
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iput-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 471
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    iput-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 472
    if-eqz v1, :cond_36

    .line 473
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    const-string v10, "config"

    invoke-static {v7, v9, v10}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 475
    :cond_36
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v7, v3}, Lcom/android/server/notification/DowntimeConditionProvider;->setConfig(Landroid/service/notification/ZenModeConfig;)V

    .line 476
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v7, :cond_4b

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v7, :cond_4b

    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v7, v7

    iget-object v9, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v9, v9

    if-eq v7, v9, :cond_60

    .line 478
    :cond_4b
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_56

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    const-string v9, "loadZenConfig: no conditions"

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_56
    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 480
    monitor-exit v8

    goto :goto_14

    .line 494
    .end local v1    # "changingExit":Z
    :catchall_5d
    move-exception v7

    monitor-exit v8
    :try_end_5f
    .catchall {:try_start_18 .. :try_end_5f} :catchall_5d

    throw v7

    .line 482
    .restart local v1    # "changingExit":Z
    :cond_60
    :try_start_60
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 483
    .local v6, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v7

    .line 484
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_69
    if-ge v4, v0, :cond_80

    .line 485
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    aget-object v2, v7, v4

    .line 486
    .local v2, "component":Landroid/content/ComponentName;
    iget-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    aget-object v5, v7, v4

    .line 487
    .local v5, "id":Landroid/net/Uri;
    if-eqz v2, :cond_7d

    if-eqz v5, :cond_7d

    .line 488
    invoke-direct {p0, v5, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 489
    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_69

    .line 492
    .end local v2    # "component":Landroid/content/ComponentName;
    .end local v5    # "id":Landroid/net/Uri;
    :cond_80
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_9c

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "loadZenConfig: N="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_9c
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v7

    new-array v7, v7, [Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct {p0, v7, v9}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 494
    monitor-exit v8
    :try_end_ad
    .catchall {:try_start_60 .. :try_end_ad} :catchall_5d

    goto/16 :goto_14
.end method

.method private static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 436
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {v0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    goto :goto_3
.end method

.method private static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .registers 2
    .param p0, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 440
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/IConditionProvider;

    goto :goto_3
.end method

.method private requestConditionsLocked(I)V
    .registers 11
    .param p1, "flags"    # I

    .prologue
    .line 444
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 445
    .local v3, "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    invoke-static {v3}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v4

    .line 446
    .local v4, "provider":Landroid/service/notification/IConditionProvider;
    if-eqz v4, :cond_6

    .line 448
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_20
    if-ltz v1, :cond_3f

    .line 449
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 450
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-eq v6, v3, :cond_31

    .line 448
    :cond_2e
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_20

    .line 451
    :cond_31
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v6, :cond_2e

    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_2e

    .line 452
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2e

    .line 455
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3f
    :try_start_3f
    invoke-interface {v4, p1}, Landroid/service/notification/IConditionProvider;->onRequestConditions(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_6

    .line 456
    :catch_43
    move-exception v0

    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error requesting conditions from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i":I
    .end local v3    # "info":Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .end local v4    # "provider":Landroid/service/notification/IConditionProvider;
    :cond_5f
    return-void
.end method

.method private static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 362
    .local v3, "rt":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    if-eqz p0, :cond_a

    array-length v4, p0

    if-nez v4, :cond_b

    .line 370
    :cond_a
    return-object v3

    .line 363
    :cond_b
    array-length v0, p0

    .line 364
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_a

    .line 365
    aget-object v2, p0, v1

    .line 366
    .local v2, "item":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_16

    .line 367
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private saveZenConfigLocked()V
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 498
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 499
    .local v3, "config":Landroid/service/notification/ZenModeConfig;
    if-nez v3, :cond_a

    .line 526
    :goto_9
    return-void

    .line 500
    :cond_a
    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 501
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 502
    .local v1, "automatic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/notification/ConditionProviders$ConditionRecord;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 503
    .local v2, "automaticN":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1a
    if-ge v4, v2, :cond_2e

    .line 504
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 505
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_2b

    .line 506
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 509
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 510
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 511
    iput-object v7, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 522
    :cond_38
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 523
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    .line 524
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_5c

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting zen config to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_5c
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v6, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_9

    .line 513
    :cond_62
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "N":I
    new-array v6, v0, [Landroid/content/ComponentName;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 515
    new-array v6, v0, [Landroid/net/Uri;

    iput-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 516
    const/4 v4, 0x0

    :goto_6f
    if-ge v4, v0, :cond_38

    .line 517
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 518
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    aput-object v7, v6, v4

    .line 519
    iget-object v6, v3, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    iget-object v7, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    aput-object v7, v6, v4

    .line 516
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f
.end method

.method private setAutomaticZenModeConditions([Landroid/net/Uri;Z)V
    .registers 12
    .param p1, "conditionIds"    # [Landroid/net/Uri;
    .param p2, "save"    # Z

    .prologue
    .line 378
    iget-boolean v6, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v6, :cond_20

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutomaticZenModeConditions "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p1, :cond_4f

    const/4 v6, 0x0

    :goto_15
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_20
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 381
    :try_start_23
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v4

    .line 382
    .local v4, "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 383
    .local v0, "N":I
    const/4 v2, 0x0

    .line 384
    .local v2, "changed":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2f
    if-ge v3, v0, :cond_62

    .line 385
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 386
    .local v5, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 387
    .local v1, "automatic":Z
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v6, :cond_54

    if-eqz v1, :cond_54

    .line 389
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 390
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z
    :try_end_4b
    .catchall {:try_start_23 .. :try_end_4b} :catchall_6b

    .line 391
    const/4 v2, 0x1

    .line 384
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 378
    .end local v0    # "N":I
    .end local v1    # "automatic":Z
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_4f
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_15

    .line 392
    .restart local v0    # "N":I
    .restart local v1    # "automatic":Z
    .restart local v2    # "changed":Z
    .restart local v3    # "i":I
    .restart local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    .restart local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_54
    :try_start_54
    iget-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v6, :cond_4c

    if-nez v1, :cond_4c

    .line 394
    invoke-direct {p0, v5}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 395
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    .line 396
    const/4 v2, 0x1

    goto :goto_4c

    .line 399
    .end local v1    # "automatic":Z
    .end local v5    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_62
    if-eqz p2, :cond_69

    if-eqz v2, :cond_69

    .line 400
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 402
    :cond_69
    monitor-exit v7

    .line 403
    return-void

    .line 402
    .end local v0    # "N":I
    .end local v2    # "changed":Z
    .end local v3    # "i":I
    .end local v4    # "newIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/Uri;>;"
    :catchall_6b
    move-exception v6

    monitor-exit v7
    :try_end_6d
    .catchall {:try_start_54 .. :try_end_6d} :catchall_6b

    throw v6
.end method

.method private subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 345
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_1d
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 347
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 348
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_4d

    .line 350
    :try_start_24
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_4d} :catch_55

    .line 357
    :cond_4d
    :goto_4d
    if-eqz p1, :cond_70

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_51
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 358
    return-void

    .line 352
    :catch_55
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error subscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 354
    move-object v2, v0

    goto :goto_4d

    .line 357
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_70
    const/4 v3, 0x0

    goto :goto_51
.end method

.method private unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .prologue
    .line 421
    iget-boolean v3, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v3, :cond_1d

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsubscribeLocked "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_1d
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v1

    .line 423
    .local v1, "provider":Landroid/service/notification/IConditionProvider;
    const/4 v2, 0x0

    .line 424
    .local v2, "re":Landroid/os/RemoteException;
    if-eqz v1, :cond_29

    .line 426
    :try_start_24
    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v1, v3}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_31

    .line 432
    :cond_29
    :goto_29
    if-eqz p1, :cond_4c

    iget-object v3, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :goto_2d
    invoke-static {v3, v1, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    .line 433
    return-void

    .line 427
    :catch_31
    move-exception v0

    .line 428
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error unsubscribing to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    move-object v2, v0

    goto :goto_29

    .line 432
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    const/4 v3, 0x0

    goto :goto_2d
.end method

.method private validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .registers 11
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    const/4 v3, 0x0

    .line 202
    if-eqz p2, :cond_6

    array-length v5, p2

    if-nez v5, :cond_8

    :cond_6
    move-object p2, v3

    .line 223
    .end local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_7
    :goto_7
    return-object p2

    .line 203
    .restart local p2    # "conditions":[Landroid/service/notification/Condition;
    :cond_8
    array-length v0, p2

    .line 204
    .local v0, "N":I
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    .line 205
    .local v4, "valid":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/net/Uri;Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v0, :cond_6f

    .line 206
    aget-object v5, p2, v1

    iget-object v2, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 207
    .local v2, "id":Landroid/net/Uri;
    invoke-static {v2, p1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 208
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for invalid id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 211
    :cond_40
    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 212
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring condition from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for duplicate id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 215
    :cond_69
    aget-object v5, p2, v1

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 217
    .end local v2    # "id":Landroid/net/Uri;
    :cond_6f
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-nez v5, :cond_77

    move-object p2, v3

    goto :goto_7

    .line 218
    :cond_77
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-eq v5, v0, :cond_7

    .line 219
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v5

    new-array v3, v5, [Landroid/service/notification/Condition;

    .line 220
    .local v3, "rt":[Landroid/service/notification/Condition;
    const/4 v1, 0x0

    :goto_84
    array-length v5, v3

    if-ge v1, v5, :cond_92

    .line 221
    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    aput-object v5, v3, v1

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_84

    :cond_92
    move-object p2, v3

    .line 223
    goto/16 :goto_7
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 115
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    return-object v0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 4
    .param p1, "provider"    # Landroid/service/notification/IConditionProvider;

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 179
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 180
    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 91
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v4

    .line 92
    if-nez p2, :cond_35

    .line 93
    :try_start_8
    const-string v3, "    mListeners("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_35

    .line 95
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 98
    .end local v1    # "i":I
    :cond_35
    const-string v3, "    mRecords("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, "):"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_49
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_87

    .line 100
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 101
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p2, :cond_66

    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_66

    .line 99
    :cond_63
    :goto_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 102
    :cond_66
    const-string v3, "      "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 103
    iget-object v3, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "countdownDesc":Ljava/lang/String;
    if-eqz v0, :cond_63

    .line 105
    const-string v3, "        ("

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_63

    .line 108
    .end local v0    # "countdownDesc":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_84
    move-exception v3

    monitor-exit v4
    :try_end_86
    .catchall {:try_start_8 .. :try_end_86} :catchall_84

    throw v3

    .restart local v1    # "i":I
    :cond_87
    :try_start_87
    monitor-exit v4
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_84

    .line 109
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/CountdownConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 110
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/DowntimeConditionProvider;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 111
    return-void
.end method

.method public getAutomaticZenModeConditions()[Landroid/service/notification/Condition;
    .registers 7

    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v5

    .line 407
    :try_start_3
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 408
    .local v0, "N":I
    const/4 v3, 0x0

    .line 409
    .local v3, "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_2c

    .line 410
    iget-object v4, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 411
    .local v2, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-boolean v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v4, :cond_29

    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    if-eqz v4, :cond_29

    .line 412
    if-nez v3, :cond_24

    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .restart local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :cond_24
    iget-object v4, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 416
    .end local v2    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_2c
    if-nez v3, :cond_32

    sget-object v4, Lcom/android/server/notification/ConditionProviders;->NO_CONDITIONS:[Landroid/service/notification/Condition;

    :goto_30
    monitor-exit v5

    return-object v4

    :cond_32
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/service/notification/Condition;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/service/notification/Condition;

    goto :goto_30

    .line 417
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v3    # "rt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/Condition;>;"
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v4
.end method

.method protected getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 3

    .prologue
    .line 78
    new-instance v0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {v0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 79
    .local v0, "c":Lcom/android/server/notification/ManagedServices$Config;
    const-string v1, "condition provider"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 80
    const-string v1, "android.service.notification.ConditionProviderService"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 81
    const-string v1, "enabled_condition_providers"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 82
    const-string v1, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 83
    const-string v1, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    iput-object v1, v0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    .line 84
    const v1, 0x104054c

    iput v1, v0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    .line 85
    return-object v0
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .registers 16
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .param p3, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 240
    iget-object v9, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v9

    .line 241
    :try_start_3
    iget-boolean v8, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v8, :cond_37

    iget-object v10, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "notifyConditions pkg="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " info="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " conditions="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez p3, :cond_42

    const/4 v8, 0x0

    :goto_2c
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_37
    invoke-direct {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->validateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p3

    .line 244
    if-eqz p3, :cond_40

    array-length v8, p3

    if-nez v8, :cond_47

    :cond_40
    monitor-exit v9

    .line 292
    :goto_41
    return-void

    .line 241
    :cond_42
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    goto :goto_2c

    .line 245
    :cond_47
    array-length v0, p3

    .line 246
    .local v0, "N":I
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_52
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/notification/IConditionListener;
    :try_end_5e
    .catchall {:try_start_3 .. :try_end_5e} :catchall_7c

    .line 248
    .local v6, "listener":Landroid/service/notification/IConditionListener;
    :try_start_5e
    invoke-interface {v6, p3}, Landroid/service/notification/IConditionListener;->onConditionsReceived([Landroid/service/notification/Condition;)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_62
    .catchall {:try_start_5e .. :try_end_61} :catchall_7c

    goto :goto_52

    .line 249
    :catch_62
    move-exception v2

    .line 250
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_63
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error sending conditions to listener "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_52

    .line 291
    .end local v0    # "N":I
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "listener":Landroid/service/notification/IConditionListener;
    :catchall_7c
    move-exception v8

    monitor-exit v9
    :try_end_7e
    .catchall {:try_start_63 .. :try_end_7e} :catchall_7c

    throw v8

    .line 253
    .restart local v0    # "N":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_80
    if-ge v4, v0, :cond_168

    .line 254
    :try_start_82
    aget-object v1, p3, v4

    .line 255
    .local v1, "c":Landroid/service/notification/Condition;
    iget-object v8, v1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v10, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-direct {p0, v8, v10}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v7

    .line 256
    .local v7, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iput-object p2, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 257
    iput-object v1, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    .line 259
    iget-boolean v8, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v8, :cond_cb

    .line 260
    iget v8, v1, Landroid/service/notification/Condition;->state:I

    if-eqz v8, :cond_9d

    iget v8, v1, Landroid/service/notification/Condition;->state:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_cb

    .line 261
    :cond_9d
    iget v8, v1, Landroid/service/notification/Condition;->state:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_104

    const/4 v3, 0x1

    .line 262
    .local v3, "failed":Z
    :goto_a3
    if-eqz v3, :cond_106

    .line 263
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exit zen: manual condition failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_bd
    :goto_bd
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v10, 0x0

    const-string v11, "manualConditionExit"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 269
    invoke-direct {p0, v7}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 270
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 274
    .end local v3    # "failed":Z
    :cond_cb
    iget-boolean v8, v7, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v8, :cond_100

    .line 275
    iget v8, v1, Landroid/service/notification/Condition;->state:I

    if-eqz v8, :cond_d8

    iget v8, v1, Landroid/service/notification/Condition;->state:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_142

    .line 276
    :cond_d8
    iget v8, v1, Landroid/service/notification/Condition;->state:I

    const/4 v10, 0x3

    if-ne v8, v10, :cond_123

    const/4 v3, 0x1

    .line 277
    .restart local v3    # "failed":Z
    :goto_de
    if-eqz v3, :cond_125

    .line 278
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exit zen: automatic condition failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_f8
    :goto_f8
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v10, 0x0

    const-string v11, "automaticConditionExit"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 253
    .end local v3    # "failed":Z
    :cond_100
    :goto_100
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_80

    .line 261
    :cond_104
    const/4 v3, 0x0

    goto :goto_a3

    .line 264
    .restart local v3    # "failed":Z
    :cond_106
    iget-boolean v8, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v8, :cond_bd

    .line 265
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exit zen: manual condition false: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .line 276
    .end local v3    # "failed":Z
    :cond_123
    const/4 v3, 0x0

    goto :goto_de

    .line 279
    .restart local v3    # "failed":Z
    :cond_125
    iget-boolean v8, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v8, :cond_f8

    .line 280
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exit zen: automatic condition false: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f8

    .line 284
    .end local v3    # "failed":Z
    :cond_142
    iget v8, v1, Landroid/service/notification/Condition;->state:I

    const/4 v10, 0x1

    if-ne v8, v10, :cond_100

    .line 285
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Enter zen: automatic condition true: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v10, 0x1

    const-string v11, "automaticConditionEnter"

    invoke-virtual {v8, v10, v11}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    goto :goto_100

    .line 291
    .end local v1    # "c":Landroid/service/notification/Condition;
    .end local v7    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_168
    monitor-exit v9
    :try_end_169
    .catchall {:try_start_82 .. :try_end_169} :catchall_7c

    goto/16 :goto_41
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 120
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    .line 121
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/CountdownConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 122
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 124
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->attachBase(Landroid/content/Context;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v0}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    sget-object v1, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/notification/ConditionProviders;->registerService(Landroid/os/IInterface;Landroid/content/ComponentName;I)V

    .line 127
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    new-instance v1, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/notification/ConditionProviders$DowntimeCallback;-><init>(Lcom/android/server/notification/ConditionProviders;Lcom/android/server/notification/ConditionProviders$1;)V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/DowntimeConditionProvider;->setCallback(Lcom/android/server/notification/DowntimeConditionProvider$Callback;)V

    .line 128
    return-void
.end method

.method protected onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 10
    .param p1, "info"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 132
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onServiceAdded "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v3

    .line 135
    .local v3, "provider":Landroid/service/notification/IConditionProvider;
    :try_start_1d
    invoke-interface {v3}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_6b

    .line 139
    :goto_20
    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v6

    .line 140
    :try_start_23
    iget-object v5, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 142
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-direct {p0, v5, v7}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    .line 144
    .local v2, "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 146
    .end local v2    # "manualRecord":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_3a
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 147
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_41
    if-ge v1, v0, :cond_69

    .line 148
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 149
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v5, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    .line 147
    :cond_55
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 150
    :cond_58
    iput-object p1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 152
    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-nez v5, :cond_62

    iget-boolean v5, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v5, :cond_55

    .line 153
    :cond_62
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    goto :goto_55

    .line 156
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_66
    move-exception v5

    monitor-exit v6
    :try_end_68
    .catchall {:try_start_23 .. :try_end_68} :catchall_66

    throw v5

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_69
    :try_start_69
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_66

    .line 157
    return-void

    .line 136
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catch_6b
    move-exception v5

    goto :goto_20
.end method

.method protected onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 7
    .param p1, "removed"    # Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .prologue
    const/4 v4, 0x0

    .line 161
    if-nez p1, :cond_4

    .line 175
    :cond_3
    return-void

    .line 162
    :cond_4
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_c
    if-ltz v0, :cond_3

    .line 163
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 164
    .local v1, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 162
    :goto_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    .line 165
    :cond_23
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v2, :cond_2e

    .line 167
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "manualServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 169
    :cond_2e
    iget-boolean v2, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isAutomatic:Z

    if-eqz v2, :cond_39

    .line 171
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "automaticServiceRemoved"

    invoke-virtual {v2, v4, v3}, Lcom/android/server/notification/ZenModeHelper;->setZenMode(ILjava/lang/String;)V

    .line 173
    :cond_39
    iget-object v2, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_20
.end method

.method public requestZenModeConditions(Landroid/service/notification/IConditionListener;I)V
    .registers 7
    .param p1, "callback"    # Landroid/service/notification/IConditionListener;
    .param p2, "relevance"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestZenModeConditions callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " relevance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Landroid/service/notification/Condition;->relevanceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2e
    if-nez p1, :cond_32

    monitor-exit v1

    .line 199
    :goto_31
    return-void

    .line 188
    :cond_32
    and-int/lit8 p2, p2, 0x3

    .line 189
    if-eqz p2, :cond_47

    .line 190
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, p2}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V

    .line 198
    :cond_42
    :goto_42
    monitor-exit v1

    goto :goto_31

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_44

    throw v0

    .line 193
    :cond_47
    :try_start_47
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-interface {p1}, Landroid/service/notification/IConditionListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/notification/ConditionProviders;->requestConditionsLocked(I)V
    :try_end_5c
    .catchall {:try_start_47 .. :try_end_5c} :catchall_44

    goto :goto_42
.end method

.method public setAutomaticZenModeConditions([Landroid/net/Uri;)V
    .registers 3
    .param p1, "conditionIds"    # [Landroid/net/Uri;

    .prologue
    .line 374
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/notification/ConditionProviders;->setAutomaticZenModeConditions([Landroid/net/Uri;Z)V

    .line 375
    return-void
.end method

.method public setZenModeCondition(Landroid/service/notification/Condition;Ljava/lang/String;)V
    .registers 13
    .param p1, "condition"    # Landroid/service/notification/Condition;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 295
    iget-boolean v7, p0, Lcom/android/server/notification/ConditionProviders;->DEBUG:Z

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setZenModeCondition "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_1f
    iget-object v7, p0, Lcom/android/server/notification/ConditionProviders;->mMutex:Ljava/lang/Object;

    monitor-enter v7

    .line 297
    const/4 v1, 0x0

    .line 298
    .local v1, "conditionComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_65

    .line 299
    :try_start_25
    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidCountdownConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 301
    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v9, Lcom/android/server/notification/CountdownConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v8, v9}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v4

    .line 303
    .local v4, "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v8, :cond_45

    .line 305
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mCountdown:Lcom/android/server/notification/CountdownConditionProvider;

    invoke-virtual {v8}, Lcom/android/server/notification/CountdownConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 308
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_45
    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-static {v8}, Landroid/service/notification/ZenModeConfig;->isValidDowntimeConditionId(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 310
    iget-object v8, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    sget-object v9, Lcom/android/server/notification/DowntimeConditionProvider;->COMPONENT:Landroid/content/ComponentName;

    invoke-direct {p0, v8, v9}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v4

    .line 312
    .restart local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    iget-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v8, :cond_65

    .line 314
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mDowntime:Lcom/android/server/notification/DowntimeConditionProvider;

    invoke-virtual {v8}, Lcom/android/server/notification/DowntimeConditionProvider;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/notification/ConditionProviders;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 318
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :cond_65
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 319
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6c
    if-ge v2, v0, :cond_a8

    .line 320
    iget-object v8, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 321
    .restart local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    if-eqz p1, :cond_96

    iget-object v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    iget-object v9, p1, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_96

    move v3, v5

    .line 322
    .local v3, "idEqual":Z
    :goto_83
    iget-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-eqz v8, :cond_98

    if-nez v3, :cond_98

    .line 324
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 325
    const/4 v8, 0x0

    iput-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    .line 331
    :cond_8f
    :goto_8f
    if-eqz v3, :cond_93

    .line 332
    iget-object v1, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    .line 319
    :cond_93
    add-int/lit8 v2, v2, 0x1

    goto :goto_6c

    .end local v3    # "idEqual":Z
    :cond_96
    move v3, v6

    .line 321
    goto :goto_83

    .line 326
    .restart local v3    # "idEqual":Z
    :cond_98
    if-eqz v3, :cond_8f

    iget-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    if-nez v8, :cond_8f

    .line 328
    invoke-direct {p0, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 329
    const/4 v8, 0x1

    iput-boolean v8, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->isManual:Z

    goto :goto_8f

    .line 341
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "idEqual":Z
    .end local v4    # "r":Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    :catchall_a5
    move-exception v5

    monitor-exit v7
    :try_end_a7
    .catchall {:try_start_25 .. :try_end_a7} :catchall_a5

    throw v5

    .line 335
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_a8
    :try_start_a8
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    invoke-static {v5, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be

    .line 336
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    .line 337
    iput-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    .line 338
    iget-object v5, p0, Lcom/android/server/notification/ConditionProviders;->mExitCondition:Landroid/service/notification/Condition;

    iget-object v6, p0, Lcom/android/server/notification/ConditionProviders;->mExitConditionComponent:Landroid/content/ComponentName;

    invoke-static {v5, v6, p2}, Lcom/android/server/notification/ZenLog;->traceExitCondition(Landroid/service/notification/Condition;Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/notification/ConditionProviders;->saveZenConfigLocked()V

    .line 341
    :cond_be
    monitor-exit v7
    :try_end_bf
    .catchall {:try_start_a8 .. :try_end_bf} :catchall_a5

    .line 342
    return-void
.end method
