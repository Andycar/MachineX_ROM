.class Lcom/android/server/am/ActivityManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .prologue
    .line 2751
    const-string v0, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 2752
    .local v8, "userId":I
    if-eqz p2, :cond_2e

    .line 2753
    move-object/from16 v10, p2

    .local v10, "arr$":[Ljava/lang/String;
    array-length v12, v10

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_d
    if-ge v11, v12, :cond_2e

    aget-object v1, v10, v11

    .line 2754
    .local v1, "pkg":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2755
    :try_start_14
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v9, "finished booting"

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v0 .. v9}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2757
    const/4 v0, 0x1

    monitor-exit v13

    .line 2762
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :goto_26
    return v0

    .line 2759
    .restart local v1    # "pkg":Ljava/lang/String;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "i$":I
    .restart local v12    # "len$":I
    :cond_27
    monitor-exit v13

    .line 2753
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 2759
    :catchall_2b
    move-exception v0

    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2b

    throw v0

    .line 2762
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    :cond_2e
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 2695
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityManagerService$3;->onPackageModified(Ljava/lang/String;)V

    .line 2696
    const/4 v0, 0x1

    return v0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2701
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityManagerService$3;->getChangingUserId()I

    move-result v4

    .line 2702
    .local v4, "eventUserId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 2703
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2705
    .local v9, "recentTaskIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Landroid/content/Intent;Ljava/lang/Integer;>;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 2706
    .local v2, "componentsKnownToExist":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2709
    .local v10, "tasksToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2710
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    .local v5, "i":I
    :goto_28
    if-ltz v5, :cond_51

    .line 2711
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;

    .line 2712
    .local v11, "tr":Lcom/android/server/am/TaskRecord;
    iget v12, v11, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v12, v4, :cond_3d

    .line 2710
    :goto_3a
    add-int/lit8 v5, v5, -0x1

    goto :goto_28

    .line 2714
    :cond_3d
    new-instance v12, Landroid/util/Pair;

    iget-object v14, v11, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    iget v15, v11, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v12, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 2716
    .end local v5    # "i":I
    .end local v11    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_4e
    move-exception v12

    monitor-exit v13
    :try_end_50
    .catchall {:try_start_1c .. :try_end_50} :catchall_4e

    throw v12

    .restart local v5    # "i":I
    :cond_51
    :try_start_51
    monitor-exit v13
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_4e

    .line 2718
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    :goto_58
    if-ltz v5, :cond_aa

    .line 2719
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    .line 2720
    .local v7, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Ljava/lang/Integer;>;"
    iget-object v12, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2721
    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7c

    .line 2722
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7f

    .line 2718
    :cond_7c
    :goto_7c
    add-int/lit8 v5, v5, -0x1

    goto :goto_58

    .line 2727
    :cond_7f
    const/4 v12, 0x0

    :try_start_80
    invoke-interface {v8, v1, v12, v4}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2728
    .local v6, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v6, :cond_a4

    .line 2729
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_89
    .catch Landroid/os/RemoteException; {:try_start_80 .. :try_end_89} :catch_8a

    goto :goto_7c

    .line 2733
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    :catch_8a
    move-exception v3

    .line 2734
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to query activity info for component: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7c

    .line 2731
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v6    # "info":Landroid/content/pm/ActivityInfo;
    :cond_a4
    :try_start_a4
    iget-object v12, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a9} :catch_8a

    goto :goto_7c

    .line 2739
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v6    # "info":Landroid/content/pm/ActivityInfo;
    .end local v7    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Intent;Ljava/lang/Integer;>;"
    :cond_aa
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    .line 2740
    :try_start_af
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v5, v12, -0x1

    :goto_b5
    if-ltz v5, :cond_cc

    .line 2743
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v15, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(II)Z
    invoke-static {v14, v12, v15}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;II)Z

    .line 2740
    add-int/lit8 v5, v5, -0x1

    goto :goto_b5

    .line 2745
    :cond_cc
    monitor-exit v13

    .line 2746
    return-void

    .line 2745
    :catchall_ce
    move-exception v12

    monitor-exit v13
    :try_end_d0
    .catchall {:try_start_af .. :try_end_d0} :catchall_ce

    throw v12
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 2678
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$3;->getChangingUserId()I

    move-result v1

    .line 2679
    .local v1, "eventUserId":I
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2680
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_42

    .line 2681
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    .line 2682
    .local v3, "tr":Lcom/android/server/am/TaskRecord;
    iget v4, v3, Lcom/android/server/am/TaskRecord;->userId:I

    if-eq v4, v1, :cond_24

    .line 2680
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 2684
    :cond_24
    iget-object v4, v3, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 2685
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2687
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$3;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v7, 0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->removeTaskByIdLocked(II)Z
    invoke-static {v4, v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$1100(Lcom/android/server/am/ActivityManagerService;II)Z

    goto :goto_21

    .line 2690
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "i":I
    .end local v3    # "tr":Lcom/android/server/am/TaskRecord;
    :catchall_3f
    move-exception v4

    monitor-exit v5
    :try_end_41
    .catchall {:try_start_7 .. :try_end_41} :catchall_3f

    throw v4

    .restart local v2    # "i":I
    :cond_42
    :try_start_42
    monitor-exit v5
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_3f

    .line 2691
    return-void
.end method
