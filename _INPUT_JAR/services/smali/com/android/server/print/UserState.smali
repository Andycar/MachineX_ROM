.class final Lcom/android/server/print/UserState;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;
.implements Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/UserState$PrintJobForAppCache;,
        Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;,
        Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;,
        Lcom/android/server/print/UserState$UserStateHandler;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME_SEPARATOR:C = ':'

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "UserState"


# instance fields
.field private final mActiveServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/print/RemotePrintService;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDestroyed:Z

.field private final mEnabledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mInstalledServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field private mPrintJobStateChangeListenerRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

.field private final mQueryIntent:Landroid/content/Intent;

.field private final mSpooler:Lcom/android/server/print/RemotePrintSpooler;

.field private final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/Object;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "lock"    # Ljava/lang/Object;

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 91
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    .line 94
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    .line 100
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    .line 103
    new-instance v0, Lcom/android/server/print/UserState$PrintJobForAppCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 123
    iput-object p1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    .line 124
    iput p2, p0, Lcom/android/server/print/UserState;->mUserId:I

    .line 125
    iput-object p3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    .line 126
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/print/RemotePrintSpooler;-><init>(Landroid/content/Context;ILcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    .line 127
    new-instance v0, Lcom/android/server/print/UserState$UserStateHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/print/UserState$UserStateHandler;-><init>(Lcom/android/server/print/UserState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    .line 128
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_4d
    invoke-direct {p0}, Lcom/android/server/print/UserState;->enableSystemPrintServicesLocked()V

    .line 130
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 131
    monitor-exit v1

    .line 132
    return-void

    .line 131
    :catchall_55
    move-exception v0

    monitor-exit v1
    :try_end_57
    .catchall {:try_start_4d .. :try_end_57} :catchall_55

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/print/UserState;)Lcom/android/server/print/RemotePrintSpooler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/print/UserState;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/print/UserState;
    .param p1, "x1"    # Landroid/print/PrintJobId;
    .param p2, "x2"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/print/UserState;->handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/print/UserState;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/print/UserState;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/print/UserState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/print/UserState;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    return v0
.end method

.method private addServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_12

    .line 834
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceAddedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 836
    :cond_12
    return-void
.end method

.method private enableSystemPrintServicesLocked()V
    .registers 13

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readEnabledPrintServicesLocked()Z

    .line 734
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    .line 737
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 738
    .local v1, "enabledOnFirstBoot":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v9, "enabled_on_first_boot_system_print_services"

    invoke-direct {p0, v9, v1}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v5

    .line 745
    .local v5, "serviceCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1c
    if-ge v4, v5, :cond_60

    .line 746
    iget-object v9, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v9

    iget-object v6, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 748
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5d

    .line 749
    new-instance v7, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    .local v7, "serviceName":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    invoke-interface {v1, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5d

    .line 753
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_56

    .line 754
    const-string v9, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :cond_56
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .end local v7    # "serviceName":Landroid/content/ComponentName;
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 762
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-gtz v9, :cond_67

    .line 791
    :goto_66
    return-void

    .line 766
    :cond_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 769
    .local v8, "servicesToEnable":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 771
    .local v3, "enabledServices":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 772
    move-object v3, v8

    .line 776
    :goto_80
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v3, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 780
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_on_first_boot_system_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, "enabledOnFirstBootServices":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c8

    .line 784
    move-object v2, v8

    .line 788
    :goto_a2
    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_on_first_boot_system_print_services"

    iget v11, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v9, v10, v2, v11}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_66

    .line 774
    .end local v2    # "enabledOnFirstBootServices":Ljava/lang/String;
    :cond_b0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_80

    .line 786
    .restart local v2    # "enabledOnFirstBootServices":Ljava/lang/String;
    :cond_c8
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a2
.end method

.method private failActivePrintJobsForService(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 854
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 855
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/UserState$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/UserState$4;-><init>(Lcom/android/server/print/UserState;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 864
    :goto_16
    return-void

    .line 862
    :cond_17
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState;->failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V

    goto :goto_16
.end method

.method private failScheduledPrintJobsForServiceInternal(Landroid/content/ComponentName;)V
    .registers 13
    .param p1, "serviceName"    # Landroid/content/ComponentName;

    .prologue
    .line 867
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v7, -0x4

    const/4 v8, -0x2

    invoke-virtual {v6, p1, v7, v8}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v5

    .line 869
    .local v5, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v5, :cond_b

    .line 883
    :goto_a
    return-void

    .line 872
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 874
    .local v2, "identity":J
    :try_start_f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 875
    .local v4, "printJobCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v4, :cond_32

    .line 876
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrintJobInfo;

    .line 877
    .local v1, "printJob":Landroid/print/PrintJobInfo;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v7

    const/4 v8, 0x6

    iget-object v9, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v10, 0x1040669

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z
    :try_end_2f
    .catchall {:try_start_f .. :try_end_2f} :catchall_36

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 881
    .end local v1    # "printJob":Landroid/print/PrintJobInfo;
    :cond_32
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_a

    .end local v0    # "i":I
    .end local v4    # "printJobCount":I
    :catchall_36
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method private handleDispatchPrintJobStateChanged(Landroid/print/PrintJobId;I)V
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    .line 893
    iget-object v6, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 894
    :try_start_3
    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v5, :cond_9

    .line 895
    monitor-exit v6

    .line 911
    :cond_8
    return-void

    .line 897
    :cond_9
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 899
    .local v4, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_2f

    .line 900
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 901
    .local v3, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v3, :cond_8

    .line 902
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 903
    .local v2, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    const/4 v6, -0x2

    if-eq v5, v6, :cond_27

    iget v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->appId:I

    if-ne v5, p2, :cond_2c

    .line 906
    :cond_27
    :try_start_27
    iget-object v5, v2, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v5, p1}, Landroid/print/IPrintJobStateChangeListener;->onPrintJobStateChanged(Landroid/print/PrintJobId;)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2c} :catch_32

    .line 901
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 899
    .end local v0    # "i":I
    .end local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .end local v3    # "recordCount":I
    .end local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catchall_2f
    move-exception v5

    :try_start_30
    monitor-exit v6
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v5

    .line 907
    .restart local v0    # "i":I
    .restart local v2    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v3    # "recordCount":I
    .restart local v4    # "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;>;"
    :catch_32
    move-exception v1

    .line 908
    .local v1, "re":Landroid/os/RemoteException;
    const-string v5, "UserState"

    const-string v6, "Error notifying for print job state change"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method private onConfigurationChangedLocked()V
    .registers 13

    .prologue
    .line 794
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 796
    .local v8, "installedComponents":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    .line 797
    .local v9, "installedCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_c
    if-ge v7, v9, :cond_5a

    .line 798
    iget-object v1, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 799
    .local v11, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .local v2, "serviceName":Landroid/content/ComponentName;
    invoke-interface {v8, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 805
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 806
    new-instance v0, Lcom/android/server/print/RemotePrintService;

    iget-object v1, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/server/print/UserState;->mUserId:I

    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/print/RemotePrintService;-><init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/print/RemotePrintSpooler;Lcom/android/server/print/RemotePrintService$PrintServiceCallbacks;)V

    .line 808
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->addServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 797
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_49
    :goto_49
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 811
    :cond_4c
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 812
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    if-eqz v0, :cond_49

    .line 813
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    goto :goto_49

    .line 818
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    .end local v11    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5a
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 820
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;>;"
    :cond_64
    :goto_64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 821
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 822
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 823
    .restart local v2    # "serviceName":Landroid/content/ComponentName;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 824
    .restart local v0    # "service":Lcom/android/server/print/RemotePrintService;
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 825
    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 826
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_64

    .line 829
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    .end local v2    # "serviceName":Landroid/content/ComponentName;
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Lcom/android/server/print/RemotePrintService;>;"
    :cond_89
    return-void
.end method

.method private readConfigurationLocked()Z
    .registers 3

    .prologue
    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "somethingChanged":Z
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readInstalledPrintServicesLocked()Z

    move-result v1

    or-int/2addr v0, v1

    .line 636
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readEnabledPrintServicesLocked()Z

    move-result v1

    or-int/2addr v0, v1

    .line 637
    return v0
.end method

.method private readEnabledPrintServicesLocked()Z
    .registers 3

    .prologue
    .line 700
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 701
    .local v0, "tempEnabledServiceNameSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    const-string v1, "enabled_print_services"

    invoke-direct {p0, v1, v0}, Lcom/android/server/print/UserState;->readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V

    .line 703
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 704
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 705
    iget-object v1, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 706
    const/4 v1, 0x1

    .line 708
    :goto_1d
    return v1

    :cond_1e
    const/4 v1, 0x0

    goto :goto_1d
.end method

.method private readInstalledPrintServicesLocked()Z
    .registers 18

    .prologue
    .line 641
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 643
    .local v12, "tempPrintServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/printservice/PrintServiceInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mQueryIntent:Landroid/content/Intent;

    const/16 v15, 0x84

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/print/UserState;->mUserId:I

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 647
    .local v6, "installedServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 648
    .local v4, "installedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v1, v4

    .local v1, "count":I
    :goto_23
    if-ge v2, v1, :cond_7b

    .line 649
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 650
    .local v5, "installedService":Landroid/content/pm/ResolveInfo;
    const-string v13, "android.permission.BIND_PRINT_SERVICE"

    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6f

    .line 652
    new-instance v10, Landroid/content/ComponentName;

    iget-object v13, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .local v10, "serviceName":Landroid/content/ComponentName;
    const-string v13, "UserState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipping print service "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " since it does not require permission "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "android.permission.BIND_PRINT_SERVICE"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v10    # "serviceName":Landroid/content/ComponentName;
    :goto_6c
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 661
    :cond_6f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-static {v5, v13}, Landroid/printservice/PrintServiceInfo;->create(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Landroid/printservice/PrintServiceInfo;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6c

    .line 664
    .end local v5    # "installedService":Landroid/content/pm/ResolveInfo;
    :cond_7b
    const/4 v11, 0x0

    .line 666
    .local v11, "someServiceChanged":Z
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    if-eq v13, v14, :cond_9d

    .line 667
    const/4 v11, 0x1

    .line 690
    :cond_8b
    :goto_8b
    if-eqz v11, :cond_ef

    .line 691
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 692
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 693
    const/4 v13, 0x1

    .line 696
    :goto_9c
    return v13

    .line 669
    :cond_9d
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_a1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/printservice/PrintServiceInfo;

    .line 670
    .local v7, "newService":Landroid/printservice/PrintServiceInfo;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 671
    .local v9, "oldServiceIndex":I
    if-gez v9, :cond_b9

    .line 672
    const/4 v11, 0x1

    .line 673
    goto :goto_8b

    .line 677
    :cond_b9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/printservice/PrintServiceInfo;

    .line 678
    .local v8, "oldService":Landroid/printservice/PrintServiceInfo;
    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_ed

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_ed

    invoke-virtual {v8}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a1

    .line 684
    :cond_ed
    const/4 v11, 0x1

    .line 685
    goto :goto_8b

    .line 696
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "newService":Landroid/printservice/PrintServiceInfo;
    .end local v8    # "oldService":Landroid/printservice/PrintServiceInfo;
    .end local v9    # "oldServiceIndex":I
    :cond_ef
    const/4 v13, 0x0

    goto :goto_9c
.end method

.method private readPrintServicesFromSettingLocked(Ljava/lang/String;Ljava/util/Set;)V
    .registers 9
    .param p1, "setting"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 713
    .local p2, "outServiceNames":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget v5, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v4, p1, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "settingValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_31

    .line 716
    iget-object v2, p0, Lcom/android/server/print/UserState;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 717
    .local v2, "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 718
    :cond_17
    :goto_17
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 719
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "string":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 723
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 724
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_17

    .line 725
    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 729
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "splitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "string":Ljava/lang/String;
    :cond_31
    return-void
.end method

.method private removeServiceLocked(Lcom/android/server/print/RemotePrintService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 840
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 842
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v0, :cond_11

    .line 843
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceRemovedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 848
    :goto_10
    return-void

    .line 846
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_10
.end method

.method private throwIfDestroyedLocked()V
    .registers 3

    .prologue
    .line 886
    iget-boolean v0, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    if-eqz v0, :cond_c

    .line 887
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot interact with a destroyed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :cond_c
    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;
    .param p2, "appId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 454
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v0, :cond_11

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 458
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    new-instance v2, Lcom/android/server/print/UserState$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/print/UserState$3;-><init>(Lcom/android/server/print/UserState;Landroid/print/IPrintJobStateChangeListener;I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    monitor-exit v1

    .line 466
    return-void

    .line 465
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;I)V
    .registers 10
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    .line 275
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v1

    .line 276
    .local v1, "printJobInfo":Landroid/print/PrintJobInfo;
    if-nez v1, :cond_9

    .line 298
    :cond_8
    :goto_8
    return-void

    .line 281
    :cond_9
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobCancelling(Landroid/print/PrintJobId;Z)V

    .line 283
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_36

    .line 284
    invoke-virtual {v1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v4

    invoke-virtual {v4}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v3

    .line 285
    .local v3, "printServiceName":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 286
    .local v2, "printService":Lcom/android/server/print/RemotePrintService;
    iget-object v5, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 287
    :try_start_22
    iget-object v4, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    move-object v2, v0

    .line 288
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_33

    .line 289
    if-eqz v2, :cond_8

    .line 292
    invoke-virtual {v2, v1}, Lcom/android/server/print/RemotePrintService;->onRequestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    goto :goto_8

    .line 288
    :catchall_33
    move-exception v4

    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v4

    .line 296
    .end local v2    # "printService":Lcom/android/server/print/RemotePrintService;
    .end local v3    # "printServiceName":Landroid/content/ComponentName;
    :cond_36
    iget-object v4, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_8
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 336
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 337
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 338
    monitor-exit v1

    .line 355
    :goto_f
    return-void

    .line 340
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_27

    .line 342
    new-instance v0, Lcom/android/server/print/UserState$2;

    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/print/UserState$2;-><init>(Lcom/android/server/print/UserState;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 349
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 354
    :goto_22
    monitor-exit v1

    goto :goto_f

    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0

    .line 352
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->addObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_24

    goto :goto_22
.end method

.method public destroyLocked()V
    .registers 4

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 563
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v2}, Lcom/android/server/print/RemotePrintSpooler;->destroy()V

    .line 564
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 565
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    invoke-virtual {v1}, Lcom/android/server/print/RemotePrintService;->destroy()V

    goto :goto_12

    .line 567
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_22
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 568
    iget-object v2, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 569
    iget-object v2, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 570
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v2, :cond_3d

    .line 571
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->destroyLocked()V

    .line 572
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    .line 574
    :cond_3d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/print/UserState;->mDestroyed:Z

    .line 575
    return-void
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_9

    .line 361
    monitor-exit v1

    .line 366
    :goto_8
    return-void

    .line 364
    :cond_9
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->removeObserverLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 365
    monitor-exit v1

    goto :goto_8

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 20
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;

    .prologue
    .line 578
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "user state "

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 579
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 581
    const-string v13, "  "

    .line 583
    .local v13, "tab":Ljava/lang/String;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "installed services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 584
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v10

    .line 585
    .local v10, "installedServiceCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3b
    if-ge v7, v10, :cond_f0

    .line 586
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/printservice/PrintServiceInfo;

    .line 587
    .local v9, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 588
    .local v11, "installedServicePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "service:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 589
    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 590
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v14, v14, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v15, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v14, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    .local v4, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "componentName="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 595
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "settingsActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 597
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "addPrintersActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAddPrintersActivityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 599
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "avancedOptionsActivity="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v9}, Landroid/printservice/PrintServiceInfo;->getAdvancedOptionsActivityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 585
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3b

    .line 603
    .end local v4    # "componentName":Landroid/content/ComponentName;
    .end local v9    # "installedService":Landroid/printservice/PrintServiceInfo;
    .end local v11    # "installedServicePrefix":Ljava/lang/String;
    .end local v12    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_f0
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "enabled services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_109
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_157

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 605
    .local v5, "enabledService":Landroid/content/ComponentName;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 606
    .local v6, "enabledServicePrefix":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "service:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 607
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "componentName="

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 609
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto :goto_109

    .line 612
    .end local v5    # "enabledService":Landroid/content/ComponentName;
    .end local v6    # "enabledServicePrefix":Ljava/lang/String;
    :cond_157
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "active services:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 613
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 614
    .local v3, "activeServiceCount":I
    const/4 v7, 0x0

    :goto_171
    if-ge v7, v3, :cond_19f

    .line 615
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v14, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/print/RemotePrintService;

    .line 616
    .local v2, "activeService":Lcom/android/server/print/RemotePrintService;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v14}, Lcom/android/server/print/RemotePrintService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 617
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 614
    add-int/lit8 v7, v7, 0x1

    goto :goto_171

    .line 620
    .end local v2    # "activeService":Lcom/android/server/print/RemotePrintService;
    :cond_19f
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "cached print jobs:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 621
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrintJobForAppCache;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string v15, "discovery mediator:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 624
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-eqz v14, :cond_207

    .line 625
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v15}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 628
    :cond_207
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    const-string/jumbo v15, "print spooler:"

    invoke-virtual {v14, v15}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/PrintWriter;->println()V

    .line 629
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/server/print/RemotePrintSpooler;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 630
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 631
    return-void
.end method

.method public getEnabledPrintServices()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v7, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :try_start_4
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_43

    move-result v5

    .line 312
    .local v5, "installedServiceCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    move-object v2, v1

    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .local v2, "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_c
    if-ge v3, v5, :cond_41

    .line 313
    :try_start_e
    iget-object v6, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/printservice/PrintServiceInfo;

    .line 314
    .local v4, "installedService":Landroid/printservice/PrintServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 318
    if-nez v2, :cond_49

    .line 319
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_46

    .line 321
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :goto_3a
    :try_start_3a
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_43

    .line 312
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    move-object v2, v1

    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_c

    .line 324
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "installedService":Landroid/printservice/PrintServiceInfo;
    :cond_41
    :try_start_41
    monitor-exit v7
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_46

    return-object v2

    .line 325
    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .end local v3    # "i":I
    .end local v5    # "installedServiceCount":I
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :catchall_43
    move-exception v6

    :goto_44
    :try_start_44
    monitor-exit v7
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v6

    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v3    # "i":I
    .restart local v5    # "installedServiceCount":I
    :catchall_46
    move-exception v6

    move-object v1, v2

    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_44

    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v0    # "componentName":Landroid/content/ComponentName;
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v4    # "installedService":Landroid/printservice/PrintServiceInfo;
    :cond_49
    move-object v1, v2

    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_3a

    .end local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    :cond_4b
    move-object v1, v2

    .end local v2    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    .restart local v1    # "enabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/PrintServiceInfo;>;"
    goto :goto_3d
.end method

.method public getEnabledServices()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 555
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 556
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 557
    iget-object v0, p0, Lcom/android/server/print/UserState;->mEnabledServices:Ljava/util/Set;

    monitor-exit v1

    return-object v0

    .line 558
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getInstalledPrintServices()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 329
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_3
    iget-object v0, p0, Lcom/android/server/print/UserState;->mInstalledServices:Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 331
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .registers 6
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v1, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 262
    .local v0, "printJob":Landroid/print/PrintJobInfo;
    if-nez v0, :cond_f

    .line 263
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 265
    :cond_f
    if-eqz v0, :cond_17

    .line 268
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0, v2}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 271
    :cond_17
    return-object v0
