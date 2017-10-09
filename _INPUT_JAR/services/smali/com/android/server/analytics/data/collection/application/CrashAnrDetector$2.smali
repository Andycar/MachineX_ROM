.class Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;
.super Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;
.source "CrashAnrDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/adapterlayer/PackageManagerAdapter$MyPackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 113
    const-string v0, "CrashAnrDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageAdded : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    # invokes: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    .line 115
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 118
    const-string v0, "CrashAnrDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRemoved : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    # invokes: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    .line 120
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 123
    const-string v0, "CrashAnrDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$2;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    # invokes: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->updateAppInfoList()V
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$200(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V

    .line 125
    return-void
.end method
