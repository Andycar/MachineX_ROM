.class Lcom/android/server/enterprise/utils/PackageDownloader$2;
.super Landroid/content/pm/IPackageInstallObserver$Stub;
.source "PackageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/utils/PackageDownloader;->installPackage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/utils/PackageDownloader;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/utils/PackageDownloader;)V
    .registers 2

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageInstalled(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    .line 277
    monitor-enter p0

    .line 278
    const/4 v0, 0x1

    if-ne p2, v0, :cond_40

    .line 279
    :try_start_4
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 280
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10407ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    .line 286
    :cond_1c
    :goto_1c
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # invokes: Lcom/android/server/enterprise/utils/PackageDownloader;->postDownload(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$500(Lcom/android/server/enterprise/utils/PackageDownloader;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 289
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mDownloadQueueIdMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$000(Lcom/android/server/enterprise/utils/PackageDownloader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_3e
    monitor-exit p0

    .line 291
    return-void

    .line 282
    :cond_40
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 283
    iget-object v0, p0, Lcom/android/server/enterprise/utils/PackageDownloader$2;->this$0:Lcom/android/server/enterprise/utils/PackageDownloader;

    # getter for: Lcom/android/server/enterprise/utils/PackageDownloader;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/utils/PackageDownloader;->access$400(Lcom/android/server/enterprise/utils/PackageDownloader;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10407ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(Ljava/lang/String;)V

    goto :goto_1c

    .line 290
    :catchall_59
    move-exception v0

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_4 .. :try_end_5b} :catchall_59

    throw v0
.end method
