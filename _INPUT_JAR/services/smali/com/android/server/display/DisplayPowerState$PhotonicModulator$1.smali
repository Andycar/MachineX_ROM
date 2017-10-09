.class Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerState$PhotonicModulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)V
    .registers 2

    .prologue
    .line 513
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 516
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    # getter for: Lcom/android/server/display/DisplayPowerState;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState;->access$1400(Lcom/android/server/display/DisplayPowerState;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 517
    :try_start_9
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->blankUnblankRunnableExcuteTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$1700(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string v3, "mrequestDisplayStateRunnable is running now. "

    const-wide/16 v4, 0xa

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 518
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->this$0:Lcom/android/server/display/DisplayPowerState;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/display/DisplayPowerState;->mPendingrequestDisplayState:Z
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerState;->access$1502(Lcom/android/server/display/DisplayPowerState;Z)Z

    .line 519
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    .line 521
    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mBlanked:Z
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$1800(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 522
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 523
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mRequestingState:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)I

    move-result v3

    # invokes: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->requestDisplayState(I)V
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;I)V

    .line 524
    const-string v1, "mPhotonicModulator.requestDisplayState(mRequestingState)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 531
    :goto_40
    monitor-exit v2

    .line 532
    return-void

    .line 527
    :cond_42
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 528
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerState$PhotonicModulator$1;->this$1:Lcom/android/server/display/DisplayPowerState$PhotonicModulator;

    # getter for: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->mRequestingState:I
    invoke-static {v3}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$1900(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;)I

    move-result v3

    # invokes: Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->requestDisplayState(I)V
    invoke-static {v1, v3}, Lcom/android/server/display/DisplayPowerState$PhotonicModulator;->access$2000(Lcom/android/server/display/DisplayPowerState$PhotonicModulator;I)V

    .line 529
    const-string v1, "mPhotonicModulator.requestDisplayState(mRequestingState)"

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    goto :goto_40

    .line 531
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :catchall_58
    move-exception v1

    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_9 .. :try_end_5a} :catchall_58

    throw v1
.end method
