.class public Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;
.super Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;
.source "AirMotionImpl.java"


# static fields
.field private static final GESTURE_SENSOR_AMS:I = 0x3

.field private static final GESTURE_SENSOR_MAXIM_VER_1:I = 0x1

.field private static final GESTURE_SENSOR_MAXIM_VER_2:I = 0x2

.field private static final GESTURE_SPEED_LEVEL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SContext.AirMotionImpl"


# instance fields
.field private final GESTURE_VALID_COUNT_RANGE_AMS:[I

.field private final mDirections:[Ljava/lang/String;

.field private final mFeatureLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/hardware/scontext/provider/EventListener;
    .param p3, "featureLevel"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 57
    invoke-direct {p0, p1, p2, v3, v4}, Landroid/hardware/scontext/provider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/hardware/scontext/provider/EventListener;II)V

    .line 41
    new-array v0, v3, [I

    fill-array-data v0, :array_2c

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    .line 45
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    const-string v1, "Right"

    aput-object v1, v0, v4

    const-string v1, "Left"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "Down"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Up"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mDirections:[Ljava/lang/String;

    .line 59
    iput p3, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mFeatureLevel:I

    .line 60
    return-void

    .line 41
    nop

    :array_2c
    .array-data 4
        0x5
        0xc8
    .end array-data
.end method

.method private getDirection(F)I
    .registers 4
    .param p1, "value"    # F

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, "direction":I
    iget v1, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mFeatureLevel:I

    packed-switch v1, :pswitch_data_22

    .line 156
    :goto_6
    return v0

    .line 124
    :pswitch_7
    float-to-int v1, p1

    int-to-char v1, v1

    sparse-switch v1, :sswitch_data_2c

    goto :goto_6

    .line 132
    :sswitch_d
    const/4 v0, 0x2

    .line 133
    goto :goto_6

    .line 126
    :sswitch_f
    const/4 v0, 0x3

    .line 127
    goto :goto_6

    .line 129
    :sswitch_11
    const/4 v0, 0x4

    .line 130
    goto :goto_6

    .line 135
    :sswitch_13
    const/4 v0, 0x1

    goto :goto_6

    .line 140
    :pswitch_15
    float-to-int v1, p1

    packed-switch v1, :pswitch_data_3e

    goto :goto_6

    .line 151
    :pswitch_1a
    const/4 v0, 0x1

    goto :goto_6

    .line 142
    :pswitch_1c
    const/4 v0, 0x3

    .line 143
    goto :goto_6

    .line 145
    :pswitch_1e
    const/4 v0, 0x4

    .line 146
    goto :goto_6

    .line 148
    :pswitch_20
    const/4 v0, 0x2

    .line 149
    goto :goto_6

    .line 121
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_15
    .end packed-switch

    .line 124
    :sswitch_data_2c
    .sparse-switch
        0x44 -> :sswitch_d
        0x4c -> :sswitch_11
        0x52 -> :sswitch_f
        0x55 -> :sswitch_13
    .end sparse-switch

    .line 140
    :pswitch_data_3e
    .packed-switch 0x2
        :pswitch_1a
        :pswitch_20
        :pswitch_1c
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public parse(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 16
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x2

    const/high16 v13, 0x43b40000    # 360.0f

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 73
    const-string v8, "Values"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v7

    .line 74
    .local v7, "values":[F
    aget v8, v7, v9

    float-to-int v0, v8

    .line 75
    .local v0, "angle":I
    aget v8, v7, v10

    invoke-direct {p0, v8}, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->getDirection(F)I

    move-result v3

    .line 76
    .local v3, "direction":I
    const/4 v5, -0x1

    .line 77
    .local v5, "speed":I
    new-array v4, v9, [I

    .line 78
    .local v4, "range":[I
    const/4 v6, -0x1

    .line 80
    .local v6, "valid_cnt":I
    iget v8, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mFeatureLevel:I

    packed-switch v8, :pswitch_data_b2

    .line 100
    :goto_1e
    if-lez v6, :cond_38

    .line 101
    aget v8, v4, v11

    if-le v6, v8, :cond_aa

    .line 102
    aget v6, v4, v11

    .line 106
    :cond_26
    :goto_26
    aget v8, v4, v11

    aget v9, v4, v10

    if-eq v8, v9, :cond_38

    .line 107
    aget v8, v4, v11

    sub-int/2addr v8, v6

    mul-int/lit8 v8, v8, 0x64

    aget v9, v4, v11

    aget v10, v4, v10

    sub-int/2addr v9, v10

    div-int v5, v8, v9

    .line 110
    :cond_38
    const-string v8, "Angle"

    invoke-virtual {p1, v8, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v8, "Direction"

    invoke-virtual {p1, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v8, "Speed"

    invoke-virtual {p1, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    const-string v8, "SContext.AirMotionImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "parse() : Angle = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Direction = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->mDirections:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", Speed = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local p1    # "context":Landroid/os/Bundle;
    :goto_78
    return-object p1

    .line 82
    .restart local p1    # "context":Landroid/os/Bundle;
    :pswitch_79
    const/high16 v1, 0x42a00000    # 80.0f

    .line 83
    .local v1, "angleDiffThrs":F
    const/4 v8, 0x3

    aget v8, v7, v8

    const/4 v9, 0x4

    aget v9, v7, v9

    sub-float v2, v8, v9

    .line 84
    .local v2, "diffAngle":F
    cmpg-float v8, v2, v12

    if-gez v8, :cond_88

    .line 85
    add-float/2addr v2, v13

    .line 87
    :cond_88
    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v8, v2, v8

    if-lez v8, :cond_90

    .line 88
    sub-float v2, v13, v2

    .line 90
    :cond_90
    cmpl-float v8, v2, v12

    if-ltz v8, :cond_a2

    cmpg-float v8, v2, v1

    if-gtz v8, :cond_a2

    .line 91
    const-string v8, "SContext.AirMotionImpl"

    const-string/jumbo v9, "onGetSensorHubData() : AirMotion : The difference of exit and enter angle is below threshold!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 p1, 0x0

    goto :goto_78

    .line 95
    :cond_a2
    iget-object v4, p0, Landroid/hardware/scontext/provider/sensorhubprovider/AirMotionImpl;->GESTURE_VALID_COUNT_RANGE_AMS:[I

    .line 96
    const/4 v8, 0x7

    aget v8, v7, v8

    float-to-int v6, v8

    goto/16 :goto_1e

    .line 103
    .end local v1    # "angleDiffThrs":F
    .end local v2    # "diffAngle":F
    :cond_aa
    aget v8, v4, v10

    if-ge v6, v8, :cond_26

    .line 104
    aget v6, v4, v10

    goto/16 :goto_26

    .line 80
    :pswitch_data_b2
    .packed-switch 0x3
        :pswitch_79
    .end packed-switch
.end method
