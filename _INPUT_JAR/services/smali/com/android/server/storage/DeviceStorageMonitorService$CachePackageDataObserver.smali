.class Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CachePackageDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method private constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;Lcom/android/server/storage/DeviceStorageMonitorService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/storage/DeviceStorageMonitorService;
    .param p2, "x1"    # Lcom/android/server/storage/DeviceStorageMonitorService$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iput-boolean p2, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearSucceeded:Z

    .line 156
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iput-boolean v1, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mClearingCache:Z

    .line 159
    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService$CachePackageDataObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    .line 160
    return-void
.end method
