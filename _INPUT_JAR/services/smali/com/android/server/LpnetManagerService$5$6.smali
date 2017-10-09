.class Lcom/android/server/LpnetManagerService$5$6;
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
    .line 952
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    .line 955
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "LpnetManagerService"

    const-string v1, "BootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_10
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mAutoFreezeEnabled:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2100(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 958
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mFreezeWithOwnLRU:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$2500(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 959
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "NETWORK_STAT_LRU"

    const-wide/32 v2, 0x1b6f70

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 965
    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDisableLRU:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$4000(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-nez v0, :cond_5c

    sget-boolean v0, Lcom/android/server/LpnetManagerService;->FEATURE_ENABLE_LPC:Z

    if-nez v0, :cond_5c

    .line 966
    # getter for: Lcom/android/server/LpnetManagerService;->APP_FREEZER_LOG:Z
    invoke-static {}, Lcom/android/server/LpnetManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "LpnetManagerService"

    const-string v1, "LRU schedule After boot complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    :cond_4b
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "LAST_USED"

    iget-object v2, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mLastUsedTimeCollectionInterval:J
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$4100(Lcom/android/server/LpnetManagerService;)J

    move-result-wide v2

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    .line 970
    :cond_5c
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->getWhiteListDBValues()V
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$4200(Lcom/android/server/LpnetManagerService;)V

    .line 971
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->getDBValues(Z)V
    invoke-static {v0, v6}, Lcom/android/server/LpnetManagerService;->access$4300(Lcom/android/server/LpnetManagerService;Z)V

    .line 972
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # invokes: Lcom/android/server/LpnetManagerService;->targetPkgInitialization(Z)V
    invoke-static {v0, v6}, Lcom/android/server/LpnetManagerService;->access$4400(Lcom/android/server/LpnetManagerService;Z)V

    .line 973
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->SMART_MGR_URI:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$4500(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSmartManagerObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$4600(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 974
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v1, v1, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->SMART_MGR_WHITELIST_URI:Landroid/net/Uri;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$4700(Lcom/android/server/LpnetManagerService;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v2, v2, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSmartManagerWhiteListObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/server/LpnetManagerService;->access$4800(Lcom/android/server/LpnetManagerService;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mEnableTimeShift:Z
    invoke-static {v0}, Lcom/android/server/LpnetManagerService;->access$4900(Lcom/android/server/LpnetManagerService;)Z

    move-result v0

    if-eqz v0, :cond_c0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/android/server/LpnetManagerService;->globalCurr:J
    invoke-static {v0, v1}, Lcom/android/server/LpnetManagerService;->access$5002(J)J

    .line 976
    :cond_c0
    return-void

    .line 961
    :cond_c1
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$5$6;->this$1:Lcom/android/server/LpnetManagerService$5;

    iget-object v0, v0, Lcom/android/server/LpnetManagerService$5;->this$0:Lcom/android/server/LpnetManagerService;

    const-string v1, "ACTION_TRIGGER_UNUSED_APP_LRU "

    const-wide/32 v2, 0x1b7740

    # invokes: Lcom/android/server/LpnetManagerService;->setAlarm(Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LpnetManagerService;->access$2700(Lcom/android/server/LpnetManagerService;Ljava/lang/String;JJ)V

    goto/16 :goto_30
.end method
