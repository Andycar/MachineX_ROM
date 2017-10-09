.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageInstallObserver2"
.end annotation


# instance fields
.field finished:Z

.field pkgName:Ljava/lang/String;

.field result:I

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 3

    .prologue
    .line 1866
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    .line 1868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    .prologue
    .line 1866
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1873
    monitor-enter p0

    .line 1874
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->finished:Z

    .line 1875
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->pkgName:Ljava/lang/String;

    .line 1876
    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageInstallObserver2;->result:I

    .line 1877
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1878
    monitor-exit p0

    .line 1879
    return-void

    .line 1878
    :catchall_d
    move-exception v0

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_d

    throw v0
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1883
    return-void
.end method
