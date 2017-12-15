.class Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;
.super Landroid/os/Handler;
.source "LppAggregator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->test()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;Landroid/os/Looper;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v10, 0xabaa

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 369
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 370
    iget v6, p1, Landroid/os/Message;->what:I

    if-ne v6, v10, :cond_63

    .line 371
    const-string v6, "LppAggregator"

    const-string/jumbo v7, "send apdr"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    const/4 v6, 0x1

    if-ge v1, v6, :cond_5a

    .line 375
    const-wide/16 v4, 0x0

    .line 376
    .local v4, "sumTimeDiff":J
    const/4 v0, 0x0

    .line 378
    .local v0, "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .end local v0    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .line 379
    .restart local v0    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iput-wide v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepFlag:D

    .line 380
    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v4

    iput-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    .line 384
    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->mag:[D

    const/4 v7, 0x3

    aput-wide v8, v6, v7

    .line 386
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 387
    .local v3, "rand":Ljava/util/Random;
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iget-object v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mStatus:[I

    array-length v7, v7

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    aget v6, v6, v7

    iput v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .line 388
    const/4 v6, 0x0

    iput v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->carryPos:I

    .line 390
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 392
    .end local v0    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    .end local v3    # "rand":Ljava/util/Random;
    .end local v4    # "sumTimeDiff":J
    :cond_5a
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->mLPPFusion:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    invoke-static {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->notifyApdrData(Ljava/util/ArrayList;)V

    .line 394
    .end local v1    # "i":I
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_63
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator$2;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;

    iget-object v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppAggregator;->sendApdr:Landroid/os/Handler;

    const-wide/16 v8, 0x61a8

    invoke-virtual {v6, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 395
    return-void
.end method
