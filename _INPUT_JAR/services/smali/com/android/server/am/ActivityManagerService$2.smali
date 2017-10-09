.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 2576
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 32
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2579
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_180

    .line 2668
    :goto_7
    return-void

    .line 2581
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    .line 2582
    .local v24, "start":J
    const/16 v16, 0x0

    .line 2583
    .local v16, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2584
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    if-eqz v3, :cond_29

    .line 2585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    iput-boolean v7, v3, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2586
    new-instance v17, Lcom/android/internal/util/MemInfoReader;

    invoke-direct/range {v17 .. v17}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .end local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v17, "memInfo":Lcom/android/internal/util/MemInfoReader;
    move-object/from16 v16, v17

    .line 2588
    .end local v17    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v16    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :cond_29
    monitor-exit v6
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_68

    .line 2589
    if-eqz v16, :cond_c7

    .line 2590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2591
    const-wide/16 v12, 0x0

    .line 2592
    .local v12, "nativeTotalPss":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v6

    .line 2593
    :try_start_3c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    .line 2594
    .local v2, "N":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_47
    if-ge v15, v2, :cond_96

    .line 2595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v15}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v22

    .line 2596
    .local v22, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_65

    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I
    :try_end_61
    .catchall {:try_start_3c .. :try_end_61} :catchall_87

    const/16 v7, 0x2710

    if-lt v3, v7, :cond_6b

    .line 2594
    :cond_65
    :goto_65
    add-int/lit8 v15, v15, 0x1

    goto :goto_47

    .line 2588
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v15    # "j":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_68
    move-exception v3

    :try_start_69
    monitor-exit v6
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    throw v3

    .line 2600
    .restart local v2    # "N":I
    .restart local v12    # "nativeTotalPss":J
    .restart local v15    # "j":I
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_6b
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_72
    .catchall {:try_start_6b .. :try_end_72} :catchall_87

    .line 2601
    :try_start_72
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_8a

    .line 2603
    monitor-exit v7

    goto :goto_65

    .line 2605
    :catchall_84
    move-exception v3

    monitor-exit v7
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_84

    :try_start_86
    throw v3

    .line 2608
    .end local v2    # "N":I
    .end local v15    # "j":I
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :catchall_87
    move-exception v3

    monitor-exit v6
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_87

    throw v3

    .line 2605
    .restart local v2    # "N":I
    .restart local v15    # "j":I
    .restart local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_8a
    :try_start_8a
    monitor-exit v7
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_84

    .line 2606
    :try_start_8b
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/4 v7, 0x0

    invoke-static {v3, v7}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v8

    add-long/2addr v12, v8

    goto :goto_65

    .line 2608
    .end local v22    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_96
    monitor-exit v6
    :try_end_97
    .catchall {:try_start_8b .. :try_end_97} :catchall_87

    .line 2609
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 2613
    :try_start_a1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v8

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getBuffersSizeKb()J

    move-result-wide v10

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getShmemSizeKb()J

    move-result-wide v28

    add-long v10, v10, v28

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/util/MemInfoReader;->getSlabSizeKb()J

    move-result-wide v28

    add-long v10, v10, v28

    invoke-virtual/range {v3 .. v13}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2618
    monitor-exit v26
    :try_end_c7
    .catchall {:try_start_a1 .. :try_end_c7} :catchall_ef

    .line 2621
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v15    # "j":I
    :cond_c7
    const/4 v14, 0x0

    .local v14, "i":I
    const/16 v18, 0x0

    .line 2622
    .local v18, "num":I
    const/4 v3, 0x1

    new-array v0, v3, [J

    move-object/from16 v23, v0

    .line 2627
    .local v23, "tmp":[J
    :cond_cf
    :goto_cf
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    .line 2628
    :try_start_d4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v14, v3, :cond_f2

    .line 2631
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 2632
    monitor-exit v6

    goto/16 :goto_7

    .line 2643
    :catchall_ec
    move-exception v3

    monitor-exit v6
    :try_end_ee
    .catchall {:try_start_d4 .. :try_end_ee} :catchall_ec

    throw v3

    .line 2618
    .end local v14    # "i":I
    .end local v18    # "num":I
    .end local v23    # "tmp":[J
    .restart local v2    # "N":I
    .restart local v12    # "nativeTotalPss":J
    .restart local v15    # "j":I
    :catchall_ef
    move-exception v3

    :try_start_f0
    monitor-exit v26
    :try_end_f1
    .catchall {:try_start_f0 .. :try_end_f1} :catchall_ef

    throw v3

    .line 2634
    .end local v2    # "N":I
    .end local v12    # "nativeTotalPss":J
    .end local v15    # "j":I
    .restart local v14    # "i":I
    .restart local v18    # "num":I
    .restart local v23    # "tmp":[J
    :cond_f2
    :try_start_f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/am/ProcessRecord;

    .line 2635
    .local v20, "proc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    move/from16 v21, v0

    .line 2636
    .local v21, "procState":I
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_17b

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v21

    if-ne v0, v3, :cond_17b

    .line 2637
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v19, v0

    .line 2642
    .local v19, "pid":I
    :goto_118
    add-int/lit8 v14, v14, 0x1

    .line 2643
    monitor-exit v6
    :try_end_11b
    .catchall {:try_start_f2 .. :try_end_11b} :catchall_ec

    .line 2644
    if-eqz v20, :cond_cf

    .line 2645
    move/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/os/Debug;->getPss(I[J)J

    move-result-wide v4

    .line 2646
    .local v4, "pss":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v10

    .line 2647
    :try_start_12a
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_175

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    move/from16 v0, v21

    if-ne v3, v0, :cond_175

    move-object/from16 v0, v20

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v0, v19

    if-ne v3, v0, :cond_175

    .line 2649
    add-int/lit8 v18, v18, 0x1

    .line 2650
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v20

    iput-wide v6, v0, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2651
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/ProcessStats$ProcessState;

    const/4 v6, 0x0

    aget-wide v6, v23, v6

    const/4 v8, 0x1

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual/range {v3 .. v9}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(JJZLandroid/util/ArrayMap;)V

    .line 2655
    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-nez v3, :cond_167

    .line 2656
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    .line 2658
    :cond_167
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastPss:J

    .line 2659
    const/16 v3, 0x9

    move/from16 v0, v21

    if-lt v0, v3, :cond_175

    .line 2660
    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    .line 2663
    :cond_175
    monitor-exit v10

    goto/16 :goto_cf

    :catchall_178
    move-exception v3

    monitor-exit v10
    :try_end_17a
    .catchall {:try_start_12a .. :try_end_17a} :catchall_178

    throw v3

    .line 2639
    .end local v4    # "pss":J
    .end local v19    # "pid":I
    :cond_17b
    const/16 v20, 0x0

    .line 2640
    const/16 v19, 0x0

    .restart local v19    # "pid":I
    goto :goto_118

    .line 2579
    :pswitch_data_180
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method
