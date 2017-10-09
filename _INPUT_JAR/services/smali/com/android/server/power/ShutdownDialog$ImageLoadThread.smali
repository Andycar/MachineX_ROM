.class Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
.super Lcom/android/server/power/ShutdownDialog$RunningCheckable;
.source "ShutdownDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoadThread"
.end annotation


# instance fields
.field private coverOpen:Z

.field private coverStateDirty:Z

.field private mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 3

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog$RunningCheckable;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    .line 419
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    .line 420
    new-instance v0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread$1;-><init>(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$ImageLoadThread;

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
    .param p1, "x1"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/server/power/ShutdownDialog$ImageLoadThread;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog$ImageLoadThread;
    .param p1, "x1"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    return p1
.end method

.method private chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;
    .registers 8
    .param p1, "currentQmg"    # Lcom/android/server/power/LibQmg;
    .param p2, "normalQmg"    # Lcom/android/server/power/LibQmg;
    .param p3, "coverQmg"    # Lcom/android/server/power/LibQmg;

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    .line 516
    .local v0, "coverStateOpen":Z
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    .line 517
    if-eqz v0, :cond_9

    if-eq p1, p2, :cond_d

    :cond_9
    if-nez v0, :cond_f

    if-ne p1, p3, :cond_f

    :cond_d
    move-object v1, p1

    .line 528
    .end local p1    # "currentQmg":Lcom/android/server/power/LibQmg;
    .local v1, "currentQmg":Lcom/android/server/power/LibQmg;
    :goto_e
    return-object v1

    .line 521
    .end local v1    # "currentQmg":Lcom/android/server/power/LibQmg;
    .restart local p1    # "currentQmg":Lcom/android/server/power/LibQmg;
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->getCurrentFrame()I

    move-result v2

    .line 522
    .local v2, "frameNum":I
    if-eqz v0, :cond_1b

    .line 523
    move-object p1, p2

    .line 527
    :cond_16
    :goto_16
    invoke-virtual {p1, v2}, Lcom/android/server/power/LibQmg;->setCurrentFrame(I)I

    move-object v1, p1

    .line 528
    .end local p1    # "currentQmg":Lcom/android/server/power/LibQmg;
    .restart local v1    # "currentQmg":Lcom/android/server/power/LibQmg;
    goto :goto_e

    .line 524
    .end local v1    # "currentQmg":Lcom/android/server/power/LibQmg;
    .restart local p1    # "currentQmg":Lcom/android/server/power/LibQmg;
    :cond_1b
    if-nez v0, :cond_16

    .line 525
    move-object p1, p3

    goto :goto_16
.end method

.method private frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V
    .registers 11
    .param p1, "normalQmg"    # Lcom/android/server/power/LibQmg;
    .param p2, "coverQmg"    # Lcom/android/server/power/LibQmg;

    .prologue
    .line 474
    move-object v2, p1

    .line 475
    .local v2, "qmg":Lcom/android/server/power/LibQmg;
    if-eqz p2, :cond_d

    # getter for: Lcom/android/server/power/ShutdownDialog;->NO_COVERDIALOG:Z
    invoke-static {}, Lcom/android/server/power/ShutdownDialog;->access$2300()Z

    move-result v3

    if-nez v3, :cond_d

    .line 476
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v2

    .line 479
    :cond_d
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->ensureQmgHandle()V

    .line 480
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getDelayTime()I

    move-result v4

    add-int/lit8 v4, v4, 0x64

    invoke-virtual {v3, v4}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    .line 481
    const-string v3, "ShutdownDialog"

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/4 v1, 0x1

    .line 483
    .local v1, "len":I
    :goto_29
    if-lez v1, :cond_a6

    .line 484
    if-eqz p2, :cond_3b

    iget-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverStateDirty:Z

    if-eqz v3, :cond_3b

    # getter for: Lcom/android/server/power/ShutdownDialog;->NO_COVERDIALOG:Z
    invoke-static {}, Lcom/android/server/power/ShutdownDialog;->access$2300()Z

    move-result v3

    if-nez v3, :cond_3b

    .line 485
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->chooseQmg(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)Lcom/android/server/power/LibQmg;

    move-result-object v2

    .line 488
    :cond_3b
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/power/LibQmg;->loadFrame(Landroid/graphics/Bitmap;)I
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_4c} :catch_9d

    move-result v1

    .line 493
    const-string v3, "ShutdownDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load frame: ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 496
    :try_start_6c
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    rem-int/lit8 v5, v5, 0x3

    # setter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v3, v5}, Lcom/android/server/power/ShutdownDialog;->access$2402(Lcom/android/server/power/ShutdownDialog;I)I

    .line 497
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2400(Lcom/android/server/power/ShutdownDialog;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0x3

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I
    invoke-static {v5}, Lcom/android/server/power/ShutdownDialog;->access$2600(Lcom/android/server/power/ShutdownDialog;)I
    :try_end_8a
    .catchall {:try_start_6c .. :try_end_8a} :catchall_9a

    move-result v5

    if-ne v3, v5, :cond_98

    .line 499
    :try_start_8d
    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/power/ShutdownDialog;->access$2500(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object v3

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_98
    .catch Ljava/lang/InterruptedException; {:try_start_8d .. :try_end_98} :catch_af
    .catchall {:try_start_8d .. :try_end_98} :catchall_9a

    .line 504
    :cond_98
    :goto_98
    :try_start_98
    monitor-exit v4

    goto :goto_29

    :catchall_9a
    move-exception v3

    monitor-exit v4
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9a

    throw v3

    .line 489
    :catch_9d
    move-exception v0

    .line 490
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ShutdownDialog"

    const-string/jumbo v4, "qmgLoadFrame return < 0"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 506
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a6
    invoke-virtual {p1}, Lcom/android/server/power/LibQmg;->close()I

    .line 507
    if-eqz p2, :cond_ae

    .line 508
    invoke-virtual {p2}, Lcom/android/server/power/LibQmg;->close()I

    .line 510
    :cond_ae
    return-void

    .line 500
    :catch_af
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_b0
    const-string v3, "ShutdownDialog"

    const-string v5, "InterruptedException"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b7
    .catchall {:try_start_b0 .. :try_end_b7} :catchall_9a

    goto :goto_98
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 434
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "coverManager":Lcom/samsung/android/cover/CoverManager;
    if-eqz v0, :cond_1b

    .line 436
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->getSCoverState(Lcom/samsung/android/cover/CoverManager;)Z
    invoke-static {v4, v0}, Lcom/android/server/power/ShutdownDialog;->access$1900(Lcom/android/server/power/ShutdownDialog;Lcom/samsung/android/cover/CoverManager;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->coverOpen:Z

    .line 437
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 440
    :cond_1b
    const-string v4, "ShutdownDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ImageLoadThread.run(), qmgList.size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    .line 444
    :goto_46
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_82

    .line 445
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    .line 446
    .local v3, "qmg":Lcom/android/server/power/LibQmg;
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 447
    .local v1, "coverQmg":Lcom/android/server/power/LibQmg;
    invoke-direct {p0, v3, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 448
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 449
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 450
    const/4 v3, 0x0

    .line 451
    const/4 v1, 0x0

    goto :goto_46

    .line 455
    .end local v1    # "coverQmg":Lcom/android/server/power/LibQmg;
    .end local v3    # "qmg":Lcom/android/server/power/LibQmg;
    :cond_82
    iput-boolean v7, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->running:Z

    .line 456
    new-instance v4, Ljava/io/File;

    const-string v5, "//system/media/shutdownloop.qmg"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    .line 457
    .local v2, "loopFileExists":Z
    :goto_8f
    if-eqz v2, :cond_d0

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->doLoopAnim:Z
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2100(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v4

    if-eqz v4, :cond_d0

    .line 458
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    const-string v5, "//system/media/shutdownloop.qmg"

    # invokes: Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/power/ShutdownDialog;->access$2200(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z

    .line 459
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/LibQmg;

    .line 460
    .restart local v3    # "qmg":Lcom/android/server/power/LibQmg;
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 461
    .restart local v1    # "coverQmg":Lcom/android/server/power/LibQmg;
    invoke-direct {p0, v3, v1}, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->frameLoadLoop(Lcom/android/server/power/LibQmg;Lcom/android/server/power/LibQmg;)V

    .line 462
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 463
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->coverQmgList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 464
    const/4 v3, 0x0

    .line 465
    const/4 v1, 0x0

    goto :goto_8f

    .line 467
    .end local v1    # "coverQmg":Lcom/android/server/power/LibQmg;
    .end local v3    # "qmg":Lcom/android/server/power/LibQmg;
    :cond_d0
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;
    invoke-static {v4}, Lcom/android/server/power/ShutdownDialog;->access$1300(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->sendEmptyMessage(I)Z

    .line 468
    if-eqz v0, :cond_e1

    .line 469
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog$ImageLoadThread;->mCoverListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v4}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 471
    :cond_e1
    return-void
.end method
