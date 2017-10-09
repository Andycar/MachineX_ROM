.class Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;
.super Ljava/lang/Thread;
.source "FestivalSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameDrawThread"
.end annotation


# instance fields
.field public isRunning:Z

.field public isSuspended:Z

.field private mCount:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field public mMinInterval:I

.field private mTick:I

.field final synthetic this$0:Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView;Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mCount:I

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mTick:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mMinInterval:I

    iput-object p2, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized resumeThread()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->isSuspended:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 18

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->isRunning:Z

    if-eqz v14, :cond_7

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    monitor-enter p0

    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->isSuspended:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mTick:I

    if-lez v14, :cond_3

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mTick:I

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v14

    if-eqz v2, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mTick:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mTick:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mCount:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mCount:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mCount:I

    const/16 v15, 0x3c

    if-ne v14, v15, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide v14, 0x42374876e8000000L    # 1.0E11

    sub-long v16, v6, v12

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x404e000000000000L    # 60.0

    mul-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-double v14, v14

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v8, v14, v16

    const-string v14, "festival"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fps: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v12, v6

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mCount:I

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v14, v4, v10

    :try_start_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mMinInterval:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-gez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v14, v14

    add-long/2addr v14, v10

    sub-long/2addr v14, v4

    const-wide/16 v16, 0x96

    cmp-long v14, v14, v16

    if-lez v14, :cond_6

    const-wide/16 v14, 0x64

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->this$0:Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView;

    invoke-virtual {v14, v2}, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView;->drawFrame(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    if-eqz v2, :cond_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v14, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v14

    :catchall_1
    move-exception v14

    if-eqz v2, :cond_5

    :try_start_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v15, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_6
    :try_start_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mMinInterval:I

    int-to-long v14, v14

    add-long/2addr v14, v10

    sub-long/2addr v14, v4

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public suspendThread()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->mTick:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/sec/festivaleffect/common/FestivalSurfaceView$FrameDrawThread;->isSuspended:Z

    return-void
.end method
