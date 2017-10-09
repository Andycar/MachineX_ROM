.class Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;
.super Ljava/lang/Thread;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyTaskWriterThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;Ljava/lang/String;)V
    .registers 3
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    .line 454
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 455
    return-void
.end method


# virtual methods
.method public run()V
    .registers 29

    .prologue
    .line 459
    new-instance v16, Landroid/util/ArraySet;

    invoke-direct/range {v16 .. v16}, Landroid/util/ArraySet;-><init>()V

    .line 465
    .local v16, "persistentTaskIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 466
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v17

    .line 467
    .local v17, "probablyDone":Z
    monitor-exit v23
    :try_end_1d
    .catchall {:try_start_c .. :try_end_1d} :catchall_77

    .line 468
    if-eqz v17, :cond_88

    .line 470
    invoke-virtual/range {v16 .. v16}, Landroid/util/ArraySet;->clear()V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v23

    monitor-enter v23

    .line 472
    :try_start_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v22

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    .line 474
    .local v21, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v20, v22, -0x1

    .local v20, "taskNdx":I
    :goto_43
    if-ltz v20, :cond_7a

    .line 475
    move-object/from16 v0, v21

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/am/TaskRecord;

    .line 478
    .local v19, "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->isPersistable:Z

    move/from16 v22, v0

    if-eqz v22, :cond_74

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v22

    if-nez v22, :cond_74

    .line 480
    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_74
    .catchall {:try_start_2d .. :try_end_74} :catchall_fa

    .line 474
    :cond_74
    add-int/lit8 v20, v20, -0x1

    goto :goto_43

    .line 467
    .end local v17    # "probablyDone":Z
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .end local v20    # "taskNdx":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :catchall_77
    move-exception v22

    :try_start_78
    monitor-exit v23
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw v22

    .line 485
    .restart local v17    # "probablyDone":Z
    .restart local v20    # "taskNdx":I
    .restart local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_7a
    :try_start_7a
    monitor-exit v23
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_fa

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/am/TaskPersister;->removeObsoleteFiles(Landroid/util/ArraySet;)V
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$200(Lcom/android/server/am/TaskPersister;Landroid/util/ArraySet;)V

    .line 491
    .end local v20    # "taskNdx":I
    .end local v21    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/TaskRecord;>;"
    :cond_88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v23, v0

    monitor-enter v23

    .line 492
    :try_start_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, -0x1

    cmp-long v22, v24, v26

    if-eqz v22, :cond_b4

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x1f4

    add-long v24, v24, v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$302(Lcom/android/server/am/TaskPersister;J)J

    .line 500
    :cond_b4
    :goto_b4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_fd

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    const-wide/16 v26, 0x0

    cmp-long v22, v24, v26

    if-eqz v22, :cond_ee

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    const-wide/16 v24, 0x0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    # setter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/TaskPersister;->access$302(Lcom/android/server/am/TaskPersister;J)J

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notifyAll()V
    :try_end_ee
    .catchall {:try_start_8f .. :try_end_ee} :catchall_179

    .line 507
    :cond_ee
    :try_start_ee
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->wait()V
    :try_end_f7
    .catch Ljava/lang/InterruptedException; {:try_start_ee .. :try_end_f7} :catch_f8
    .catchall {:try_start_ee .. :try_end_f7} :catchall_179

    goto :goto_b4

    .line 508
    :catch_f8
    move-exception v22

    goto :goto_b4

    .line 485
    :catchall_fa
    move-exception v22

    :try_start_fb
    monitor-exit v23
    :try_end_fc
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fa

    throw v22

    .line 513
    :cond_fd
    :try_start_fd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/TaskPersister;->mWriteQueue:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/TaskPersister$WriteQueueItem;

    .line 515
    .local v13, "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 518
    .local v14, "now":J
    :goto_119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J
    :try_end_122
    .catchall {:try_start_fd .. :try_end_122} :catchall_179

    move-result-wide v24

    cmp-long v22, v14, v24

    if-gez v22, :cond_145

    .line 522
    :try_start_127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v24, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mNextWriteTime:J
    invoke-static/range {v24 .. v24}, Lcom/android/server/am/TaskPersister;->access$300(Lcom/android/server/am/TaskPersister;)J

    move-result-wide v24

    sub-long v24, v24, v14

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_140
    .catch Ljava/lang/InterruptedException; {:try_start_127 .. :try_end_140} :catch_278
    .catchall {:try_start_127 .. :try_end_140} :catchall_179

    .line 525
    :goto_140
    :try_start_140
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    goto :goto_119

    .line 529
    :cond_145
    monitor-exit v23
    :try_end_146
    .catchall {:try_start_140 .. :try_end_146} :catchall_179

    .line 531
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    move/from16 v22, v0

    if-eqz v22, :cond_1b1

    move-object v12, v13

    .line 532
    check-cast v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;

    .line 533
    .local v12, "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    iget-object v9, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilename:Ljava/lang/String;

    .line 534
    .local v9, "filename":Ljava/lang/String;
    iget-object v6, v12, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 536
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    .line 538
    .local v10, "imageFile":Ljava/io/FileOutputStream;
    :try_start_154
    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/android/server/am/TaskPersister;->sImagesDir:Ljava/io/File;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_166
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_166} :catch_180
    .catchall {:try_start_154 .. :try_end_166} :catchall_1aa

    .line 539
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .local v11, "imageFile":Ljava/io/FileOutputStream;
    :try_start_166
    sget-object v22, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v23, 0x64

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v6, v0, v1, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_171
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_171} :catch_274
    .catchall {:try_start_166 .. :try_end_171} :catchall_270

    .line 543
    if-eqz v11, :cond_27b

    .line 545
    :try_start_173
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_173 .. :try_end_176} :catch_17c

    move-object v10, v11

    .line 547
    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 529
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .end local v14    # "now":J
    :catchall_179
    move-exception v22

    :try_start_17a
    monitor-exit v23
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw v22

    .line 546
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v14    # "now":J
    :catch_17c
    move-exception v22

    move-object v10, v11

    .line 547
    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 540
    :catch_180
    move-exception v7

    .line 541
    .local v7, "e":Ljava/lang/Exception;
    :goto_181
    :try_start_181
    const-string v22, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "saveImage: unable to save "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a0
    .catchall {:try_start_181 .. :try_end_1a0} :catchall_1aa

    .line 543
    if-eqz v10, :cond_5

    .line 545
    :try_start_1a2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a5
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a5} :catch_1a7

    goto/16 :goto_5

    .line 546
    :catch_1a7
    move-exception v22

    goto/16 :goto_5

    .line 543
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_1aa
    move-exception v22

    :goto_1ab
    if-eqz v10, :cond_1b0

    .line 545
    :try_start_1ad
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b0
    .catch Ljava/io/IOException; {:try_start_1ad .. :try_end_1b0} :catch_265

    .line 547
    :cond_1b0
    :goto_1b0
    throw v22

    .line 550
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_1b1
    instance-of v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 552
    const/16 v18, 0x0

    .line 553
    .local v18, "stringWriter":Ljava/io/StringWriter;
    check-cast v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;

    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    iget-object v0, v13, Lcom/android/server/am/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/am/TaskRecord;

    move-object/from16 v19, v0

    .line 555
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/am/TaskPersister;->mService:Lcom/android/server/am/ActivityManagerService;
    invoke-static/range {v22 .. v22}, Lcom/android/server/am/TaskPersister;->access$100(Lcom/android/server/am/TaskPersister;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v23

    monitor-enter v23

    .line 556
    :try_start_1ca
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/TaskRecord;->inRecents:Z

    move/from16 v22, v0
    :try_end_1d0
    .catchall {:try_start_1ca .. :try_end_1d0} :catchall_262

    if-eqz v22, :cond_1e0

    .line 560
    :try_start_1d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/TaskPersister$LazyTaskWriterThread;->this$0:Lcom/android/server/am/TaskPersister;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/am/TaskPersister;->saveToXml(Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    invoke-static {v0, v1}, Lcom/android/server/am/TaskPersister;->access$400(Lcom/android/server/am/TaskPersister;Lcom/android/server/am/TaskRecord;)Ljava/io/StringWriter;
    :try_end_1df
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1df} :catch_26d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d2 .. :try_end_1df} :catch_26a
    .catchall {:try_start_1d2 .. :try_end_1df} :catchall_262

    move-result-object v18

    .line 565
    :cond_1e0
    :goto_1e0
    :try_start_1e0
    monitor-exit v23
    :try_end_1e1
    .catchall {:try_start_1e0 .. :try_end_1e1} :catchall_262

    .line 566
    if-eqz v18, :cond_5

    .line 568
    const/4 v8, 0x0

    .line 569
    .local v8, "file":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 571
    .local v4, "atomicFile":Landroid/util/AtomicFile;
    :try_start_1e5
    new-instance v5, Landroid/util/AtomicFile;

    new-instance v22, Ljava/io/File;

    sget-object v23, Lcom/android/server/am/TaskPersister;->sTasksDir:Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "_task"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ".xml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-direct {v5, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_1e5 .. :try_end_216} :catch_268

    .line 573
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v5, "atomicFile":Landroid/util/AtomicFile;
    :try_start_216
    invoke-virtual {v5}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 574
    invoke-virtual/range {v18 .. v18}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->getBytes()[B

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 575
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 576
    invoke-virtual {v5, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_231
    .catch Ljava/io/IOException; {:try_start_216 .. :try_end_231} :catch_233

    goto/16 :goto_5

    .line 577
    :catch_233
    move-exception v7

    move-object v4, v5

    .line 578
    .end local v5    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .local v7, "e":Ljava/io/IOException;
    :goto_235
    if-eqz v8, :cond_23a

    .line 579
    invoke-virtual {v4, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 581
    :cond_23a
    const-string v22, "TaskPersister"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to open "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " for persisting. "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 565
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catchall_262
    move-exception v22

    :try_start_263
    monitor-exit v23
    :try_end_264
    .catchall {:try_start_263 .. :try_end_264} :catchall_262

    throw v22

    .line 546
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catch_265
    move-exception v23

    goto/16 :goto_1b0

    .line 577
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .end local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    .restart local v4    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v8    # "file":Ljava/io/FileOutputStream;
    .restart local v18    # "stringWriter":Ljava/io/StringWriter;
    .restart local v19    # "task":Lcom/android/server/am/TaskRecord;
    :catch_268
    move-exception v7

    goto :goto_235

    .line 562
    .end local v4    # "atomicFile":Landroid/util/AtomicFile;
    .end local v8    # "file":Ljava/io/FileOutputStream;
    :catch_26a
    move-exception v22

    goto/16 :goto_1e0

    .line 561
    :catch_26d
    move-exception v22

    goto/16 :goto_1e0

    .line 543
    .end local v18    # "stringWriter":Ljava/io/StringWriter;
    .end local v19    # "task":Lcom/android/server/am/TaskRecord;
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    .restart local v13    # "item":Lcom/android/server/am/TaskPersister$WriteQueueItem;
    :catchall_270
    move-exception v22

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_1ab

    .line 540
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    :catch_274
    move-exception v7

    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_181

    .line 523
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "filename":Ljava/lang/String;
    .end local v10    # "imageFile":Ljava/io/FileOutputStream;
    .end local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :catch_278
    move-exception v22

    goto/16 :goto_140

    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v9    # "filename":Ljava/lang/String;
    .restart local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v12    # "imageWriteQueueItem":Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
    :cond_27b
    move-object v10, v11

    .end local v11    # "imageFile":Ljava/io/FileOutputStream;
    .restart local v10    # "imageFile":Ljava/io/FileOutputStream;
    goto/16 :goto_5
.end method
