.class Lcom/android/server/LpnetManagerService$5$2;
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
    .line 848
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 853
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 854
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mInactivityRepeatTime:J
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$3300(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->screenOffAction(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/LpnetManagerService;->access$2000(Lcom/android/server/LpnetManagerService;J)V

    .line 873
    :goto_1d
    return-void

    .line 856
    :cond_1e
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    iget-boolean v0, v0, Lcom/android/server/LpnetManagerService;->mDataConnectionIsConnected:Z

    if-eqz v0, :cond_90

    .line 857
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mIdleTrafficMapLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3400(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 858
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mNotForceStoppedPackages:Ljava/util/HashSet;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3b
    :goto_3b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_8c

    .line 860
    .local v9, "theApp":Ljava/lang/String;
    :try_start_47
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$1100(Lcom/android/server/LpnetManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v9, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 861
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_3b

    .line 862
    iget v0, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    .line 863
    .local v10, "txbytestime":J
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mTrafficStatMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$3500(Lcom/android/server/LpnetManagerService;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_6b} :catch_6c
    .catchall {:try_start_47 .. :try_end_6b} :catchall_8c

    goto :goto_3b

    .line 865
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "txbytestime":J
    :catch_6c
    move-exception v7

    .line 866
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_6d
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "LpnetManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 869
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "theApp":Ljava/lang/String;
    :catchall_8c
    move-exception v0

    monitor-exit v1
    :try_end_8e
    .catchall {:try_start_6d .. :try_end_8e} :catchall_8c

    throw v0

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_8f
    :try_start_8f
    monitor-exit v1
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8c

    .line 871
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_90
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$2;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "ACTION_TRIGGER_IDLE"

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x0

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    goto :goto_1d
.end method
