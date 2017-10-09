.class Lcom/android/server/LpnetManagerService$5$3;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/LpnetManagerService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/LpnetManagerService$5;


# direct methods
.method constructor <init>(Lcom/android/server/LpnetManagerService$5;)V
    .registers 2

    .prologue
    .line 878
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 21

    .prologue
    .line 881
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 882
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 883
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_b .. :try_end_19} :catchall_12e

    .line 885
    :try_start_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    iget-boolean v2, v2, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v2, :cond_11e

    .line 886
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$3600(Lcom/android/server/LpnetManagerService;)Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v15

    .line 887
    .local v15, "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v15, :cond_11e

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLRUTrafficMapLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2300(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_3e} :catch_f3

    .line 889
    :try_start_3e
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_42
    :goto_42
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_138

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 890
    .local v17, "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v8, 0x0

    .line 891
    .local v8, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v16, 0x0

    .line 892
    .local v16, "targetPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoRunBasedFreeze:Z
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$3700(Lcom/android/server/LpnetManagerService;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 893
    move-object/from16 v0, v17

    iget-object v9, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v9, "arr$":[Ljava/lang/String;
    array-length v13, v9

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_63
    if-ge v12, v13, :cond_75

    aget-object v14, v9, v12

    .line 894
    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->isAutoRunBlockedPackage(Ljava/lang/String;)Z
    invoke-static {v2, v14}, Lcom/android/server/LpnetManagerService;->access$3800(Lcom/android/server/LpnetManagerService;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_131

    .line 895
    move-object/from16 v16, v14

    .line 900
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "pkg":Ljava/lang/String;
    :cond_75
    if-nez v16, :cond_7d

    .line 901
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v16, v0
    :try_end_7d
    .catchall {:try_start_3e .. :try_end_7d} :catchall_f0

    .line 904
    :cond_7d
    :try_start_7d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_8d} :catch_135
    .catchall {:try_start_7d .. :try_end_8d} :catchall_f0

    move-result-object v8

    .line 909
    if-eqz v8, :cond_42

    .line 911
    :try_start_90
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-eq v2, v4, :cond_42

    .line 912
    iget v2, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v18

    .line 913
    .local v18, "txbytestime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_42

    .line 914
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap_LRU:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$2400(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v2

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_42

    const-string v2, "LpnetManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NETWORK_STAT_LRU :: mTrafficStatMap_LRU put name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",txbytestime:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_42

    .line 919
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v18    # "txbytestime":J
    :catchall_f0
    move-exception v2

    monitor-exit v3
    :try_end_f2
    .catchall {:try_start_90 .. :try_end_f2} :catchall_f0

    :try_start_f2
    throw v2
    :try_end_f3
    .catch Landroid/os/RemoteException; {:try_start_f2 .. :try_end_f3} :catch_f3

    .line 922
    .end local v15    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_f3
    move-exception v10

    .line 923
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "LpnetManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in NETWORK_STAT_LRU Cause is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Msg is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_11e
    :goto_11e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LpnetManagerService$5$3;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v3, "ACTION_TRIGGER_UNUSED_APP_LRU "

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v2 .. v7}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 928
    return-void

    .line 883
    :catchall_12e
    move-exception v2

    :try_start_12f
    monitor-exit v3
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_12e

    throw v2

    .line 893
    .restart local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "arr$":[Ljava/lang/String;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v15    # "runningApps":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v16    # "targetPackage":Ljava/lang/String;
    .restart local v17    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_131
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_63

    .line 905
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v14    # "pkg":Ljava/lang/String;
    :catch_135
    move-exception v10

    .line 907
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_42

    .line 919
    .end local v8    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v16    # "targetPackage":Ljava/lang/String;
    .end local v17    # "theApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_138
    :try_start_138
    monitor-exit v3
    :try_end_139
    .catchall {:try_start_138 .. :try_end_139} :catchall_f0

    goto :goto_11e
.end method
