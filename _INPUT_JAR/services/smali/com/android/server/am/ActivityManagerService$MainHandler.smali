.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1610
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1611
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1612
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 86
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1616
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_df2

    .line 2571
    :cond_7
    :goto_7
    :sswitch_7
    return-void

    .line 1618
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 1619
    .local v49, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_68

    const/16 v77, 0x1

    .line 1621
    .local v77, "showBackground":Z
    :goto_25
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1622
    :try_start_2a
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1623
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v5, "result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppErrorResult;

    .line 1624
    .local v6, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v7, :cond_6b

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_6b

    .line 1625
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    if-eqz v6, :cond_63

    .line 1627
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1629
    :cond_63
    monitor-exit v10

    goto :goto_7

    .line 1696
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_65
    move-exception v5

    monitor-exit v10
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_65

    throw v5

    .line 1619
    .end local v77    # "showBackground":Z
    :cond_68
    const/16 v77, 0x0

    goto :goto_25

    .line 1631
    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v77    # "showBackground":Z
    :cond_6b
    :try_start_6b
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v11, 0x2710

    if-lt v5, v11, :cond_a0

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v11, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v11, :cond_a0

    const/16 v57, 0x1

    .line 1634
    .local v57, "isBackground":Z
    :goto_7d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v46, v0

    .local v46, "arr$":[I
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v59, v0

    .local v59, "len$":I
    const/16 v55, 0x0

    .local v55, "i$":I
    :goto_8c
    move/from16 v0, v55

    move/from16 v1, v59

    if-ge v0, v1, :cond_a5

    aget v83, v46, v55

    .line 1635
    .local v83, "userId":I
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v83

    if-eq v5, v0, :cond_a3

    const/4 v5, 0x1

    :goto_9b
    and-int v57, v57, v5

    .line 1634
    add-int/lit8 v55, v55, 0x1

    goto :goto_8c

    .line 1631
    .end local v46    # "arr$":[I
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v83    # "userId":I
    :cond_a0
    const/16 v57, 0x0

    goto :goto_7d

    .line 1635
    .restart local v46    # "arr$":[I
    .restart local v55    # "i$":I
    .restart local v57    # "isBackground":Z
    .restart local v59    # "len$":I
    .restart local v83    # "userId":I
    :cond_a3
    const/4 v5, 0x0

    goto :goto_9b

    .line 1637
    .end local v83    # "userId":I
    :cond_a5
    if-eqz v57, :cond_d0

    if-nez v77, :cond_d0

    .line 1638
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ": background"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    if-eqz v6, :cond_cd

    .line 1640
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1642
    :cond_cd
    monitor-exit v10

    goto/16 :goto_7

    .line 1644
    :cond_d0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_13a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_13a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_13a

    .line 1645
    new-instance v4, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1649
    .local v4, "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_115

    .line 1651
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1666
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1676
    :cond_115
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1677
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1680
    const/16 v5, 0x3e8

    iget v11, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, v11, :cond_129

    .line 1681
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->forceResetEasyOneHandService()V

    .line 1692
    .end local v4    # "d":Landroid/app/Dialog;
    :cond_129
    :goto_129
    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v5, :cond_130

    .line 1693
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    .line 1696
    :cond_130
    monitor-exit v10
    :try_end_131
    .catchall {:try_start_6b .. :try_end_131} :catchall_65

    .line 1698
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1687
    :cond_13a
    if-eqz v6, :cond_129

    .line 1688
    const/4 v5, 0x0

    :try_start_13d
    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_140
    .catchall {:try_start_13d .. :try_end_140} :catchall_65

    goto :goto_129

    .line 1704
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v46    # "arr$":[I
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v77    # "showBackground":Z
    :sswitch_141
    const-string v5, "AASAMSGAASA"

    const-string v10, " SHOW_CMPERMISSION_ERROR_MSG is called"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 1707
    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "anr_show_background"

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1bd

    const/16 v77, 0x1

    .line 1709
    .restart local v77    # "showBackground":Z
    :goto_165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    .line 1710
    :try_start_16a
    const-string v5, "errorpermission"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1711
    .local v8, "permission":Ljava/lang/String;
    const-string v5, "errorpackagename"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1712
    .local v9, "packagename":Ljava/lang/String;
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1713
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v5, "result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppErrorResult;

    .line 1714
    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v7, :cond_1c0

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_1c0

    .line 1715
    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has crash dialog: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    if-eqz v6, :cond_1b7

    .line 1717
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1719
    :cond_1b7
    monitor-exit v11

    goto/16 :goto_7

    .line 1761
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "packagename":Ljava/lang/String;
    :catchall_1ba
    move-exception v5

    monitor-exit v11
    :try_end_1bc
    .catchall {:try_start_16a .. :try_end_1bc} :catchall_1ba

    throw v5

    .line 1707
    .end local v77    # "showBackground":Z
    :cond_1bd
    const/16 v77, 0x0

    goto :goto_165

    .line 1722
    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "permission":Ljava/lang/String;
    .restart local v9    # "packagename":Ljava/lang/String;
    .restart local v77    # "showBackground":Z
    :cond_1c0
    :try_start_1c0
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v10, 0x2710

    if-lt v5, v10, :cond_1f5

    iget v5, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v10, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v5, v10, :cond_1f5

    const/16 v57, 0x1

    .line 1725
    .restart local v57    # "isBackground":Z
    :goto_1d2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v46, v0

    .restart local v46    # "arr$":[I
    move-object/from16 v0, v46

    array-length v0, v0

    move/from16 v59, v0

    .restart local v59    # "len$":I
    const/16 v55, 0x0

    .restart local v55    # "i$":I
    :goto_1e1
    move/from16 v0, v55

    move/from16 v1, v59

    if-ge v0, v1, :cond_1fa

    aget v83, v46, v55

    .line 1726
    .restart local v83    # "userId":I
    iget v5, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v83

    if-eq v5, v0, :cond_1f8

    const/4 v5, 0x1

    :goto_1f0
    and-int v57, v57, v5

    .line 1725
    add-int/lit8 v55, v55, 0x1

    goto :goto_1e1

    .line 1722
    .end local v46    # "arr$":[I
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v83    # "userId":I
    :cond_1f5
    const/16 v57, 0x0

    goto :goto_1d2

    .line 1726
    .restart local v46    # "arr$":[I
    .restart local v55    # "i$":I
    .restart local v57    # "isBackground":Z
    .restart local v59    # "len$":I
    .restart local v83    # "userId":I
    :cond_1f8
    const/4 v5, 0x0

    goto :goto_1f0

    .line 1729
    .end local v83    # "userId":I
    :cond_1fa
    if-eqz v57, :cond_225

    if-nez v77, :cond_225

    .line 1730
    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipping crash dialog of "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ": background"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    if-eqz v6, :cond_222

    .line 1732
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1734
    :cond_222
    monitor-exit v11

    goto/16 :goto_7

    .line 1738
    :cond_225
    const-string v5, "AASAMSGAASA"

    const-string v10, "AppPermissionManagedDialog was creadted by SHOW_CMPERMISSION_ERROR_MSG"

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1740
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_2f5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_2f5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_2f5

    .line 1741
    const/4 v4, 0x0

    .line 1743
    .restart local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v10, "emergency_mode"

    const/4 v12, 0x0

    invoke-static {v5, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x1

    if-eq v5, v10, :cond_272

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v10, "ultra_powersaving_mode"

    const/4 v12, 0x0

    invoke-static {v5, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v5, v10, :cond_2e8

    .line 1745
    :cond_272
    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v14, "emergency_mode"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v14, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    const-string v5, "AASAMSGAASA"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v14, "ultra_powersaving_mode"

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-static {v12, v14, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1752
    .restart local v4    # "d":Landroid/app/Dialog;
    :goto_2d7
    if-eqz v4, :cond_2de

    .line 1753
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1754
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1761
    .end local v4    # "d":Landroid/app/Dialog;
    :cond_2de
    :goto_2de
    monitor-exit v11
    :try_end_2df
    .catchall {:try_start_1c0 .. :try_end_2df} :catchall_1ba

    .line 1762
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1749
    .restart local v4    # "d":Landroid/app/Dialog;
    :cond_2e8
    :try_start_2e8
    new-instance v4, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v4    # "d":Landroid/app/Dialog;
    goto :goto_2d7

    .line 1759
    .end local v4    # "d":Landroid/app/Dialog;
    :cond_2f5
    const/4 v5, 0x0

    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2f9
    .catchall {:try_start_2e8 .. :try_end_2f9} :catchall_1ba

    goto :goto_2de

    .line 1786
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "permission":Ljava/lang/String;
    .end local v9    # "packagename":Ljava/lang/String;
    .end local v46    # "arr$":[I
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v55    # "i$":I
    .end local v57    # "isBackground":Z
    .end local v59    # "len$":I
    .end local v77    # "showBackground":Z
    :sswitch_2fa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1787
    :try_start_301
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 1788
    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1789
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v7, :cond_337

    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_337

    .line 1790
    const-string v5, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "App already has anr dialog: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    monitor-exit v26

    goto/16 :goto_7

    .line 1842
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_334
    move-exception v5

    monitor-exit v26
    :try_end_336
    .catchall {:try_start_301 .. :try_end_336} :catchall_334

    throw v5

    .line 1794
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_337
    :try_start_337
    new-instance v13, Landroid/content/Intent;

    const-string v5, "android.intent.action.ANR"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v13, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_34b

    .line 1796
    const/high16 v5, 0x50000000

    invoke-virtual {v13, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1799
    :cond_34b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    sget v23, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v24, 0x3e8

    const/16 v25, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v10 .. v25}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 1803
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_3c6

    .line 1804
    new-instance v4, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v5, "activity"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_3c3

    const/16 v19, 0x1

    :goto_394
    move-object v14, v4

    move-object/from16 v17, v7

    invoke-direct/range {v14 .. v19}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 1809
    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v5

    if-eqz v5, :cond_3b4

    .line 1811
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$3;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1826
    new-instance v5, Lcom/android/server/am/ActivityManagerService$MainHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$4;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1836
    :cond_3b4
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1837
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1842
    .end local v4    # "d":Landroid/app/Dialog;
    :goto_3b9
    monitor-exit v26
    :try_end_3ba
    .catchall {:try_start_337 .. :try_end_3ba} :catchall_334

    .line 1844
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1804
    :cond_3c3
    const/16 v19, 0x0

    goto :goto_394

    .line 1840
    :cond_3c6
    :try_start_3c6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_3ce
    .catchall {:try_start_3c6 .. :try_end_3ce} :catchall_334

    goto :goto_3b9

    .line 1847
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3cf
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v49, v0

    check-cast v49, Ljava/util/HashMap;

    .line 1848
    .restart local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1849
    :try_start_3dc
    const-string v5, "app"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 1850
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v7, :cond_3f5

    .line 1851
    const-string v5, "ActivityManager"

    const-string v11, "App not found when showing strict mode dialog."

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    monitor-exit v10

    goto/16 :goto_7

    .line 1869
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_3f2
    move-exception v5

    monitor-exit v10
    :try_end_3f4
    .catchall {:try_start_3dc .. :try_end_3f4} :catchall_3f2

    throw v5

    .line 1854
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_3f5
    :try_start_3f5
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_414

    .line 1855
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "App already has strict mode dialog: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    monitor-exit v10

    goto/16 :goto_7

    .line 1858
    :cond_414
    const-string/jumbo v5, "result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppErrorResult;

    .line 1859
    .restart local v6    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_459

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-nez v5, :cond_459

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v5, :cond_459

    .line 1860
    new-instance v4, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, v11, v6, v7}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1862
    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1863
    iput-object v4, v7, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1869
    .end local v4    # "d":Landroid/app/Dialog;
    :goto_44f
    monitor-exit v10
    :try_end_450
    .catchall {:try_start_3f5 .. :try_end_450} :catchall_3f2

    .line 1870
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1867
    :cond_459
    const/4 v5, 0x0

    :try_start_45a
    invoke-virtual {v6, v5}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_45d
    .catchall {:try_start_45a .. :try_end_45d} :catchall_3f2

    goto :goto_44f

    .line 1873
    .end local v6    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v49    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_45e
    new-instance v4, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "msg"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-direct {v4, v5, v10}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1875
    .restart local v4    # "d":Landroid/app/Dialog;
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1876
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1879
    .end local v4    # "d":Landroid/app/Dialog;
    :sswitch_47f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v74

    .line 1880
    .local v74, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/content/res/Configuration;

    move-object/from16 v0, v74

    invoke-static {v0, v5}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1883
    .end local v74    # "resolver":Landroid/content/ContentResolver;
    :sswitch_496
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1884
    :try_start_49b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1885
    monitor-exit v10

    goto/16 :goto_7

    :catchall_4a5
    move-exception v5

    monitor-exit v10
    :try_end_4a7
    .catchall {:try_start_49b .. :try_end_4a7} :catchall_4a5

    throw v5

    .line 1890
    :sswitch_4a8
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    move-object/from16 v66, v5

    check-cast v66, Landroid/util/Pair;

    .line 1891
    .local v66, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    move-object/from16 v0, v66

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Lcom/android/server/am/ActivityRecord;

    .line 1892
    .local v71, "r":Lcom/android/server/am/ActivityRecord;
    monitor-enter p0

    .line 1893
    :try_start_4bb
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v5, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v71

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v66

    iget-object v5, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v5, v12}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1894
    monitor-exit p0

    goto/16 :goto_7

    :catchall_4d2
    move-exception v5

    monitor-exit p0
    :try_end_4d4
    .catchall {:try_start_4bb .. :try_end_4d4} :catchall_4d2

    throw v5

    .line 1900
    .end local v66    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    .end local v71    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_4d5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1901
    :try_start_4da
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 1902
    .local v44, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_511

    .line 1903
    move-object/from16 v0, v44

    iget-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v5, :cond_50b

    .line 1904
    new-instance v4, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v44

    invoke-direct {v4, v5, v11, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1907
    .restart local v4    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v44

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1908
    const/4 v5, 0x1

    move-object/from16 v0, v44

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1909
    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1917
    .end local v4    # "d":Landroid/app/Dialog;
    :cond_50b
    :goto_50b
    monitor-exit v10

    goto/16 :goto_7

    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_50e
    move-exception v5

    monitor-exit v10
    :try_end_510
    .catchall {:try_start_4da .. :try_end_510} :catchall_50e

    throw v5

    .line 1912
    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_511
    :try_start_511
    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_50b

    .line 1913
    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 1914
    const/4 v5, 0x0

    move-object/from16 v0, v44

    iput-object v5, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_523
    .catchall {:try_start_511 .. :try_end_523} :catchall_50e

    goto :goto_50b

    .line 1920
    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_556

    .line 1921
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1922
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0xc

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .line 1923
    .local v63, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v63

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1924
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v10, 0x7530

    move-object/from16 v0, v63

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1927
    .end local v63    # "nmsg":Landroid/os/Message;
    :cond_556
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v10, v5}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    .line 1930
    :sswitch_567
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1931
    :try_start_56c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .local v54, "i":I
    :goto_578
    if-ltz v54, :cond_5bb

    .line 1932
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .line 1933
    .local v71, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_58c
    .catchall {:try_start_56c .. :try_end_58c} :catchall_5b8

    if-eqz v5, :cond_595

    .line 1935
    :try_start_58e
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_595
    .catch Landroid/os/RemoteException; {:try_start_58e .. :try_end_595} :catch_598
    .catchall {:try_start_58e .. :try_end_595} :catchall_5b8

    .line 1931
    :cond_595
    :goto_595
    add-int/lit8 v54, v54, -0x1

    goto :goto_578

    .line 1936
    :catch_598
    move-exception v53

    .line 1937
    .local v53, "ex":Landroid/os/RemoteException;
    :try_start_599
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update time zone for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_595

    .line 1941
    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_5b8
    move-exception v5

    monitor-exit v10
    :try_end_5ba
    .catchall {:try_start_599 .. :try_end_5ba} :catchall_5b8

    throw v5

    .restart local v54    # "i":I
    :cond_5bb
    :try_start_5bb
    monitor-exit v10
    :try_end_5bc
    .catchall {:try_start_5bb .. :try_end_5bc} :catchall_5b8

    goto/16 :goto_7

    .line 1944
    .end local v54    # "i":I
    :sswitch_5be
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1945
    :try_start_5c3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .restart local v54    # "i":I
    :goto_5cf
    if-ltz v54, :cond_612

    .line 1946
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .line 1947
    .restart local v71    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_5e3
    .catchall {:try_start_5c3 .. :try_end_5e3} :catchall_60f

    if-eqz v5, :cond_5ec

    .line 1949
    :try_start_5e5
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_5ec
    .catch Landroid/os/RemoteException; {:try_start_5e5 .. :try_end_5ec} :catch_5ef
    .catchall {:try_start_5e5 .. :try_end_5ec} :catchall_60f

    .line 1945
    :cond_5ec
    :goto_5ec
    add-int/lit8 v54, v54, -0x1

    goto :goto_5cf

    .line 1950
    :catch_5ef
    move-exception v53

    .line 1951
    .restart local v53    # "ex":Landroid/os/RemoteException;
    :try_start_5f0
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to clear dns cache for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5ec

    .line 1955
    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_60f
    move-exception v5

    monitor-exit v10
    :try_end_611
    .catchall {:try_start_5f0 .. :try_end_611} :catchall_60f

    throw v5

    .restart local v54    # "i":I
    :cond_612
    :try_start_612
    monitor-exit v10
    :try_end_613
    .catchall {:try_start_612 .. :try_end_613} :catchall_60f

    goto/16 :goto_7

    .line 1958
    .end local v54    # "i":I
    :sswitch_615
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/net/ProxyInfo;

    .line 1959
    .local v70, "proxy":Landroid/net/ProxyInfo;
    const-string v15, ""

    .line 1960
    .local v15, "host":Ljava/lang/String;
    const-string v16, ""

    .line 1962
    .local v16, "port":Ljava/lang/String;
    const-string v17, ""

    .line 1963
    .local v17, "username":Ljava/lang/String;
    const-string v18, ""

    .line 1965
    .local v18, "password":Ljava/lang/String;
    const-string v19, ""

    .line 1966
    .local v19, "exclList":Ljava/lang/String;
    sget-object v20, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1967
    .local v20, "pacFileUrl":Landroid/net/Uri;
    if-eqz v70, :cond_647

    .line 1968
    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v15

    .line 1969
    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 1971
    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v17

    .line 1972
    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v18

    .line 1974
    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v19

    .line 1975
    invoke-virtual/range {v70 .. v70}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v20

    .line 1977
    :cond_647
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 1978
    :try_start_64c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .restart local v54    # "i":I
    :goto_658
    if-ltz v54, :cond_6b5

    .line 1979
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .line 1980
    .restart local v71    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_66c
    .catchall {:try_start_64c .. :try_end_66c} :catchall_6b2

    if-eqz v5, :cond_681

    .line 1983
    if-eqz v17, :cond_684

    :try_start_670
    const-string v5, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_684

    .line 1984
    move-object/from16 v0, v71

    iget-object v14, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v14 .. v20}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1978
    :cond_681
    :goto_681
    add-int/lit8 v54, v54, -0x1

    goto :goto_658

    .line 1986
    :cond_684
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v5, v15, v0, v1, v2}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_691
    .catch Landroid/os/RemoteException; {:try_start_670 .. :try_end_691} :catch_692
    .catchall {:try_start_670 .. :try_end_691} :catchall_6b2

    goto :goto_681

    .line 1989
    :catch_692
    move-exception v53

    .line 1990
    .restart local v53    # "ex":Landroid/os/RemoteException;
    :try_start_693
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update http proxy for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_681

    .line 1995
    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_6b2
    move-exception v5

    monitor-exit v10
    :try_end_6b4
    .catchall {:try_start_693 .. :try_end_6b4} :catchall_6b2

    throw v5

    .restart local v54    # "i":I
    :cond_6b5
    :try_start_6b5
    monitor-exit v10
    :try_end_6b6
    .catchall {:try_start_6b5 .. :try_end_6b6} :catchall_6b2

    goto/16 :goto_7

    .line 1998
    .end local v15    # "host":Ljava/lang/String;
    .end local v16    # "port":Ljava/lang/String;
    .end local v17    # "username":Ljava/lang/String;
    .end local v18    # "password":Ljava/lang/String;
    .end local v19    # "exclList":Ljava/lang/String;
    .end local v20    # "pacFileUrl":Landroid/net/Uri;
    .end local v54    # "i":I
    .end local v70    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_6b8
    const-string v81, "System UIDs Inconsistent"

    .line 1999
    .local v81, "title":Ljava/lang/String;
    const-string v79, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 2001
    .local v79, "text":Ljava/lang/String;
    const-string v5, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v81

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v79

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2004
    new-instance v4, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 2005
    .local v4, "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v10, 0x7da

    invoke-virtual {v5, v10}, Landroid/view/Window;->setType(I)V

    .line 2006
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2007
    move-object/from16 v0, v81

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2008
    move-object/from16 v0, v79

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2009
    const/4 v5, -0x1

    const-string v10, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v4, v5, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v4, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 2012
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 2016
    .end local v4    # "d":Landroid/app/AlertDialog;
    .end local v79    # "text":Ljava/lang/String;
    .end local v81    # "title":Ljava/lang/String;
    :sswitch_725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_7

    .line 2017
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 2018
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 2022
    :sswitch_73f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_771

    .line 2023
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    iput-boolean v10, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 2024
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v10, 0x14

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .line 2025
    .restart local v63    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v63

    iput-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2026
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v63

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 2029
    .end local v63    # "nmsg":Landroid/os/Message;
    :cond_771
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 2030
    .restart local v44    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2031
    :try_start_77e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v44

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v5, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 2032
    monitor-exit v10

    goto/16 :goto_7

    :catchall_78a
    move-exception v5

    monitor-exit v10
    :try_end_78c
    .catchall {:try_start_77e .. :try_end_78c} :catchall_78a

    throw v5

    .line 2035
    .end local v44    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_78d
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2036
    :try_start_792
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 2037
    monitor-exit v10

    goto/16 :goto_7

    :catchall_79f
    move-exception v5

    monitor-exit v10
    :try_end_7a1
    .catchall {:try_start_792 .. :try_end_7a1} :catchall_79f

    throw v5

    .line 2040
    :sswitch_7a2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2041
    :try_start_7a7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 2042
    .local v23, "appid":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_7e9

    const/16 v24, 0x1

    .line 2043
    .local v24, "restart":Z
    :goto_7b6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/os/Bundle;

    .line 2044
    .local v47, "bundle":Landroid/os/Bundle;
    const-string/jumbo v5, "pkg"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 2045
    .local v22, "pkg":Ljava/lang/String;
    const-string/jumbo v5, "reason"

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 2046
    .local v30, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v21, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v21 .. v30}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2048
    monitor-exit v10

    goto/16 :goto_7

    .end local v22    # "pkg":Ljava/lang/String;
    .end local v23    # "appid":I
    .end local v24    # "restart":Z
    .end local v30    # "reason":Ljava/lang/String;
    .end local v47    # "bundle":Landroid/os/Bundle;
    :catchall_7e6
    move-exception v5

    monitor-exit v10
    :try_end_7e8
    .catchall {:try_start_7a7 .. :try_end_7e8} :catchall_7e6

    throw v5

    .line 2042
    .restart local v23    # "appid":I
    :cond_7e9
    const/16 v24, 0x0

    goto :goto_7b6

    .line 2051
    .end local v23    # "appid":I
    :sswitch_7ec
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v5}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 2054
    :sswitch_7f7
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v56

    .line 2055
    .local v56, "inm":Landroid/app/INotificationManager;
    if-eqz v56, :cond_7

    .line 2059
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v75, v0

    check-cast v75, Lcom/android/server/am/ActivityRecord;

    .line 2060
    .local v75, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v75

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v68, v0

    .line 2061
    .local v68, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v68, :cond_7

    .line 2066
    :try_start_80d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v68

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v48

    .line 2067
    .local v48, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104049a

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    invoke-virtual/range {v48 .. v48}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-virtual {v5, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v79

    .line 2069
    .restart local v79    # "text":Ljava/lang/String;
    new-instance v64, Landroid/app/Notification;

    invoke-direct/range {v64 .. v64}, Landroid/app/Notification;-><init>()V

    .line 2070
    .local v64, "notification":Landroid/app/Notification;
    const v5, 0x1080878

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->icon:I

    .line 2071
    const-wide/16 v10, 0x0

    move-object/from16 v0, v64

    iput-wide v10, v0, Landroid/app/Notification;->when:J

    .line 2072
    const/4 v5, 0x2

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->flags:I

    .line 2073
    move-object/from16 v0, v79

    move-object/from16 v1, v64

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2074
    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->defaults:I

    .line 2075
    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput-object v5, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2076
    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput-object v5, v0, Landroid/app/Notification;->vibrate:[J

    .line 2077
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x1060058

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Landroid/app/Notification;->color:I

    .line 2079
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x104049b

    invoke-virtual {v5, v10}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v75

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v33, v0

    const/high16 v34, 0x10000000

    const/16 v35, 0x0

    new-instance v36, Landroid/os/UserHandle;

    move-object/from16 v0, v75

    iget v10, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v36

    invoke-direct {v0, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v31 .. v36}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    move-object/from16 v0, v64

    move-object/from16 v1, v48

    move-object/from16 v2, v79

    invoke-virtual {v0, v1, v2, v5, v10}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_8b9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_80d .. :try_end_8b9} :catch_8e2

    .line 2086
    const/4 v5, 0x1

    :try_start_8ba
    new-array v0, v5, [I

    move-object/from16 v37, v0

    .line 2087
    .local v37, "outId":[I
    const-string v32, "android"

    const-string v33, "android"

    const/16 v34, 0x0

    const v35, 0x104049a

    move-object/from16 v0, v75

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v38, v0

    move-object/from16 v31, v56

    move-object/from16 v36, v64

    invoke-interface/range {v31 .. v38}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_8d4
    .catch Ljava/lang/RuntimeException; {:try_start_8ba .. :try_end_8d4} :catch_8d6
    .catch Landroid/os/RemoteException; {:try_start_8ba .. :try_end_8d4} :catch_dee
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8ba .. :try_end_8d4} :catch_8e2

    goto/16 :goto_7

    .line 2090
    .end local v37    # "outId":[I
    :catch_8d6
    move-exception v52

    .line 2091
    .local v52, "e":Ljava/lang/RuntimeException;
    :try_start_8d7
    const-string v5, "ActivityManager"

    const-string v10, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8d7 .. :try_end_8e0} :catch_8e2

    goto/16 :goto_7

    .line 2095
    .end local v48    # "context":Landroid/content/Context;
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v64    # "notification":Landroid/app/Notification;
    .end local v79    # "text":Ljava/lang/String;
    :catch_8e2
    move-exception v52

    .line 2096
    .local v52, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    const-string v10, "Unable to create context for heavy notification"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2100
    .end local v52    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v56    # "inm":Landroid/app/INotificationManager;
    .end local v68    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v75    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_8ee
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v56

    .line 2101
    .restart local v56    # "inm":Landroid/app/INotificationManager;
    if-eqz v56, :cond_7

    .line 2105
    :try_start_8f4
    const-string v5, "android"

    const/4 v10, 0x0

    const v11, 0x104049a

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v56

    invoke-interface {v0, v5, v10, v11, v12}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_903
    .catch Ljava/lang/RuntimeException; {:try_start_8f4 .. :try_end_903} :catch_905
    .catch Landroid/os/RemoteException; {:try_start_8f4 .. :try_end_903} :catch_deb

    goto/16 :goto_7

    .line 2107
    :catch_905
    move-exception v52

    .line 2108
    .local v52, "e":Ljava/lang/RuntimeException;
    const-string v5, "ActivityManager"

    const-string v10, "Error canceling notification for service"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2114
    .end local v52    # "e":Ljava/lang/RuntimeException;
    .end local v56    # "inm":Landroid/app/INotificationManager;
    :sswitch_911
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2115
    :try_start_916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2116
    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2117
    const/16 v5, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v63

    .line 2118
    .restart local v63    # "nmsg":Landroid/os/Message;
    const-wide/32 v26, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2119
    monitor-exit v10

    goto/16 :goto_7

    .end local v63    # "nmsg":Landroid/os/Message;
    :catchall_93c
    move-exception v5

    monitor-exit v10
    :try_end_93e
    .catchall {:try_start_916 .. :try_end_93e} :catchall_93c

    throw v5

    .line 2123
    :sswitch_93f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v10, v11, v12, v14}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    .line 2127
    :sswitch_94c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2128
    :try_start_951
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Lcom/android/server/am/ActivityRecord;

    .line 2129
    .local v45, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v5, :cond_98f

    .line 2130
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v5, v5, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v45

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_97f

    .line 2132
    monitor-exit v10

    goto/16 :goto_7

    .line 2151
    .end local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_97c
    move-exception v5

    monitor-exit v10
    :try_end_97e
    .catchall {:try_start_951 .. :try_end_97e} :catchall_97c

    throw v5

    .line 2134
    .restart local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_97f
    :try_start_97f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v5}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 2135
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v11, 0x0

    iput-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 2137
    :cond_98f
    if-eqz v45, :cond_991

    .line 2151
    :cond_991
    monitor-exit v10
    :try_end_992
    .catchall {:try_start_97f .. :try_end_992} :catchall_97c

    goto/16 :goto_7

    .line 2155
    .end local v45    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_994
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2159
    :sswitch_99d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v67, v0

    .line 2160
    .local v67, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v82, v0

    .line 2161
    .local v82, "uid":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v67

    move/from16 v1, v82

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v5, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 2165
    .end local v67    # "pid":I
    .end local v82    # "uid":I
    :sswitch_9b6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v60, v0

    check-cast v60, Ljava/util/ArrayList;

    .line 2166
    .local v60, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v80, Lcom/android/server/am/ActivityManagerService$MainHandler$5;

    move-object/from16 v0, v80

    move-object/from16 v1, p0

    move-object/from16 v2, v60

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$5;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2356
    .local v80, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v80 .. v80}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 2360
    .end local v60    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v80    # "thread":Ljava/lang/Thread;
    :sswitch_9ce
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v10, v11, v5}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2364
    :sswitch_9e1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2369
    :sswitch_9f8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v11, 0x1040a9d

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2378
    :sswitch_a19
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2382
    :sswitch_a30
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v10, v5, v11, v12}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2386
    :sswitch_a47
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_a6a

    const/16 v62, 0x1

    .line 2387
    .local v62, "nextState":Z
    :goto_a4f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v5

    move/from16 v0, v62

    if-eq v5, v0, :cond_7

    .line 2392
    if-eqz v62, :cond_a6d

    .line 2393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 2386
    .end local v62    # "nextState":Z
    :cond_a6a
    const/16 v62, 0x0

    goto :goto_a4f

    .line 2395
    .restart local v62    # "nextState":Z
    :cond_a6d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v5}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 2401
    .end local v62    # "nextState":Z
    :sswitch_a78
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2405
    :sswitch_a81
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v12, 0x1

    const/4 v14, 0x0

    invoke-virtual {v5, v10, v11, v12, v14}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto/16 :goto_7

    .line 2409
    :sswitch_a90
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2410
    :try_start_a95
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 2411
    monitor-exit v10

    goto/16 :goto_7

    :catchall_a9f
    move-exception v5

    monitor-exit v10
    :try_end_aa1
    .catchall {:try_start_a95 .. :try_end_aa1} :catchall_a9f

    throw v5

    .line 2415
    :sswitch_aa2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2416
    :try_start_aa7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v54, v5, -0x1

    .restart local v54    # "i":I
    :goto_ab3
    if-ltz v54, :cond_aff

    .line 2417
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v54

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v71

    check-cast v71, Lcom/android/server/am/ProcessRecord;

    .line 2418
    .restart local v71    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_ac7
    .catchall {:try_start_aa7 .. :try_end_ac7} :catchall_afc

    if-eqz v5, :cond_ad7

    .line 2420
    :try_start_ac9
    move-object/from16 v0, v71

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-nez v5, :cond_ada

    const/4 v5, 0x0

    :goto_ad4
    invoke-interface {v11, v5}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_ad7
    .catch Landroid/os/RemoteException; {:try_start_ac9 .. :try_end_ad7} :catch_adc
    .catchall {:try_start_ac9 .. :try_end_ad7} :catchall_afc

    .line 2416
    :cond_ad7
    :goto_ad7
    add-int/lit8 v54, v54, -0x1

    goto :goto_ab3

    .line 2420
    :cond_ada
    const/4 v5, 0x1

    goto :goto_ad4

    .line 2421
    :catch_adc
    move-exception v53

    .line 2422
    .restart local v53    # "ex":Landroid/os/RemoteException;
    :try_start_add
    const-string v5, "ActivityManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to update preferences for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v71

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad7

    .line 2426
    .end local v53    # "ex":Landroid/os/RemoteException;
    .end local v54    # "i":I
    .end local v71    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_afc
    move-exception v5

    monitor-exit v10
    :try_end_afe
    .catchall {:try_start_add .. :try_end_afe} :catchall_afc

    throw v5

    .restart local v54    # "i":I
    :cond_aff
    :try_start_aff
    monitor-exit v10
    :try_end_b00
    .catchall {:try_start_aff .. :try_end_b00} :catchall_afc

    goto/16 :goto_7

    .line 2432
    .end local v54    # "i":I
    :sswitch_b02
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v11}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v5, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2439
    :sswitch_b28
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .line 2440
    .local v69, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v78, v0

    .line 2441
    .local v78, "stopReason":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move/from16 v0, v69

    move/from16 v1, v78

    invoke-static {v10, v5, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_7

    .line 2448
    .end local v69    # "processId":I
    .end local v78    # "stopReason":I
    :sswitch_b49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v10, 0x8007

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2450
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_7

    .line 2454
    :sswitch_b70
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v10, 0x4008

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2457
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v10, 0x8008

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10, v11, v12}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2460
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v10}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    .line 2461
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLockToAppRequest:Lcom/android/server/am/LockToAppRequestDialog;
    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/LockToAppRequestDialog;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/LockToAppRequestDialog;->clearPrompt()V

    goto/16 :goto_7

    .line 2465
    :sswitch_bb9
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2466
    :try_start_bbe
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-static {v5}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v71

    .line 2467
    .local v71, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v71, :cond_be5

    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_be5

    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_bd6
    .catchall {:try_start_bbe .. :try_end_bd6} :catchall_be8

    if-eqz v5, :cond_be5

    .line 2469
    :try_start_bd8
    move-object/from16 v0, v71

    iget-object v5, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v71

    iget-object v11, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v5, v11}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_be5
    .catch Landroid/os/RemoteException; {:try_start_bd8 .. :try_end_be5} :catch_de8
    .catchall {:try_start_bd8 .. :try_end_be5} :catchall_be8

    .line 2473
    :cond_be5
    :goto_be5
    :try_start_be5
    monitor-exit v10

    goto/16 :goto_7

    .end local v71    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_be8
    move-exception v5

    monitor-exit v10
    :try_end_bea
    .catchall {:try_start_be5 .. :try_end_bea} :catchall_be8

    throw v5

    .line 2477
    :sswitch_beb
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_bf8

    .line 2478
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2480
    :cond_bf8
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-eqz v5, :cond_7

    .line 2481
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_7

    .line 2487
    :sswitch_c07
    :try_start_c07
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v58, v0

    check-cast v58, Ljava/util/Locale;

    .line 2488
    .local v58, "l":Ljava/util/Locale;
    const-string v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v76

    .line 2489
    .local v76, "service":Landroid/os/IBinder;
    invoke-static/range {v76 .. v76}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v61

    .line 2490
    .local v61, "mountService":Landroid/os/storage/IMountService;
    const-string v5, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Storing locale "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v58 .. v58}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for decryption UI"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    const-string v5, "SystemLocale"

    invoke-virtual/range {v58 .. v58}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, v61

    invoke-interface {v0, v5, v10}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c46
    .catch Landroid/os/RemoteException; {:try_start_c07 .. :try_end_c46} :catch_c48

    goto/16 :goto_7

    .line 2492
    .end local v58    # "l":Ljava/util/Locale;
    .end local v61    # "mountService":Landroid/os/storage/IMountService;
    .end local v76    # "service":Landroid/os/IBinder;
    :catch_c48
    move-exception v52

    .line 2493
    .local v52, "e":Landroid/os/RemoteException;
    const-string v5, "ActivityManager"

    const-string v10, "Error storing locale for decryption UI"

    move-object/from16 v0, v52

    invoke-static {v5, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2499
    .end local v52    # "e":Landroid/os/RemoteException;
    :sswitch_c54
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_c82

    .line 2500
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0xc

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 2501
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2503
    :cond_c82
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_cb0

    .line 2504
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0x10

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 2505
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2507
    :cond_cb0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_cde

    .line 2508
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0x13

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 2509
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2511
    :cond_cde
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v5, :cond_d0c

    .line 2512
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v38, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "ACTIVITY_RESUME_BOOSTER"

    const/16 v41, 0xe

    const-wide/16 v42, 0x0

    invoke-direct/range {v38 .. v43}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v38

    iput-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 2513
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v10, "ActivityManager_resume"

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2516
    :cond_d0c
    sget v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v10, 0x1

    if-ne v5, v10, :cond_d1f

    .line 2517
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2518
    const/4 v5, 0x0

    sput v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    .line 2520
    :cond_d1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v5

    if-eqz v5, :cond_d36

    .line 2521
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2523
    :cond_d36
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v5

    if-eqz v5, :cond_d4d

    .line 2524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2526
    :cond_d4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v5}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v5

    if-eqz v5, :cond_7

    .line 2527
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v10, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v5, v10}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_7

    .line 2533
    :sswitch_d66
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/app/ApplicationErrorReport;

    .line 2534
    .local v72, "report":Landroid/app/ApplicationErrorReport;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v83, v0

    .line 2535
    .restart local v83    # "userId":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    if-lez v5, :cond_dd4

    const/16 v65, 0x1

    .line 2536
    .local v65, "notify":Z
    :goto_d7c
    if-eqz v72, :cond_7

    .line 2537
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2538
    const/16 v51, 0x0

    .line 2539
    .local v51, "dumpStrTmp":Ljava/lang/String;
    :try_start_d85
    move-object/from16 v0, v72

    iget v5, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v11, 0x1

    if-ne v5, v11, :cond_dd7

    .line 2540
    const-string v51, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 2545
    :cond_d8e
    :goto_d8e
    move-object/from16 v50, v51

    .line 2547
    .local v50, "dumpCmd":Ljava/lang/String;
    if-eqz v50, :cond_db0

    .line 2548
    const-string/jumbo v5, "user"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_de1

    .line 2549
    new-instance v5, Ljava/lang/Thread;

    new-instance v11, Lcom/android/server/am/ActivityManagerService$MainHandler$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-direct {v11, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$6;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;)V

    const-string v12, "dumpstate"

    invoke-direct {v5, v11, v12}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 2558
    :cond_db0
    :goto_db0
    monitor-exit v10
    :try_end_db1
    .catchall {:try_start_d85 .. :try_end_db1} :catchall_de5

    .line 2560
    if-eqz v65, :cond_7

    .line 2561
    new-instance v73, Landroid/content/Intent;

    const-string v5, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v73

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2562
    .local v73, "reportIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v73

    move-object/from16 v1, v72

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v73

    move/from16 v1, v83

    invoke-virtual {v5, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 2535
    .end local v50    # "dumpCmd":Ljava/lang/String;
    .end local v51    # "dumpStrTmp":Ljava/lang/String;
    .end local v65    # "notify":Z
    .end local v73    # "reportIntent":Landroid/content/Intent;
    :cond_dd4
    const/16 v65, 0x0

    goto :goto_d7c

    .line 2541
    .restart local v51    # "dumpStrTmp":Ljava/lang/String;
    .restart local v65    # "notify":Z
    :cond_dd7
    :try_start_dd7
    move-object/from16 v0, v72

    iget v5, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v11, 0x2

    if-ne v5, v11, :cond_d8e

    .line 2542
    const-string v51, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    goto :goto_d8e

    .line 2555
    .restart local v50    # "dumpCmd":Ljava/lang/String;
    :cond_de1
    invoke-static/range {v50 .. v50}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_db0

    .line 2558
    .end local v50    # "dumpCmd":Ljava/lang/String;
    :catchall_de5
    move-exception v5

    monitor-exit v10
    :try_end_de7
    .catchall {:try_start_dd7 .. :try_end_de7} :catchall_de5

    throw v5

    .line 2470
    .end local v51    # "dumpStrTmp":Ljava/lang/String;
    .end local v65    # "notify":Z
    .end local v72    # "report":Landroid/app/ApplicationErrorReport;
    .end local v83    # "userId":I
    .restart local v71    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_de8
    move-exception v5

    goto/16 :goto_be5

    .line 2110
    .end local v71    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v56    # "inm":Landroid/app/INotificationManager;
    :catch_deb
    move-exception v5

    goto/16 :goto_7

    .line 2093
    .restart local v48    # "context":Landroid/content/Context;
    .restart local v64    # "notification":Landroid/app/Notification;
    .restart local v68    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v75    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v79    # "text":Ljava/lang/String;
    :catch_dee
    move-exception v5

    goto/16 :goto_7

    .line 1616
    nop

    :sswitch_data_df2
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_2fa
        0x3 -> :sswitch_45e
        0x4 -> :sswitch_47f
        0x5 -> :sswitch_496
        0x6 -> :sswitch_4d5
        0xc -> :sswitch_524
        0xd -> :sswitch_567
        0xe -> :sswitch_6b8
        0xf -> :sswitch_725
        0x14 -> :sswitch_73f
        0x15 -> :sswitch_78d
        0x16 -> :sswitch_7a2
        0x17 -> :sswitch_7ec
        0x18 -> :sswitch_7f7
        0x19 -> :sswitch_8ee
        0x1a -> :sswitch_3cf
        0x1b -> :sswitch_911
        0x1c -> :sswitch_5be
        0x1d -> :sswitch_615
        0x1e -> :sswitch_94c
        0x1f -> :sswitch_994
        0x20 -> :sswitch_99d
        0x21 -> :sswitch_9b6
        0x22 -> :sswitch_9e1
        0x23 -> :sswitch_a19
        0x24 -> :sswitch_a30
        0x25 -> :sswitch_a47
        0x26 -> :sswitch_a78
        0x27 -> :sswitch_a81
        0x28 -> :sswitch_a90
        0x29 -> :sswitch_aa2
        0x2a -> :sswitch_b49
        0x2b -> :sswitch_b70
        0x2c -> :sswitch_bb9
        0x2d -> :sswitch_beb
        0x2e -> :sswitch_9ce
        0x2f -> :sswitch_c07
        0x31 -> :sswitch_c54
        0x32 -> :sswitch_d66
        0x36 -> :sswitch_141
        0x37 -> :sswitch_7
        0x190 -> :sswitch_b28
        0x1f4 -> :sswitch_b02
        0x259 -> :sswitch_9f8
        0x2bc -> :sswitch_4a8
        0x3e7 -> :sswitch_93f
    .end sparse-switch
.end method
