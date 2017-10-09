.class Lcom/android/server/display/AutomaticBrightnessController$1;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SAMPLING_PERIOD_MS:I = 0xc8


# instance fields
.field private mAccelerationDistrust:I

.field private mCnt:I

.field private mTiltDistrust:I

.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 830
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 839
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    .line 840
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mTiltDistrust:I

    .line 841
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mCnt:I

    return-void
.end method

.method private handleAccelerationDistrust(F)V
    .registers 4
    .param p1, "deviation"    # F

    .prologue
    .line 859
    const/high16 v0, 0x3fc00000    # 1.5f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_12

    .line 860
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_11

    .line 861
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    .line 866
    :cond_11
    :goto_11
    return-void

    .line 863
    :cond_12
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    if-lez v0, :cond_11

    .line 864
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    goto :goto_11
.end method

.method private lowpassFilter(FFF)F
    .registers 6
    .param p1, "newValue"    # F
    .param p2, "oldValue"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 844
    mul-float v0, p3, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .registers 5
    .param p1, "z"    # F
    .param p2, "magnitude"    # F

    .prologue
    .line 855
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 847
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .registers 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 899
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .registers 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 877
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v4, v7, v8

    .line 878
    .local v4, "x":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v5, v7, v8

    .line 879
    .local v5, "y":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v6, v7, v8

    .line 880
    .local v6, "z":F
    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/display/AutomaticBrightnessController$1;->vectorMagnitude(FFF)F

    move-result v2

    .line 881
    .local v2, "magnitude":F
    const v7, 0x411ce80a

    sub-float v7, v2, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 883
    .local v1, "deviation":F
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController$1;->handleAccelerationDistrust(F)V

    .line 884
    const/high16 v7, 0x3fc00000    # 1.5f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_26

    .line 895
    :goto_25
    return-void

    .line 889
    :cond_26
    const/high16 v0, 0x3f800000    # 1.0f

    .line 890
    .local v0, "alpha":F
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->mAccelerationDistrust:I

    if-lez v7, :cond_2f

    .line 891
    const v0, 0x3dba2e8c

    .line 893
    :cond_2f
    invoke-direct {p0, v6, v2}, Lcom/android/server/display/AutomaticBrightnessController$1;->tiltAngle(FF)F

    move-result v3

    .line 894
    .local v3, "newTiltAngle":F
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-object v8, p0, Lcom/android/server/display/AutomaticBrightnessController$1;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # getter for: Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F
    invoke-static {v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$000(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v8

    invoke-direct {p0, v3, v8, v0}, Lcom/android/server/display/AutomaticBrightnessController$1;->lowpassFilter(FFF)F

    move-result v8

    # setter for: Lcom/android/server/display/AutomaticBrightnessController;->mTiltAngle:F
    invoke-static {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController;->access$002(Lcom/android/server/display/AutomaticBrightnessController;F)F

    goto :goto_25
.end method
