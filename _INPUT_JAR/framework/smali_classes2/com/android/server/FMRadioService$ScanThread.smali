.class Lcom/android/server/FMRadioService$ScanThread;
.super Ljava/lang/Thread;
.source "FMRadioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FMRadioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private scanCount:I

.field final synthetic this$0:Lcom/android/server/FMRadioService;


# direct methods
.method constructor <init>(Lcom/android/server/FMRadioService;)V
    .registers 2

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private doScan()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const-wide/16 v10, 0x0

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2799
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v6, :cond_bb

    .line 2800
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_ad

    .line 2801
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2900(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x1a5e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    .line 2808
    :goto_21
    iget v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/FMRadioService$ScanThread;->scanCount:I

    .line 2810
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v9, :cond_39

    .line 2811
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2, v10, v11}, Lcom/android/server/FMRadioService;->access$3402(Lcom/android/server/FMRadioService;J)J

    .line 2812
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v2, v10, v11}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;J)J

    .line 2814
    :cond_39
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2815
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2900(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/FMPlayerNative;->setScanning(Z)V

    .line 2817
    :cond_4e
    :goto_4e
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1400(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_10f

    .line 2819
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v2}, Lcom/android/server/FMRadioService;->searchAll()J

    move-result-wide v0

    .line 2820
    .local v0, "freq":J
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 2821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2823
    :cond_78
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-eq v2, v9, :cond_c9

    .line 2824
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 2825
    # getter for: Lcom/android/server/FMRadioService;->DEBUGGABLE:Z
    invoke-static {}, Lcom/android/server/FMRadioService;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 2826
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate channel :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_4e

    .line 2803
    .end local v0    # "freq":J
    :cond_ad
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2900(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x155cc

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto/16 :goto_21

    .line 2806
    :cond_bb
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2900(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    const-wide/32 v4, 0x128e0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/FMPlayerNative;->tune(J)V

    goto/16 :goto_21

    .line 2832
    .restart local v0    # "freq":J
    :cond_c9
    cmp-long v2, v0, v10

    if-lez v2, :cond_1eb

    .line 2833
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$1600(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-gtz v2, :cond_dc

    .line 2834
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;J)J

    .line 2837
    :cond_dc
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mChipVendor:I
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$300(Lcom/android/server/FMRadioService;)I

    move-result v2

    if-ne v2, v9, :cond_172

    .line 2838
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v2, v0, v1}, Lcom/android/server/FMRadioService;->access$3502(Lcom/android/server/FMRadioService;J)J

    .line 2839
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3400(Lcom/android/server/FMRadioService;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_125

    .line 2840
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2844
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 2886
    .end local v0    # "freq":J
    :cond_10f
    :goto_10f
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_124

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_124

    .line 2887
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPlayerNative:Lcom/android/server/FMPlayerNative;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$2900(Lcom/android/server/FMRadioService;)Lcom/android/server/FMPlayerNative;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/server/FMPlayerNative;->setScanning(Z)V

    .line 2888
    :cond_124
    return-void

    .line 2847
    .restart local v0    # "freq":J
    :cond_125
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCurrentFoundFreq:J
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3500(Lcom/android/server/FMRadioService;)J

    move-result-wide v4

    # setter for: Lcom/android/server/FMRadioService;->mPreviousFoundFreq:J
    invoke-static {v2, v4, v5}, Lcom/android/server/FMRadioService;->access$3402(Lcom/android/server/FMRadioService;J)J

    .line 2848
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2850
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_4e

    .line 2852
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 2853
    :try_start_161
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2854
    monitor-exit v3

    goto/16 :goto_4e

    :catchall_16f
    move-exception v2

    monitor-exit v3
    :try_end_171
    .catchall {:try_start_161 .. :try_end_171} :catchall_16f

    throw v2

    .line 2858
    :cond_172
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2859
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v6, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2860
    sget-boolean v2, Lcom/android/server/FMRadioServiceFeature;->FEATURE_DISABLEDNS:Z

    if-nez v2, :cond_1af

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mWaitPidDuringScanning:Z
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3600(Lcom/android/server/FMRadioService;)Z

    move-result v2

    if-eqz v2, :cond_1af

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    if-eqz v2, :cond_1af

    .line 2862
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v3

    monitor-enter v3

    .line 2863
    :try_start_1a3
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v2}, Lcom/android/server/FMRadioService;->access$3800(Lcom/android/server/FMRadioService;)Ljava/lang/Thread;

    move-result-object v2

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2864
    monitor-exit v3
    :try_end_1af
    .catchall {:try_start_1a3 .. :try_end_1af} :catchall_1e8

    .line 2866
    :cond_1af
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-eq v2, v6, :cond_1bc

    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c3

    :cond_1bc
    const-wide/32 v2, 0x1a5e0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1d0

    :cond_1c3
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget v2, v2, Lcom/android/server/FMRadioService;->mBand:I

    if-ne v2, v8, :cond_4e

    const-wide/32 v2, 0x15f90

    cmp-long v2, v0, v2

    if-nez v2, :cond_4e

    .line 2868
    :cond_1d0
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2872
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_10f

    .line 2864
    :catchall_1e8
    move-exception v2

    :try_start_1e9
    monitor-exit v3
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_1e8

    throw v2

    .line 2878
    :cond_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Testmode Skipp value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2879
    iget-object v2, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2882
    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_10f
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x0

    .line 2891
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    # setter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$4002(Lcom/android/server/FMRadioService;I)I

    .line 2894
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$4100(Lcom/android/server/FMRadioService;)Landroid/os/PowerManager;

    move-result-object v3

    const v4, 0x20000001

    const-string v5, "FMRadio Service Scan Thread"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 2896
    .local v2, "wakelock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2897
    const-string v3, "Scan thread gets the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2899
    :try_start_2a
    const-string v3, "Scanning Thread started..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2900
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/server/FMRadioService;->notifyEvent(ILjava/lang/Object;)V

    .line 2902
    const-string v1, "fmradio_turnon=false"

    .line 2903
    .local v1, "keyValuePairs":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2904
    const-string v3, "Scanning Thread started... - Turning off FM"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2906
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    invoke-virtual {v4}, Lcom/android/server/FMRadioService;->getCurrentChannel()J

    move-result-wide v4

    # setter for: Lcom/android/server/FMRadioService;->mScanFreq:J
    invoke-static {v3, v4, v5}, Lcom/android/server/FMRadioService;->access$1602(Lcom/android/server/FMRadioService;J)J

    .line 2908
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_fe

    .line 2909
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/android/server/FMRadioService;->access$3702(Lcom/android/server/FMRadioService;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 2913
    :goto_63
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mIsSkipTunigVal:Z
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3900(Lcom/android/server/FMRadioService;)Z

    move-result v3

    if-eqz v3, :cond_b2

    .line 2915
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mRssi_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mSnr_th:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCnt_th:I
    invoke-static {v6}, Lcom/android/server/FMRadioService;->access$4400(Lcom/android/server/FMRadioService;)I

    move-result v6

    # invokes: Lcom/android/server/FMRadioService;->setSignalSetting(III)V
    invoke-static {v3, v4, v5, v6}, Lcom/android/server/FMRadioService;->access$4500(Lcom/android/server/FMRadioService;III)V

    .line 2916
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "first scan no block channel with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mRssi_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4200(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mSnr_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4300(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mCnt_th:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4400(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2919
    :cond_b2
    invoke-direct {p0}, Lcom/android/server/FMRadioService$ScanThread;->doScan()V
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_b5} :catch_109
    .catchall {:try_start_2a .. :try_end_b5} :catchall_151

    .line 2925
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;Z)Z

    .line 2926
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v3, v9}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2929
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v8, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2933
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 2934
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2935
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2938
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_f8
    :goto_f8
    const-string v3, "Scanning Thread work is done..."

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2940
    return-void

    .line 2911
    .restart local v1    # "keyValuePairs":Ljava/lang/String;
    :cond_fe
    :try_start_fe
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanChannelList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$3700(Lcom/android/server/FMRadioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_107} :catch_109
    .catchall {:try_start_fe .. :try_end_107} :catchall_151

    goto/16 :goto_63

    .line 2921
    .end local v1    # "keyValuePairs":Ljava/lang/String;
    :catch_109
    move-exception v0

    .line 2923
    .local v0, "e":Ljava/lang/Exception;
    :try_start_10a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10d
    .catchall {:try_start_10a .. :try_end_10d} :catchall_151

    .line 2925
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;Z)Z

    .line 2926
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v3, v9}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2928
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scan Thread resuming volume :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2929
    iget-object v3, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)I

    move-result v4

    invoke-virtual {v3, v8, v4, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2933
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 2934
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2935
    const-string v3, "Scan thread released the dimmed screen lock"

    invoke-static {v3}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    goto :goto_f8

    .line 2925
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_151
    move-exception v3

    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanProgress:Z
    invoke-static {v4, v7}, Lcom/android/server/FMRadioService;->access$1402(Lcom/android/server/FMRadioService;Z)Z

    .line 2926
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # setter for: Lcom/android/server/FMRadioService;->mScanThread:Ljava/lang/Thread;
    invoke-static {v4, v9}, Lcom/android/server/FMRadioService;->access$3802(Lcom/android/server/FMRadioService;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 2928
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scan Thread resuming volume :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    .line 2929
    iget-object v4, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/server/FMRadioService;->access$100(Lcom/android/server/FMRadioService;)Landroid/media/AudioManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/FMRadioService$ScanThread;->this$0:Lcom/android/server/FMRadioService;

    # getter for: Lcom/android/server/FMRadioService;->mScanVolume:I
    invoke-static {v5}, Lcom/android/server/FMRadioService;->access$4000(Lcom/android/server/FMRadioService;)I

    move-result v5

    invoke-virtual {v4, v8, v5, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 2933
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_195

    .line 2934
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2935
    const-string v4, "Scan thread released the dimmed screen lock"

    invoke-static {v4}, Lcom/android/server/FMRadioService;->log(Ljava/lang/String;)V

    :cond_195
    throw v3
.end method
