.class Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V
    .registers 2

    .prologue
    .line 577
    iput-object p1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 605
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v9, 0x2

    .line 580
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-nez v0, :cond_43

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 583
    .local v2, "time":J
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->getRgbFromLightSensor()V
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    .line 584
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorValueValid:Z
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 585
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorR:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v4

    .line 586
    .local v4, "r":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorG:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v5

    .line 587
    .local v5, "g":I
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorB:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v6

    .line 588
    .local v6, "b":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v7, v0

    .line 589
    .local v7, "lux":I
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    float-to-int v8, v0

    .line 591
    .local v8, "cct":I
    iget-object v1, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->handleRgbSensorEvent(JIIIII)V
    invoke-static/range {v1 .. v8}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;JIIIII)V

    .line 593
    .end local v4    # "r":I
    .end local v5    # "g":I
    .end local v6    # "b":I
    .end local v7    # "lux":I
    .end local v8    # "cct":I
    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    .line 601
    .end local v2    # "time":J
    :goto_42
    return-void

    .line 595
    :cond_43
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-gt v0, v9, :cond_59

    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    move-result v0

    if-lez v0, :cond_59

    .line 596
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # operator-- for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1110(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)I

    goto :goto_42

    .line 599
    :cond_59
    iget-object v0, p0, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$2;->this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # setter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mLightSensorDelay:I
    invoke-static {v0, v9}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$1102(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;I)I

    goto :goto_42
.end method
