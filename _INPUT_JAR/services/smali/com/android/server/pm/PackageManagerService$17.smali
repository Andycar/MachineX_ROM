.class Lcom/android/server/pm/PackageManagerService$17;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageMoveObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
    .registers 4

    .prologue
    .line 18611
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$17;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18620
    const-string v2, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install result for move: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18626
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3

    .line 18627
    :try_start_1f
    sget-object v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    .line 18628
    .local v0, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2e

    .line 18629
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/content/pm/PackageParser$Package;->mOperationPending:Z

    .line 18631
    :cond_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_1f .. :try_end_2f} :catchall_3f

    .line 18633
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    .line 18634
    .local v1, "status":I
    sparse-switch v1, :sswitch_data_54

    .line 18642
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    const/4 v4, -0x6

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    .line 18645
    :goto_3e
    return-void

    .line 18631
    .end local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v1    # "status":I
    :catchall_3f
    move-exception v2

    :try_start_40
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v2

    .line 18636
    .restart local v0    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v1    # "status":I
    :sswitch_42
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    goto :goto_3e

    .line 18639
    :sswitch_4b
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$17;->val$observer:Landroid/content/pm/IPackageMoveObserver;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$17;->val$packageName:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/pm/IPackageMoveObserver;->packageMoved(Ljava/lang/String;I)V

    goto :goto_3e

    .line 18634
    :sswitch_data_54
    .sparse-switch
        0x0 -> :sswitch_42
        0x6 -> :sswitch_4b
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18614
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