.end method

.method public getPrintJobInfos(I)Ljava/util/List;
    .registers 13
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 221
    iget-object v8, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v8, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->getPrintJobs(I)Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "cachedPrintJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 232
    .local v7, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/print/PrintJobId;Landroid/print/PrintJobInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 233
    .local v1, "cachedPrintJobCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v1, :cond_29

    .line 234
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 235
    .local v0, "cachedPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 233
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 243
    .end local v0    # "cachedPrintJob":Landroid/print/PrintJobInfo;
    :cond_29
    iget-object v8, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v9, -0x1

    invoke-virtual {v8, v10, v9, p1}, Lcom/android/server/print/RemotePrintSpooler;->getPrintJobInfos(Landroid/content/ComponentName;II)Ljava/util/List;

    move-result-object v6

    .line 245
    .local v6, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v6, :cond_4f

    .line 246
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 247
    .local v5, "printJobCount":I
    const/4 v3, 0x0

    :goto_37
    if-ge v3, v5, :cond_4f

    .line 248
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 249
    .local v4, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setTag(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v4, v10}, Landroid/print/PrintJobInfo;->setAdvancedOptions(Landroid/os/Bundle;)V

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 257
    .end local v4    # "printJob":Landroid/print/PrintJobInfo;
    .end local v5    # "printJobCount":I
    :cond_4f
    new-instance v8, Ljava/util/ArrayList;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "printService"    # Landroid/content/ComponentName;

    .prologue
    .line 155
    iget-object v2, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 156
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 157
    iget-object v1, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/print/RemotePrintService;

    .line 158
    .local v0, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_15

    .line 159
    if-eqz v0, :cond_14

    .line 160
    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 162
    :cond_14
    return-void

    .line 158
    .end local v0    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 9
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 138
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 139
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getPrinterId()Landroid/print/PrinterId;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrinterId;->getServiceName()Landroid/content/ComponentName;

    move-result-object v0

    .line 140
    .local v0, "printServiceName":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/RemotePrintService;

    .line 141
    .local v1, "service":Lcom/android/server/print/RemotePrintService;
    monitor-exit v3
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1d

    .line 142
    if-eqz v1, :cond_20

    .line 143
    invoke-virtual {v1, p1}, Lcom/android/server/print/RemotePrintService;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 150
    :goto_1c
    return-void

    .line 141
    .end local v0    # "printServiceName":Landroid/content/ComponentName;
    .end local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :catchall_1d
    move-exception v2

    :try_start_1e
    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v2

    .line 147
    .restart local v0    # "printServiceName":Landroid/content/ComponentName;
    .restart local v1    # "service":Lcom/android/server/print/RemotePrintService;
    :cond_20
    iget-object v2, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const v6, 0x1040669

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_1c
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 7
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/print/UserState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 494
    return-void
