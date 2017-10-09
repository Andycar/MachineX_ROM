.class Lcom/android/server/LpnetManagerService$2$1;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$2;

.field final synthetic val$isReInstall:Z

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$varAction:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$2;Landroid/net/Uri;Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 688
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iput-object p2, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/LpnetManagerService$2$1;->val$isReInstall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 691
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    if-eqz v9, :cond_9e

    .line 692
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$uri:Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    .line 693
    .local v5, "pkgName":Ljava/lang/String;
    if-eqz v5, :cond_9e

    .line 694
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c3

    .line 695
    iget-boolean v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$isReInstall:Z

    if-nez v9, :cond_9e

    .line 697
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 698
    :try_start_23
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 699
    monitor-exit v10
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_9f

    .line 700
    const-wide/16 v6, 0x0

    .line 702
    .local v6, "rowsDeleted":J
    :try_start_31
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    if-nez v9, :cond_53

    .line 703
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    new-instance v10, Lcom/android/server/LpnetManagerService$DBManager;

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v12, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v12, v12, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lcom/android/server/LpnetManagerService$DBManager;-><init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V

    # setter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9, v10}, Lcom/android/server/LpnetManagerService;->access$402(Lcom/android/server/LpnetManagerService;Lcom/android/server/LpnetManagerService$DBManager;)Lcom/android/server/LpnetManagerService$DBManager;

    .line 706
    :cond_53
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    if-eqz v9, :cond_7f

    .line 707
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/LpnetManagerService$DBManager;->dbOpen()V

    .line 708
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/server/LpnetManagerService$DBManager;->dbDelete(Ljava/lang/String;)J

    move-result-wide v6

    .line 709
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDBMgr:Lcom/android/server/LpnetManagerService$DBManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$400(Lcom/android/server/LpnetManagerService;)Lcom/android/server/LpnetManagerService$DBManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/LpnetManagerService$DBManager;->dbClose()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_7f} :catch_a2

    .line 715
    :cond_7f
    :goto_7f
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v9

    if-eqz v9, :cond_9e

    const-string v9, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "rowsDeleted : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "rowsDeleted":J
    :cond_9e
    :goto_9e
    return-void

    .line 699
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catchall_9f
    move-exception v9

    :try_start_a0
    monitor-exit v10
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    throw v9

    .line 711
    .restart local v6    # "rowsDeleted":J
    :catch_a2
    move-exception v3

    .line 712
    .local v3, "e":Ljava/lang/Exception;
    const-string v9, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Exception on handling DB : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7f

    .line 717
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "rowsDeleted":J
    :cond_c3
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->val$varAction:Ljava/lang/String;

    const-string v10, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12a

    .line 718
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mScreenOn:Z
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$600(Lcom/android/server/LpnetManagerService;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 719
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f3

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_fe

    .line 720
    :cond_f3
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 722
    :cond_fe
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v9

    if-eqz v9, :cond_9e

    const-string v9, "LpnetManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mUserFSPackages : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v11, v11, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mUserFSPackages:Ljava/util/HashSet;
    invoke-static {v11}, Lcom/android/server/LpnetManagerService;->access$900(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9e

    .line 728
    :cond_12a
    const/4 v4, 0x0

    .line 729
    .local v4, "otherPkgs":Z
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 730
    :try_start_134
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_150

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_151

    :cond_150
    const/4 v4, 0x1

    .line 731
    :cond_151
    monitor-exit v10
    :try_end_152
    .catchall {:try_start_134 .. :try_end_152} :catchall_1d1

    .line 732
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    if-eqz v9, :cond_9e

    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_16c

    if-eqz v4, :cond_9e

    .line 733
    :cond_16c
    const/4 v1, 0x0

    .line 735
    .local v1, "appStatus":Z
    :try_start_16d
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v5, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 736
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_17c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16d .. :try_end_17c} :catch_20b

    .line 740
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :goto_17c
    if-eqz v1, :cond_1f1

    .line 742
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9e

    .line 747
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isPackageVersionMatching(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Lcom/android/server/LpnetManagerService;->access$1300(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v8

    .line 748
    .local v8, "versionMatch":Z
    if-nez v8, :cond_1ab

    .line 750
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 751
    :try_start_19f
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 752
    monitor-exit v10
    :try_end_1ab
    .catchall {:try_start_19f .. :try_end_1ab} :catchall_1d4

    .line 755
    :cond_1ab
    if-eqz v8, :cond_9e

    .line 756
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isC2DMPermAvl(Ljava/lang/String;)Z
    invoke-static {v9, v5}, Lcom/android/server/LpnetManagerService;->access$1400(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    .line 757
    .local v2, "c2dmPermExists":Z
    if-nez v2, :cond_1d7

    .line 759
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 760
    :try_start_1c0
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 761
    monitor-exit v10

    goto/16 :goto_9e

    :catchall_1ce
    move-exception v9

    monitor-exit v10
    :try_end_1d0
    .catchall {:try_start_1c0 .. :try_end_1d0} :catchall_1ce

    throw v9

    .line 731
    .end local v1    # "appStatus":Z
    .end local v2    # "c2dmPermExists":Z
    .end local v8    # "versionMatch":Z
    :catchall_1d1
    move-exception v9

    :try_start_1d2
    monitor-exit v10
    :try_end_1d3
    .catchall {:try_start_1d2 .. :try_end_1d3} :catchall_1d1

    throw v9

    .line 752
    .restart local v1    # "appStatus":Z
    .restart local v8    # "versionMatch":Z
    :catchall_1d4
    move-exception v9

    :try_start_1d5
    monitor-exit v10
    :try_end_1d6
    .catchall {:try_start_1d5 .. :try_end_1d6} :catchall_1d4

    throw v9

    .line 764
    .restart local v2    # "c2dmPermExists":Z
    :cond_1d7
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 765
    :try_start_1e0
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 766
    monitor-exit v10

    goto/16 :goto_9e

    :catchall_1ee
    move-exception v9

    monitor-exit v10
    :try_end_1f0
    .catchall {:try_start_1e0 .. :try_end_1f0} :catchall_1ee

    throw v9

    .line 772
    .end local v2    # "c2dmPermExists":Z
    .end local v8    # "versionMatch":Z
    :cond_1f1
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPkgLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$200(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10

    .line 773
    :try_start_1fa
    iget-object v9, p0, Lcom/android/server/LpnetManagerService$2$1;->this$1:Lcom/android/server/LpnetManagerService$2;

    iget-object v9, v9, Lcom/android/server/LpnetManagerService$2;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTargetPackages:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LpnetManagerService;->access$300(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 774
    monitor-exit v10

    goto/16 :goto_9e

    :catchall_208
    move-exception v9

    monitor-exit v10
    :try_end_20a
    .catchall {:try_start_1fa .. :try_end_20a} :catchall_208

    throw v9

    .line 737
    :catch_20b
    move-exception v9

    goto/16 :goto_17c
.end method
