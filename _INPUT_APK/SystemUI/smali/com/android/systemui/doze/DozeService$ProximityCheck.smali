.class abstract Lcom/android/systemui/doze/DozeService$ProximityCheck;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# static fields
.field protected static final RESULT_FAR:I = 0x2

.field protected static final RESULT_NEAR:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 2

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$800(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ProximityCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/doze/DozeService;Lcom/android/systemui/doze/DozeService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/doze/DozeService;
    .param p2, "x1"    # Lcom/android/systemui/doze/DozeService$1;

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/DozeService$ProximityCheck;-><init>(Lcom/android/systemui/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    .line 569
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 561
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$2400(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1700(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$2300(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setDisabled(Z)V

    .line 565
    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 567
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->onProximityResult(I)V

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mFinished:Z

    goto :goto_0
.end method


# virtual methods
.method public check()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 524
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 538
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1700(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 526
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_3

    .line 527
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    .line 532
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$2300(Lcom/android/systemui/doze/DozeService;)Lcom/android/systemui/doze/DozeService$TriggerSensor;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/doze/DozeService$TriggerSensor;->setDisabled(Z)V

    .line 534
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mMaxRange:F

    .line 535
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$1700(Lcom/android/systemui/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeService;->access$2400(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;

    move-result-object v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 536
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->access$2400(Lcom/android/systemui/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 537
    iput-boolean v6, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mRegistered:Z

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 574
    return-void
.end method

.method public abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 542
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v2, v2

    if-nez v2, :cond_1

    .line 543
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 550
    :goto_0
    return-void

    .line 546
    :cond_1
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mMaxRange:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_2
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v0

    iget v3, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mMaxRange:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    move v0, v1

    .line 548
    .local v0, "isNear":Z
    :cond_3
    if-eqz v0, :cond_4

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_1
.end method

.method public run()V
    .locals 2

    .prologue
    .line 554
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->access$700()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 556
    return-void
.end method