.end method

.method public onPrintersAdded(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "printers":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterInfo;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 501
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 502
    monitor-exit v1

    .line 510
    :goto_f
    return-void

    .line 505
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 506
    monitor-exit v1

    goto :goto_f

    .line 509
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 508
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersAddedLocked(Ljava/util/List;)V

    .line 509
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method

.method public onPrintersRemoved(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 514
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 517
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 518
    monitor-exit v1

    .line 526
    :goto_f
    return-void

    .line 521
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 522
    monitor-exit v1

    goto :goto_f

    .line 525
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 524
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onPrintersRemovedLocked(Ljava/util/List;)V

    .line 525
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method

.method public onServiceDied(Lcom/android/server/print/RemotePrintService;)V
    .registers 4
    .param p1, "service"    # Lcom/android/server/print/RemotePrintService;

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 533
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 534
    monitor-exit v1

    .line 545
    :goto_f
    return-void

    .line 537
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/print/UserState;->failActivePrintJobsForService(Landroid/content/ComponentName;)V

    .line 538
    invoke-virtual {p1}, Lcom/android/server/print/RemotePrintService;->onAllPrintJobsHandled()V

    .line 540
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_23

    .line 541
    monitor-exit v1

    goto :goto_f

    .line 544
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0

    .line 543
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->onServiceDiedLocked(Lcom/android/server/print/RemotePrintService;)V

    .line 544
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_23 .. :try_end_29} :catchall_20

    goto :goto_f
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 20
    .param p1, "printJobName"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/print/IPrintDocumentAdapter;
    .param p3, "attributes"    # Landroid/print/PrintAttributes;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "appId"    # I

    .prologue
    .line 172
    new-instance v11, Landroid/print/PrintJobInfo;

    invoke-direct {v11}, Landroid/print/PrintJobInfo;-><init>()V

    .line 173
    .local v11, "printJob":Landroid/print/PrintJobInfo;
    new-instance v2, Landroid/print/PrintJobId;

    invoke-direct {v2}, Landroid/print/PrintJobId;-><init>()V

    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setId(Landroid/print/PrintJobId;)V

    .line 174
    move/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAppId(I)V

    .line 175
    invoke-virtual {v11, p1}, Landroid/print/PrintJobInfo;->setLabel(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/print/PrintJobInfo;->setAttributes(Landroid/print/PrintAttributes;)V

    .line 177
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setState(I)V

    .line 178
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/print/PrintJobInfo;->setCopies(I)V

    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v11, v2, v3}, Landroid/print/PrintJobInfo;->setCreationTime(J)V

    .line 182
    iget-object v2, p0, Lcom/android/server/print/UserState;->mPrintJobForAppCache:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-interface/range {p2 .. p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v2, v3, v0, v11}, Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z

    move-result v2

    if-nez v2, :cond_39

    .line 185
    const/4 v12, 0x0

    .line 216
    :goto_38
    return-object v12

    .line 189
    :cond_39
    new-instance v3, Lcom/android/server/print/UserState$1;

    invoke-direct {v3, p0, v11}, Lcom/android/server/print/UserState$1;-><init>(Lcom/android/server/print/UserState;Landroid/print/PrintJobInfo;)V

    sget-object v5, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v5, v2}, Lcom/android/server/print/UserState$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 197
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 199
    .local v8, "identity":J
    :try_start_4a
    new-instance v4, Landroid/content/Intent;

    const-string v2, "android.print.PRINT_DIALOG"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 200
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "printjob"

    invoke-virtual {v11}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v2, v3, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 201
    const-string v2, "android.print.intent.extra.EXTRA_PRINT_DOCUMENT_ADAPTER"

    invoke-interface/range {p2 .. p2}, Landroid/print/IPrintDocumentAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 202
    const-string v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v4, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 203
    const-string v2, "android.content.extra.PACKAGE_NAME"

    move-object/from16 v0, p4

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    iget-object v2, p0, Lcom/android/server/print/UserState;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x50000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    iget v13, p0, Lcom/android/server/print/UserState;->mUserId:I

    invoke-direct {v7, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v10

    .line 210
    .local v10, "intentSender":Landroid/content/IntentSender;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 211
    .local v12, "result":Landroid/os/Bundle;
    const-string v2, "android.print.intent.extra.EXTRA_PRINT_JOB"

    invoke-virtual {v12, v2, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 212
    const-string v2, "android.print.intent.extra.EXTRA_PRINT_DIALOG_INTENT"

    invoke-virtual {v12, v2, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_9d
    .catchall {:try_start_4a .. :try_end_9d} :catchall_a1

    .line 216
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v10    # "intentSender":Landroid/content/IntentSender;
    .end local v12    # "result":Landroid/os/Bundle;
    :catchall_a1
    move-exception v2

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeObsoletePrintJobs()V
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    invoke-virtual {v0}, Lcom/android/server/print/RemotePrintSpooler;->removeObsoletePrintJobs()V

    .line 166
    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    .registers 8
    .param p1, "listener"    # Landroid/print/IPrintJobStateChangeListener;

    .prologue
    .line 469
    iget-object v4, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 470
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 471
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    if-nez v3, :cond_c

    .line 472
    monitor-exit v4

    .line 487
    :goto_b
    return-void

    .line 474
    :cond_c
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 475
    .local v2, "recordCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v2, :cond_32

    .line 476
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;

    .line 478
    .local v1, "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    iget-object v3, v1, Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;->listener:Landroid/print/IPrintJobStateChangeListener;

    invoke-interface {v3}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/print/IPrintJobStateChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 479
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 483
    .end local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    :cond_32
    iget-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 484
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/print/UserState;->mPrintJobStateChangeListenerRecords:Ljava/util/List;

    .line 486
    :cond_3d
    monitor-exit v4

    goto :goto_b

    .end local v0    # "i":I
    .end local v2    # "recordCount":I
    :catchall_3f
    move-exception v3

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_3f

    throw v3

    .line 475
    .restart local v0    # "i":I
    .restart local v1    # "record":Lcom/android/server/print/UserState$PrintJobStateChangeListenerRecord;
    .restart local v2    # "recordCount":I
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;I)V
    .registers 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object v0

    .line 302
    .local v0, "printJobInfo":Landroid/print/PrintJobInfo;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_e

    .line 306
    :cond_d
    :goto_d
    return-void

    .line 305
    :cond_e
    iget-object v1, p0, Lcom/android/server/print/UserState;->mSpooler:Lcom/android/server/print/RemotePrintSpooler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/print/RemotePrintSpooler;->setPrintJobState(Landroid/print/PrintJobId;ILjava/lang/String;)Z

    goto :goto_d
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    .registers 5
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p2, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 373
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 374
    monitor-exit v1

    .line 384
    :goto_f
    return-void

    .line 377
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 378
    monitor-exit v1

    goto :goto_f

    .line 383
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 381
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V

    .line 383
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 419
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 422
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 423
    monitor-exit v1

    .line 432
    :goto_f
    return-void

    .line 426
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 427
    monitor-exit v1

    goto :goto_f

    .line 431
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 430
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->startPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 431
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    .registers 4
    .param p1, "observer"    # Landroid/print/IPrinterDiscoveryObserver;

    .prologue
    .line 387
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 390
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 391
    monitor-exit v1

    .line 400
    :goto_f
    return-void

    .line 394
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 395
    monitor-exit v1

    goto :goto_f

    .line 399
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 398
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterDiscoveryLocked(Landroid/print/IPrinterDiscoveryObserver;)V

    .line 399
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;)V
    .registers 4
    .param p1, "printerId"    # Landroid/print/PrinterId;

    .prologue
    .line 435
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 438
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 439
    monitor-exit v1

    .line 448
    :goto_f
    return-void

    .line 442
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 443
    monitor-exit v1

    goto :goto_f

    .line 447
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 446
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->stopPrinterStateTrackingLocked(Landroid/print/PrinterId;)V

    .line 447
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method

.method public updateIfNeededLocked()V
    .registers 2

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 549
    invoke-direct {p0}, Lcom/android/server/print/UserState;->readConfigurationLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 550
    invoke-direct {p0}, Lcom/android/server/print/UserState;->onConfigurationChangedLocked()V

    .line 552
    :cond_c
    return-void
.end method

.method public validatePrinters(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrinterId;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 403
    .local p1, "printerIds":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    iget-object v1, p0, Lcom/android/server/print/UserState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 404
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/print/UserState;->throwIfDestroyedLocked()V

    .line 406
    iget-object v0, p0, Lcom/android/server/print/UserState;->mActiveServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 407
    monitor-exit v1

    .line 416
    :goto_f
    return-void

    .line 410
    :cond_10
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    if-nez v0, :cond_19

    .line 411
    monitor-exit v1

    goto :goto_f

    .line 415
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0

    .line 414
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/UserState;->mPrinterDiscoverySession:Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    invoke-virtual {v0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;->validatePrintersLocked(Ljava/util/List;)V

    .line 415
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_19 .. :try_end_1f} :catchall_16

    goto :goto_f
.end method
