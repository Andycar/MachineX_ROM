.class public Lcom/android/server/enterprise/utils/ConstrainedState;
.super Ljava/lang/Object;
.source "ConstrainedState.java"


# static fields
.field private static final CONSTRAINED_DATA_PATH:Ljava/lang/String; = "/efs/constrained"

.field private static final CONSTRAINED_DEFAULT_COMMENT:Ljava/lang/String; = "DEFAULT"

.field private static final CONSTRAINED_DELIMITER:[B

.field private static final CONSTRAINED_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field private static final CONSTRAINED_TYPE_NORMALv2:Ljava/lang/String; = "normalv2"

.field private static final TAG:Ljava/lang/String; = "ConstrainedState"

.field private static mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;


# instance fields
.field private final DEBUG:Z

.field private cachedConstrainedData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-void

    .line 49
    :array_c
    .array-data 1
        0x8t
        0xet
        0x19t
        -0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 61
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 62
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 69
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->DEBUG:Z

    .line 61
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 62
    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    .line 69
    new-instance v1, Lcom/android/server/enterprise/utils/ConstrainedState$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$1;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    .line 83
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 85
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 86
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-direct {p0, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/utils/PackageDownloader;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/PackageDownloader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mPackageDownloader:Lcom/android/server/enterprise/utils/PackageDownloader;

    .line 93
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/utils/ConstrainedState$2;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/utils/ConstrainedState$2;-><init>(Lcom/android/server/enterprise/utils/ConstrainedState;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/utils/ConstrainedState;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateNotification()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/utils/ConstrainedState;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/utils/ConstrainedState;
    .param p1, "x1"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V

    return-void
.end method

.method private disableConstrainedStateInternal(ILjava/lang/String;)Z
    .registers 16
    .param p1, "adminUid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 486
    const/4 v6, 0x1

    .line 487
    .local v6, "ret":Z
    const/4 v0, 0x0

    .line 488
    .local v0, "changed":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 490
    .local v8, "token":J
    :try_start_6
    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v7, :cond_68

    .line 491
    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 492
    .local v4, "it":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 493
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 494
    .local v5, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 495
    .local v1, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 496
    const-string v7, "ConstrainedState"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "remove! "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v3, Ljava/io/File;

    const-string v7, "/efs/constrained"

    invoke-direct {v3, v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 500
    iget-object v7, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ConstrainedStateTable"

    const-string/jumbo v11, "status"

    const/4 v12, 0x1

    invoke-virtual {v7, p1, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 505
    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p2, v7, v10, v11}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 506
    const/4 v6, 0x1

    .line 507
    const/4 v0, 0x1

    .line 513
    .end local v1    # "data":Landroid/app/enterprise/EnrollData;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "it":Ljava/util/Iterator;
    .end local v5    # "key":Ljava/lang/String;
    :cond_68
    const/4 v7, 0x1

    if-ne v0, v7, :cond_6f

    .line 514
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6f} :catch_7a
    .catchall {:try_start_6 .. :try_end_6f} :catchall_83

    .line 520
    :cond_6f
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    :goto_72
    const-string v7, "ConstrainedState"

    const-string v10, "No data"

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return v6

    .line 516
    :catch_7a
    move-exception v2

    .line 517
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_83

    .line 518
    const/4 v6, 0x0

    .line 520
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_72

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_83
    move-exception v7

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7
.end method

.method private getConstrainedStateAll()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/EnrollData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 534
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 536
    .local v6, "token":J
    :try_start_4
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    if-eqz v5, :cond_42

    .line 537
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .local v4, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 539
    .local v2, "it":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_38

    .line 540
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 541
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 542
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2e} :catch_2f
    .catchall {:try_start_4 .. :try_end_2e} :catchall_46

    goto :goto_17

    .line 547
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :catch_2f
    move-exception v1

    .line 548
    .local v1, "e":Ljava/lang/Exception;
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_46

    .line 550
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 553
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_36
    const/4 v4, 0x0

    :goto_37
    return-object v4

    .line 544
    .restart local v2    # "it":Ljava/util/Iterator;
    .restart local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :cond_38
    :try_start_38
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_2f
    .catchall {:try_start_38 .. :try_end_3b} :catchall_46

    move-result v5

    if-nez v5, :cond_42

    .line 550
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_37

    .end local v2    # "it":Ljava/util/Iterator;
    .end local v4    # "ret":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    :cond_42
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_36

    :catchall_46
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_10

    .line 125
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 128
    :cond_10
    iget-object v0, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/ConstrainedState;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    if-nez v0, :cond_b

    .line 117
    new-instance v0, Lcom/android/server/enterprise/utils/ConstrainedState;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/utils/ConstrainedState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    .line 120
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mConstrainedState:Lcom/android/server/enterprise/utils/ConstrainedState;

    return-object v0
.end method

.method private isMatch([B[BI)Z
    .registers 8
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .param p3, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v2, p1

    if-ge v0, v2, :cond_16

    .line 220
    add-int v2, p3, v0

    array-length v3, p2

    if-lt v2, v3, :cond_b

    .line 227
    :cond_a
    :goto_a
    return v1

    .line 223
    :cond_b
    aget-byte v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-ne v2, v3, :cond_a

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 227
    :cond_16
    const/4 v1, 0x1

    goto :goto_a
.end method

.method private showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "enabled"    # Z

    .prologue
    const v6, 0x1040b4d

    .line 189
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_ConstrainedNoti"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "noti_tag":Ljava/lang/String;
    if-eqz p4, :cond_ac

    .line 191
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "builder":Landroid/app/Notification$Builder;
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 193
    const v3, 0x108064e

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 194
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const v4, 0x1040764

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 195
    const-string v3, "DEFAULT"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 196
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 197
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v4, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 202
    :goto_59
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 203
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 205
    if-eqz p3, :cond_8a

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_8a

    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v3, "edm.intent.action.sec.CHECK_REENROLLMENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "pkg"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 212
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8a
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v3, v2, v4, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 216
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :goto_9b
    return-void

    .line 199
    .restart local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_9c
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 200
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_59

    .line 214
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_ac
    iget-object v3, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto :goto_9b
.end method

.method private split([B[B)Ljava/util/List;
    .registers 7
    .param p1, "pattern"    # [B
    .param p2, "input"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 232
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .line 233
    .local v0, "blockStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    array-length v3, p2

    if-ge v1, v3, :cond_1e

    .line 234
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->isMatch([B[BI)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 235
    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    array-length v3, p1

    add-int v0, v1, v3

    .line 237
    move v1, v0

    .line 233
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 240
    :cond_1e
    array-length v3, p2

    invoke-static {p2, v0, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    return-object v2
.end method

.method private updateConstrainedStateData(Z)V
    .registers 38
    .param p1, "Noti"    # Z

    .prologue
    .line 246
    const/16 v24, 0x0

    .line 248
    .local v24, "io":Ljava/io/FileInputStream;
    :try_start_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 250
    .local v20, "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v15, v0, [Ljava/lang/String;

    .line 251
    .local v15, "columns":[Ljava/lang/String;
    const/16 v33, 0x0

    const-string v34, "adminUid"

    aput-object v34, v15, v33

    .line 252
    const/16 v33, 0x1

    const-string/jumbo v34, "status"

    aput-object v34, v15, v33

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    const-string v34, "ConstrainedStateTable"

    const/16 v35, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v15, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v16

    .line 257
    .local v16, "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v18, Ljava/io/File;

    const-string v33, "/efs/constrained"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 258
    .local v18, "dataDir":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v28

    .line 259
    .local v28, "listFiles":[Ljava/io/File;
    if-eqz v28, :cond_2ba

    .line 260
    move-object/from16 v13, v28

    .local v13, "arr$":[Ljava/io/File;
    array-length v0, v13

    move/from16 v27, v0
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_44} :catch_1b4
    .catchall {:try_start_2 .. :try_end_44} :catchall_28a

    .local v27, "len$":I
    const/16 v23, 0x0

    .local v23, "i$":I
    move-object/from16 v25, v24

    .end local v24    # "io":Ljava/io/FileInputStream;
    .local v25, "io":Ljava/io/FileInputStream;
    :goto_48
    move/from16 v0, v23

    move/from16 v1, v27

    if-ge v0, v1, :cond_2b8

    :try_start_4e
    aget-object v22, v13, v23

    .line 261
    .local v22, "file":Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v33

    if-eqz v33, :cond_2ff

    .line 262
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v34

    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    new-array v14, v0, [B

    .line 263
    .local v14, "buffer":[B
    new-instance v24, Ljava/io/FileInputStream;

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6c} :catch_2fa
    .catchall {:try_start_4e .. :try_end_6c} :catchall_2f6

    .line 264
    .end local v25    # "io":Ljava/io/FileInputStream;
    .restart local v24    # "io":Ljava/io/FileInputStream;
    :try_start_6c
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/io/FileInputStream;->read([B)I

    move-result v30

    .line 265
    .local v30, "readLen":I
    if-nez v30, :cond_7c

    .line 266
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 260
    .end local v14    # "buffer":[B
    .end local v30    # "readLen":I
    :goto_77
    add-int/lit8 v23, v23, 0x1

    move-object/from16 v25, v24

    .end local v24    # "io":Ljava/io/FileInputStream;
    .restart local v25    # "io":Ljava/io/FileInputStream;
    goto :goto_48

    .line 271
    .end local v25    # "io":Ljava/io/FileInputStream;
    .restart local v14    # "buffer":[B
    .restart local v24    # "io":Ljava/io/FileInputStream;
    .restart local v30    # "readLen":I
    :cond_7c
    sget-object v33, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v14}, Lcom/android/server/enterprise/utils/ConstrainedState;->split([B[B)Ljava/util/List;

    move-result-object v31

    .line 272
    .local v31, "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/16 v32, 0x0

    .line 273
    .local v32, "type":Ljava/lang/String;
    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_c0

    .line 274
    new-instance v32, Ljava/lang/String;

    .end local v32    # "type":Ljava/lang/String;
    const/16 v33, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move/from16 v2, v35

    move/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 277
    .restart local v32    # "type":Ljava/lang/String;
    :cond_c0
    if-nez v32, :cond_d0

    .line 278
    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "something\'s wrong // type is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_ca
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V

    .line 349
    const/16 v24, 0x0

    goto :goto_77

    .line 279
    :cond_d0
    const-string/jumbo v33, "normal"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_e2

    const-string/jumbo v33, "normalv2"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_2ae

    .line 280
    :cond_e2
    const/4 v5, 0x0

    .line 281
    .local v5, "pkgName":Ljava/lang/String;
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_12c

    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v33, v0

    if-lez v33, :cond_12c

    .line 282
    new-instance v5, Ljava/lang/String;

    .end local v5    # "pkgName":Ljava/lang/String;
    const/16 v33, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x1

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v5, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 285
    .restart local v5    # "pkgName":Ljava/lang/String;
    :cond_12c
    if-eqz v5, :cond_2a4

    .line 286
    const/4 v6, 0x0

    .line 287
    .local v6, "comment":Ljava/lang/String;
    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_29b

    .line 288
    new-instance v6, Ljava/lang/String;

    .end local v6    # "comment":Ljava/lang/String;
    const/16 v33, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x2

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v6, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 290
    .restart local v6    # "comment":Ljava/lang/String;
    const/16 v33, 0x3

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [B

    .line 291
    .local v29, "policyBitMaskByteBuffer":[B
    const/4 v7, 0x0

    .line 292
    .local v7, "policyBitMask":I
    if-eqz v29, :cond_1a8

    .line 293
    const/16 v33, 0x0

    aget-byte v33, v29, v33

    move/from16 v0, v33

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    shl-int/lit8 v33, v33, 0x18

    const/16 v34, 0x1

    aget-byte v34, v29, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    shl-int/lit8 v34, v34, 0x10

    or-int v33, v33, v34

    const/16 v34, 0x2

    aget-byte v34, v29, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    shl-int/lit8 v34, v34, 0x8

    or-int v33, v33, v34

    const/16 v34, 0x3

    aget-byte v34, v29, v34

    move/from16 v0, v34

    and-int/lit16 v0, v0, 0xff

    move/from16 v34, v0

    or-int v7, v33, v34

    .line 299
    :cond_1a8
    if-gtz v7, :cond_1c7

    .line 300
    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "something\'s wrong"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b2
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_1b2} :catch_1b4
    .catchall {:try_start_6c .. :try_end_1b2} :catchall_28a

    goto/16 :goto_ca

    .line 361
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "comment":Ljava/lang/String;
    .end local v7    # "policyBitMask":I
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v14    # "buffer":[B
    .end local v15    # "columns":[Ljava/lang/String;
    .end local v16    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "dataDir":Ljava/io/File;
    .end local v20    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v22    # "file":Ljava/io/File;
    .end local v23    # "i$":I
    .end local v27    # "len$":I
    .end local v28    # "listFiles":[Ljava/io/File;
    .end local v29    # "policyBitMaskByteBuffer":[B
    .end local v30    # "readLen":I
    .end local v31    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v32    # "type":Ljava/lang/String;
    :catch_1b4
    move-exception v19

    .line 362
    .local v19, "e":Ljava/lang/Exception;
    :goto_1b5
    :try_start_1b5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->clear()V
    :try_end_1c1
    .catchall {:try_start_1b5 .. :try_end_1c1} :catchall_28a

    .line 366
    if-eqz v24, :cond_1c6

    .line 367
    :try_start_1c3
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_1c6
    .catch Ljava/lang/Exception; {:try_start_1c3 .. :try_end_1c6} :catch_2f1

    .line 372
    .end local v19    # "e":Ljava/lang/Exception;
    :cond_1c6
    :goto_1c6
    return-void

    .line 302
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "comment":Ljava/lang/String;
    .restart local v7    # "policyBitMask":I
    .restart local v13    # "arr$":[Ljava/io/File;
    .restart local v14    # "buffer":[B
    .restart local v15    # "columns":[Ljava/lang/String;
    .restart local v16    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "dataDir":Ljava/io/File;
    .restart local v20    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v22    # "file":Ljava/io/File;
    .restart local v23    # "i$":I
    .restart local v27    # "len$":I
    .restart local v28    # "listFiles":[Ljava/io/File;
    .restart local v29    # "policyBitMaskByteBuffer":[B
    .restart local v30    # "readLen":I
    .restart local v31    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v32    # "type":Ljava/lang/String;
    :cond_1c7
    const/4 v8, 0x0

    .line 303
    .local v8, "downloadUrl":Ljava/lang/String;
    const/4 v10, 0x0

    .line 304
    .local v10, "signature":[B
    :try_start_1c9
    const-string/jumbo v33, "normalv2"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_214

    .line 305
    const/16 v33, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    if-eqz v33, :cond_208

    .line 306
    new-instance v8, Ljava/lang/String;

    .end local v8    # "downloadUrl":Ljava/lang/String;
    const/16 v33, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, [B

    const/16 v35, 0x0

    const/16 v34, 0x4

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, [B

    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v34, v0

    move-object/from16 v0, v33

    move/from16 v1, v35

    move/from16 v2, v34

    invoke-direct {v8, v0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    .line 309
    .restart local v8    # "downloadUrl":Ljava/lang/String;
    :cond_208
    const/16 v33, 0x5

    move-object/from16 v0, v31

    move/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "signature":[B
    check-cast v10, [B

    .line 311
    .restart local v10    # "signature":[B
    :cond_214
    new-instance v4, Landroid/app/enterprise/EnrollData;

    invoke-direct {v4}, Landroid/app/enterprise/EnrollData;-><init>()V

    .line 312
    .local v4, "data":Landroid/app/enterprise/EnrollData;
    const/4 v9, 0x0

    .line 313
    .local v9, "constrainedStatus":I
    if-eqz v16, :cond_267

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v33

    if-lez v33, :cond_267

    .line 314
    const/16 v17, 0x0

    .line 315
    .local v17, "cv":Landroid/content/ContentValues;
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    .line 316
    .local v26, "it":Ljava/util/Iterator;
    :cond_228
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_267

    .line 317
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "cv":Landroid/content/ContentValues;
    check-cast v17, Landroid/content/ContentValues;

    .line 318
    .restart local v17    # "cv":Landroid/content/ContentValues;
    const-string v33, "adminUid"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 319
    .local v12, "adminUid":I
    const-string/jumbo v33, "status"

    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Integer;->intValue()I

    move-result v21

    .line 320
    .local v21, "enrolled_state":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v11

    .line 321
    .local v11, "adminPkgName":Ljava/lang/String;
    if-eqz v11, :cond_228

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_228

    .line 322
    move/from16 v9, v21

    .line 328
    .end local v11    # "adminPkgName":Ljava/lang/String;
    .end local v12    # "adminUid":I
    .end local v17    # "cv":Landroid/content/ContentValues;
    .end local v21    # "enrolled_state":I
    .end local v26    # "it":Ljava/util/Iterator;
    :cond_267
    invoke-virtual/range {v4 .. v10}, Landroid/app/enterprise/EnrollData;->setData(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I[B)V

    .line 329
    const/16 v33, 0x1

    move/from16 v0, p1

    move/from16 v1, v33

    if-ne v0, v1, :cond_27d

    .line 330
    if-nez v9, :cond_291

    .line 331
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v5, v6, v8, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 336
    :cond_27d
    :goto_27d
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_1c9 .. :try_end_288} :catch_1b4
    .catchall {:try_start_1c9 .. :try_end_288} :catchall_28a

    goto/16 :goto_ca

    .line 365
    .end local v4    # "data":Landroid/app/enterprise/EnrollData;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "comment":Ljava/lang/String;
    .end local v7    # "policyBitMask":I
    .end local v8    # "downloadUrl":Ljava/lang/String;
    .end local v9    # "constrainedStatus":I
    .end local v10    # "signature":[B
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v14    # "buffer":[B
    .end local v15    # "columns":[Ljava/lang/String;
    .end local v16    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "dataDir":Ljava/io/File;
    .end local v20    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v22    # "file":Ljava/io/File;
    .end local v23    # "i$":I
    .end local v27    # "len$":I
    .end local v28    # "listFiles":[Ljava/io/File;
    .end local v29    # "policyBitMaskByteBuffer":[B
    .end local v30    # "readLen":I
    .end local v31    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v32    # "type":Ljava/lang/String;
    :catchall_28a
    move-exception v33

    .line 366
    :goto_28b
    if-eqz v24, :cond_290

    .line 367
    :try_start_28d
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_290
    .catch Ljava/lang/Exception; {:try_start_28d .. :try_end_290} :catch_2f4

    .line 370
    :cond_290
    :goto_290
    throw v33

    .line 333
    .restart local v4    # "data":Landroid/app/enterprise/EnrollData;
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "comment":Ljava/lang/String;
    .restart local v7    # "policyBitMask":I
    .restart local v8    # "downloadUrl":Ljava/lang/String;
    .restart local v9    # "constrainedStatus":I
    .restart local v10    # "signature":[B
    .restart local v13    # "arr$":[Ljava/io/File;
    .restart local v14    # "buffer":[B
    .restart local v15    # "columns":[Ljava/lang/String;
    .restart local v16    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "dataDir":Ljava/io/File;
    .restart local v20    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v22    # "file":Ljava/io/File;
    .restart local v23    # "i$":I
    .restart local v27    # "len$":I
    .restart local v28    # "listFiles":[Ljava/io/File;
    .restart local v29    # "policyBitMaskByteBuffer":[B
    .restart local v30    # "readLen":I
    .restart local v31    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .restart local v32    # "type":Ljava/lang/String;
    :cond_291
    const/16 v33, 0x0

    :try_start_293
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v5, v6, v8, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_27d

    .line 339
    .end local v4    # "data":Landroid/app/enterprise/EnrollData;
    .end local v7    # "policyBitMask":I
    .end local v8    # "downloadUrl":Ljava/lang/String;
    .end local v9    # "constrainedStatus":I
    .end local v10    # "signature":[B
    .end local v29    # "policyBitMaskByteBuffer":[B
    :cond_29b
    const-string v33, "ConstrainedState"

    const-string v34, "comment is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .line 342
    .end local v6    # "comment":Ljava/lang/String;
    :cond_2a4
    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "package name is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .line 345
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_2ae
    const-string v33, "ConstrainedState"

    const-string/jumbo v34, "type is not normal"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_ca

    .end local v14    # "buffer":[B
    .end local v22    # "file":Ljava/io/File;
    .end local v24    # "io":Ljava/io/FileInputStream;
    .end local v30    # "readLen":I
    .end local v31    # "temp":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v32    # "type":Ljava/lang/String;
    .restart local v25    # "io":Ljava/io/FileInputStream;
    :cond_2b8
    move-object/from16 v24, v25

    .line 354
    .end local v13    # "arr$":[Ljava/io/File;
    .end local v23    # "i$":I
    .end local v25    # "io":Ljava/io/FileInputStream;
    .end local v27    # "len$":I
    .restart local v24    # "io":Ljava/io/FileInputStream;
    :cond_2ba
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->isEmpty()Z

    move-result v33

    if-eqz v33, :cond_2da

    .line 355
    const-string v33, "ConstrainedState"

    const-string v34, "Data is null"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->clear()V
    :try_end_2d0
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2d0} :catch_1b4
    .catchall {:try_start_293 .. :try_end_2d0} :catchall_28a

    .line 366
    :goto_2d0
    if-eqz v24, :cond_1c6

    .line 367
    :try_start_2d2
    invoke-virtual/range {v24 .. v24}, Ljava/io/FileInputStream;->close()V
    :try_end_2d5
    .catch Ljava/lang/Exception; {:try_start_2d2 .. :try_end_2d5} :catch_2d7

    goto/16 :goto_1c6

    .line 369
    :catch_2d7
    move-exception v33

    goto/16 :goto_1c6

    .line 358
    :cond_2da
    :try_start_2da
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/HashMap;->clear()V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_2f0
    .catch Ljava/lang/Exception; {:try_start_2da .. :try_end_2f0} :catch_1b4
    .catchall {:try_start_2da .. :try_end_2f0} :catchall_28a

    goto :goto_2d0

    .line 369
    .end local v15    # "columns":[Ljava/lang/String;
    .end local v16    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v18    # "dataDir":Ljava/io/File;
    .end local v20    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .end local v28    # "listFiles":[Ljava/io/File;
    .restart local v19    # "e":Ljava/lang/Exception;
    :catch_2f1
    move-exception v33

    goto/16 :goto_1c6

    .end local v19    # "e":Ljava/lang/Exception;
    :catch_2f4
    move-exception v34

    goto :goto_290

    .line 365
    .end local v24    # "io":Ljava/io/FileInputStream;
    .restart local v13    # "arr$":[Ljava/io/File;
    .restart local v15    # "columns":[Ljava/lang/String;
    .restart local v16    # "constainedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v18    # "dataDir":Ljava/io/File;
    .restart local v20    # "enrollData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/EnrollData;>;"
    .restart local v23    # "i$":I
    .restart local v25    # "io":Ljava/io/FileInputStream;
    .restart local v27    # "len$":I
    .restart local v28    # "listFiles":[Ljava/io/File;
    :catchall_2f6
    move-exception v33

    move-object/from16 v24, v25

    .end local v25    # "io":Ljava/io/FileInputStream;
    .restart local v24    # "io":Ljava/io/FileInputStream;
    goto :goto_28b

    .line 361
    .end local v24    # "io":Ljava/io/FileInputStream;
    .restart local v25    # "io":Ljava/io/FileInputStream;
    :catch_2fa
    move-exception v19

    move-object/from16 v24, v25

    .end local v25    # "io":Ljava/io/FileInputStream;
    .restart local v24    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_1b5

    .end local v24    # "io":Ljava/io/FileInputStream;
    .restart local v22    # "file":Ljava/io/File;
    .restart local v25    # "io":Ljava/io/FileInputStream;
    :cond_2ff
    move-object/from16 v24, v25

    .end local v25    # "io":Ljava/io/FileInputStream;
    .restart local v24    # "io":Ljava/io/FileInputStream;
    goto/16 :goto_77
.end method

.method private updateNotification()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 148
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 149
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v1, :cond_37

    .line 150
    const/4 v3, 0x0

    .line 151
    .local v3, "policyBitMask":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 152
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v8, v8, v5}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_c

    .line 154
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/server/enterprise/utils/ConstrainedState;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_c

    .line 158
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "policyBitMask":I
    :cond_37
    return-void
.end method


# virtual methods
.method public checkConstrainedState()Z
    .registers 6

    .prologue
    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "constrainedMode":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    .line 135
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v2, :cond_1e

    .line 136
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 137
    .local v1, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_b

    .line 138
    const/4 v0, 0x1

    .line 144
    .end local v1    # "data":Landroid/app/enterprise/EnrollData;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1e
    return v0
.end method

.method public checkSignature(Ljava/lang/String;Landroid/net/Uri;)Z
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "packageURI"    # Landroid/net/Uri;

    .prologue
    .line 593
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "archiveFilePath":Ljava/lang/String;
    new-instance v8, Landroid/content/pm/PackageParser;

    invoke-direct {v8}, Landroid/content/pm/PackageParser;-><init>()V

    .line 599
    .local v8, "packageParser":Landroid/content/pm/PackageParser;
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 600
    .local v10, "sourceFile":Ljava/io/File;
    const/4 v9, 0x0

    .line 602
    .local v9, "pkgInst":Landroid/content/pm/PackageParser$Package;
    const/4 v11, 0x0

    :try_start_10
    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v9

    .line 603
    if-eqz v9, :cond_1a

    .line 604
    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;I)V
    :try_end_1a
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_10 .. :try_end_1a} :catch_3a

    .line 614
    :cond_1a
    iget-object v11, v9, Landroid/content/pm/PackageParser$Package;->mSignatures:[Landroid/content/pm/Signature;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    .line 615
    .local v6, "newPackageSignature":[B
    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_30

    if-eqz v6, :cond_30

    array-length v11, v6

    if-nez v11, :cond_41

    .line 616
    :cond_30
    const-string v11, "ConstrainedState"

    const-string/jumbo v12, "something\'s wrong"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_38
    const/4 v11, 0x0

    .end local v6    # "newPackageSignature":[B
    :goto_39
    return v11

    .line 606
    :catch_3a
    move-exception v3

    .line 607
    .local v3, "e":Landroid/content/pm/PackageParser$PackageParserException;
    const/4 v9, 0x0

    .line 608
    invoke-virtual {v3}, Landroid/content/pm/PackageParser$PackageParserException;->printStackTrace()V

    .line 611
    const/4 v11, 0x0

    goto :goto_39

    .line 618
    .end local v3    # "e":Landroid/content/pm/PackageParser$PackageParserException;
    .restart local v6    # "newPackageSignature":[B
    :cond_41
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v2

    .line 619
    .local v2, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v2, :cond_38

    .line 620
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_38

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnrollData;

    .line 623
    .local v1, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4b

    .line 624
    invoke-virtual {v1}, Landroid/app/enterprise/EnrollData;->getSignature()[B

    move-result-object v7

    .line 625
    .local v7, "orig":[B
    if-nez v7, :cond_69

    .line 628
    const/4 v11, 0x0

    goto :goto_39

    .line 629
    :cond_69
    array-length v11, v7

    array-length v12, v6

    if-eq v11, v12, :cond_6f

    .line 632
    const/4 v11, 0x0

    goto :goto_39

    .line 634
    :cond_6f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_70
    array-length v11, v6

    if-ge v4, v11, :cond_7e

    .line 636
    aget-byte v11, v7, v4

    aget-byte v12, v6, v4

    if-eq v11, v12, :cond_7b

    .line 639
    const/4 v11, 0x0

    goto :goto_39

    .line 634
    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_70

    .line 645
    :cond_7e
    const/4 v11, 0x1

    goto :goto_39
.end method

.method public cleanUpConstrainedState(I)V
    .registers 10
    .param p1, "adminUid"    # I

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 162
    .local v0, "callingUid":I
    if-eq p1, v0, :cond_f

    .line 165
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.BIND_DEVICE_ADMIN"

    const-string v7, "Only system or itself can remove an EDM admin"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v5, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v1, "adminUid"

    .line 175
    .local v1, "column":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ConstrainedStateTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v4

    .line 177
    .local v4, "result":Landroid/content/ContentValues;
    if-eqz v4, :cond_40

    .line 178
    iget-object v5, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "pkgName":Ljava/lang/String;
    if-eqz v3, :cond_3f

    .line 180
    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    .line 184
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_3f
    :goto_3f
    return-void

    .line 182
    :cond_40
    const-string v5, "ConstrainedState"

    const-string v6, "constrained state will go on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f
.end method

.method public disableConstrainedState(Landroid/app/enterprise/ContextInfo;)Z
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 528
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 529
    iget-object v1, p0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "pkgName":Ljava/lang/String;
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/utils/ConstrainedState;->disableConstrainedStateInternal(ILjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public enableConstrainedState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 34
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "comment"    # Ljava/lang/String;
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "PolicyBitMask"    # I

    .prologue
    .line 375
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v24

    const-string v25, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 377
    if-gtz p4, :cond_15

    .line 378
    const/16 v24, 0x0

    .line 482
    :goto_14
    return v24

    .line 381
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v16

    .line 383
    .local v16, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 385
    .local v22, "token":J
    :try_start_29
    new-instance v5, Ljava/io/File;

    const-string v24, "/efs/constrained"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 386
    .local v5, "dataDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_3b

    .line 387
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 390
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_8c

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 392
    .local v9, "it":Ljava/util/Iterator;
    :cond_51
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8c

    .line 393
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 394
    .local v10, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->cachedConstrainedData:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/enterprise/EnrollData;

    .line 395
    .local v4, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v4}, Landroid/app/enterprise/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_51

    .line 396
    const-string v24, "ConstrainedState"

    const-string v25, "already existing values // update"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v7, Ljava/io/File;

    const-string v24, "/efs/constrained"

    move-object/from16 v0, v24

    invoke-direct {v7, v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_8c} :catch_20a
    .catchall {:try_start_29 .. :try_end_8c} :catchall_217

    .line 404
    .end local v4    # "data":Landroid/app/enterprise/EnrollData;
    .end local v7    # "file":Ljava/io/File;
    .end local v9    # "it":Ljava/util/Iterator;
    .end local v10    # "key":Ljava/lang/String;
    :cond_8c
    const/4 v11, 0x0

    .line 405
    .local v11, "os":Ljava/io/FileOutputStream;
    const/4 v13, 0x0

    .line 407
    .local v13, "outFile":Ljava/io/File;
    :try_start_8e
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "_"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 408
    .local v21, "temp":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v24

    const v25, 0x7fffffff

    and-int v8, v24, v25

    .line 409
    .local v8, "hash":I
    new-instance v14, Ljava/io/File;

    const-string v24, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_8e .. :try_end_c5} :catch_245
    .catchall {:try_start_8e .. :try_end_c5} :catchall_240

    .line 410
    .end local v13    # "outFile":Ljava/io/File;
    .local v14, "outFile":Ljava/io/File;
    :goto_c5
    :try_start_c5
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_de

    .line 411
    add-int/lit8 v8, v8, 0x1

    .line 412
    new-instance v13, Ljava/io/File;

    const-string v24, "/efs/constrained"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v13, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v14    # "outFile":Ljava/io/File;
    .restart local v13    # "outFile":Ljava/io/File;
    move-object v14, v13

    .end local v13    # "outFile":Ljava/io/File;
    .restart local v14    # "outFile":Ljava/io/File;
    goto :goto_c5

    .line 415
    :cond_de
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v19, v0

    const/16 v24, 0x0

    shr-int/lit8 v25, p4, 0x18

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    const/16 v24, 0x1

    shr-int/lit8 v25, p4, 0x10

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    const/16 v24, 0x2

    shr-int/lit8 v25, p4, 0x8

    move/from16 v0, v25

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    const/16 v24, 0x3

    move/from16 v0, p4

    int-to-byte v0, v0

    move/from16 v25, v0

    aput-byte v25, v19, v24

    .line 421
    .local v19, "policyBitMaskByteBuffer":[B
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_115} :catch_247
    .catchall {:try_start_c5 .. :try_end_115} :catchall_242

    .line 423
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .local v12, "os":Ljava/io/FileOutputStream;
    if-eqz p3, :cond_1d4

    :try_start_117
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1d4

    .line 424
    const-string/jumbo v24, "normalv2"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 428
    :goto_129
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 429
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 430
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 431
    if-eqz p2, :cond_1f4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1f4

    .line 432
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 436
    :goto_151
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 437
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 438
    if-eqz p3, :cond_1a3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1a3

    .line 439
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 440
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    const/16 v25, 0x40

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 444
    .local v15, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v17, v24, v25

    .line 445
    .local v17, "pkgSig":Landroid/content/pm/Signature;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v18

    .line 446
    .local v18, "pkgSigBytes":[B
    sget-object v24, Lcom/android/server/enterprise/utils/ConstrainedState;->CONSTRAINED_DELIMITER:[B

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 447
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 450
    .end local v15    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "pkgSig":Landroid/content/pm/Signature;
    .end local v18    # "pkgSigBytes":[B
    :cond_1a3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 451
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a9
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_1a9} :catch_1e2
    .catchall {:try_start_117 .. :try_end_1a9} :catchall_201

    .line 452
    const/4 v11, 0x0

    .line 454
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :try_start_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/utils/ConstrainedState;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    const-string v26, "ConstrainedStateTable"

    const-string/jumbo v27, "status"

    const/16 v28, 0x1

    invoke-virtual/range {v24 .. v28}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v20

    .line 458
    .local v20, "ret":Z
    if-nez v20, :cond_21c

    .line 459
    if-eqz v14, :cond_1c8

    .line 460
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1aa .. :try_end_1c8} :catch_247
    .catchall {:try_start_1aa .. :try_end_1c8} :catchall_242

    .line 461
    :cond_1c8
    const/16 v24, 0x0

    .line 470
    if-eqz v11, :cond_1cf

    .line 471
    :try_start_1cc
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1cc .. :try_end_1cf} :catch_212
    .catchall {:try_start_1cc .. :try_end_1cf} :catchall_217

    .line 479
    :cond_1cf
    :goto_1cf
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 426
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .end local v20    # "ret":Z
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    :cond_1d4
    :try_start_1d4
    const-string/jumbo v24, "normal"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1e0
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_1e0} :catch_1e2
    .catchall {:try_start_1d4 .. :try_end_1e0} :catchall_201

    goto/16 :goto_129

    .line 466
    :catch_1e2
    move-exception v6

    move-object v13, v14

    .end local v14    # "outFile":Ljava/io/File;
    .restart local v13    # "outFile":Ljava/io/File;
    move-object v11, v12

    .line 467
    .end local v8    # "hash":I
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .end local v19    # "policyBitMaskByteBuffer":[B
    .end local v21    # "temp":Ljava/lang/String;
    .local v6, "e":Ljava/lang/Exception;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :goto_1e5
    :try_start_1e5
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e8
    .catchall {:try_start_1e5 .. :try_end_1e8} :catchall_240

    .line 470
    if-eqz v11, :cond_1ed

    .line 471
    :try_start_1ea
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1ea .. :try_end_1ed} :catch_236
    .catchall {:try_start_1ea .. :try_end_1ed} :catchall_217

    .line 479
    :cond_1ed
    :goto_1ed
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 482
    .end local v5    # "dataDir":Ljava/io/File;
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .end local v13    # "outFile":Ljava/io/File;
    :goto_1f0
    const/16 v24, 0x0

    goto/16 :goto_14

    .line 434
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "dataDir":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v12    # "os":Ljava/io/FileOutputStream;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v19    # "policyBitMaskByteBuffer":[B
    .restart local v21    # "temp":Ljava/lang/String;
    :cond_1f4
    :try_start_1f4
    const-string v24, "DEFAULT"

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1ff
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1ff} :catch_1e2
    .catchall {:try_start_1f4 .. :try_end_1ff} :catchall_201

    goto/16 :goto_151

    .line 469
    :catchall_201
    move-exception v24

    move-object v13, v14

    .end local v14    # "outFile":Ljava/io/File;
    .restart local v13    # "outFile":Ljava/io/File;
    move-object v11, v12

    .line 470
    .end local v8    # "hash":I
    .end local v12    # "os":Ljava/io/FileOutputStream;
    .end local v19    # "policyBitMaskByteBuffer":[B
    .end local v21    # "temp":Ljava/lang/String;
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    :goto_204
    if-eqz v11, :cond_209

    .line 471
    :try_start_206
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_209} :catch_23b
    .catchall {:try_start_206 .. :try_end_209} :catchall_217

    .line 474
    :cond_209
    :goto_209
    :try_start_209
    throw v24
    :try_end_20a
    .catch Ljava/lang/Exception; {:try_start_209 .. :try_end_20a} :catch_20a
    .catchall {:try_start_209 .. :try_end_20a} :catchall_217

    .line 476
    .end local v5    # "dataDir":Ljava/io/File;
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .end local v13    # "outFile":Ljava/io/File;
    :catch_20a
    move-exception v6

    .line 477
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_20b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20e
    .catchall {:try_start_20b .. :try_end_20e} :catchall_217

    .line 479
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f0

    .line 472
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v5    # "dataDir":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v19    # "policyBitMaskByteBuffer":[B
    .restart local v20    # "ret":Z
    .restart local v21    # "temp":Ljava/lang/String;
    :catch_212
    move-exception v6

    .line 473
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_213
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_216} :catch_20a
    .catchall {:try_start_213 .. :try_end_216} :catchall_217

    goto :goto_1cf

    .line 479
    .end local v5    # "dataDir":Ljava/io/File;
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "hash":I
    .end local v11    # "os":Ljava/io/FileOutputStream;
    .end local v14    # "outFile":Ljava/io/File;
    .end local v19    # "policyBitMaskByteBuffer":[B
    .end local v20    # "ret":Z
    .end local v21    # "temp":Ljava/lang/String;
    :catchall_217
    move-exception v24

    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v24

    .line 463
    .restart local v5    # "dataDir":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v11    # "os":Ljava/io/FileOutputStream;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v19    # "policyBitMaskByteBuffer":[B
    .restart local v20    # "ret":Z
    .restart local v21    # "temp":Ljava/lang/String;
    :cond_21c
    const/16 v24, 0x1

    :try_start_21e
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/ConstrainedState;->updateConstrainedStateData(Z)V
    :try_end_225
    .catch Ljava/lang/Exception; {:try_start_21e .. :try_end_225} :catch_247
    .catchall {:try_start_21e .. :try_end_225} :catchall_242

    .line 464
    const/16 v24, 0x1

    .line 470
    if-eqz v11, :cond_22c

    .line 471
    :try_start_229
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_22c
    .catch Ljava/lang/Exception; {:try_start_229 .. :try_end_22c} :catch_231
    .catchall {:try_start_229 .. :try_end_22c} :catchall_217

    .line 479
    :cond_22c
    :goto_22c
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    .line 472
    :catch_231
    move-exception v6

    .line 473
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_232
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22c

    .line 472
    .end local v8    # "hash":I
    .end local v14    # "outFile":Ljava/io/File;
    .end local v19    # "policyBitMaskByteBuffer":[B
    .end local v20    # "ret":Z
    .end local v21    # "temp":Ljava/lang/String;
    .restart local v13    # "outFile":Ljava/io/File;
    :catch_236
    move-exception v6

    .line 473
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1ed

    .line 472
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_23b
    move-exception v6

    .line 473
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23f
    .catch Ljava/lang/Exception; {:try_start_232 .. :try_end_23f} :catch_20a
    .catchall {:try_start_232 .. :try_end_23f} :catchall_217

    goto :goto_209

    .line 469
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_240
    move-exception v24

    goto :goto_204

    .end local v13    # "outFile":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v21    # "temp":Ljava/lang/String;
    :catchall_242
    move-exception v24

    move-object v13, v14

    .end local v14    # "outFile":Ljava/io/File;
    .restart local v13    # "outFile":Ljava/io/File;
    goto :goto_204

    .line 466
    .end local v8    # "hash":I
    .end local v21    # "temp":Ljava/lang/String;
    :catch_245
    move-exception v6

    goto :goto_1e5

    .end local v13    # "outFile":Ljava/io/File;
    .restart local v8    # "hash":I
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v21    # "temp":Ljava/lang/String;
    :catch_247
    move-exception v6

    move-object v13, v14

    .end local v14    # "outFile":Ljava/io/File;
    .restart local v13    # "outFile":Ljava/io/File;
    goto :goto_1e5
.end method

.method public getConstrainedState()I
    .registers 6

    .prologue
    .line 574
    const/4 v3, 0x0

    .line 576
    .local v3, "ret":I
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 578
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    if-eqz v1, :cond_1f

    .line 579
    const/4 v3, 0x1

    .line 581
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 582
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_c

    .line 583
    const/4 v3, 0x2

    .line 589
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1f
    return v3
.end method

.method public isRestrictedByConstrainedState(I)Z
    .registers 7
    .param p1, "bitMask"    # I

    .prologue
    .line 557
    invoke-direct {p0}, Lcom/android/server/enterprise/utils/ConstrainedState;->getConstrainedStateAll()Ljava/util/List;

    move-result-object v1

    .line 558
    .local v1, "dataList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnrollData;>;"
    const/4 v3, 0x0

    .line 560
    .local v3, "policyBitMask":I
    if-eqz v1, :cond_27

    .line 561
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnrollData;

    .line 562
    .local v0, "data":Landroid/app/enterprise/EnrollData;
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getConstrainedState()I

    move-result v4

    if-nez v4, :cond_b

    .line 563
    invoke-virtual {v0}, Landroid/app/enterprise/EnrollData;->getPolicyBitMask()I

    move-result v3

    .line 564
    and-int v4, v3, p1

    if-lez v4, :cond_b

    .line 565
    const/4 v4, 0x1

    .line 570
    .end local v0    # "data":Landroid/app/enterprise/EnrollData;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_26
    return v4

    :cond_27
    const/4 v4, 0x0

    goto :goto_26
.end method
