.class Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
.super Ljava/lang/Object;
.source "PositionContextBean.java"


# static fields
.field static final FUSED_TYPE:I = 0x3

.field static final GPS_TYPE:I = 0x1

.field static final NONE_TYPE:I = 0x0

.field static final WPS_TYPE:I = 0x2


# instance fields
.field private accuracy:F

.field private altitude:D

.field private distance:D

.field private latitude:D

.field private longitude:D

.field private satelliteCount:I

.field private speed:F

.field private type:I

.field private utcTime:[I


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->clearPosition()V

    .line 71
    return-void
.end method

.method constructor <init>(F)V
    .registers 2
    .param p1, "accuracy"    # F

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->clearPosition()V

    .line 81
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 82
    return-void
.end method

.method static final calculationDistance(DDDD)D
    .registers 16
    .param p0, "preLatitude"    # D
    .param p2, "preLongitude"    # D
    .param p4, "curLatitude"    # D
    .param p6, "curLongitude"    # D

    .prologue
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    .line 323
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 324
    .local v0, "distance":D
    cmpl-double v2, p0, v4

    if-ltz v2, :cond_1f

    cmpl-double v2, p2, v4

    if-ltz v2, :cond_1f

    .line 325
    sub-double v2, p4, p0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    sub-double v4, p6, p2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 328
    :cond_1f
    return-wide v0
.end method


# virtual methods
.method final clearPosition()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 88
    iput v1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    .line 90
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    .line 91
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    .line 92
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    .line 93
    iput-wide v2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    .line 95
    const/high16 v0, 0x447a0000    # 1000.0f

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 96
    iput v1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    .line 97
    return-void
.end method

.method final getAccuracy()F
    .registers 2

    .prologue
    .line 275
    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    return v0
.end method

.method final getAltitude()D
    .registers 3

    .prologue
    .line 218
    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    return-wide v0
.end method

.method final getDistance()D
    .registers 3

    .prologue
    .line 237
    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    return-wide v0
.end method

.method final getLatitude()D
    .registers 3

    .prologue
    .line 180
    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    return-wide v0
.end method

.method final getLongitude()D
    .registers 3

    .prologue
    .line 199
    iget-wide v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    return-wide v0
.end method

.method final getSatelliteCount()I
    .registers 2

    .prologue
    .line 294
    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    return v0
.end method

.method final getSpeed()F
    .registers 2

    .prologue
    .line 256
    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    return v0
.end method

.method final getType()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    return v0
.end method

.method final getUtcTime()[I
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    return-object v0
.end method

.method final setAccuracy(F)V
    .registers 2
    .param p1, "accuracy"    # F

    .prologue
    .line 285
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 286
    return-void
.end method

.method final setAltitude(D)V
    .registers 4
    .param p1, "altitude"    # D

    .prologue
    .line 228
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    .line 229
    return-void
.end method

.method final setDistance(D)V
    .registers 4
    .param p1, "distance"    # D

    .prologue
    .line 247
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    .line 248
    return-void
.end method

.method final setLatitude(D)V
    .registers 4
    .param p1, "latitude"    # D

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    .line 191
    return-void
.end method

.method final setLongitude(D)V
    .registers 4
    .param p1, "longitude"    # D

    .prologue
    .line 209
    iput-wide p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    .line 210
    return-void
.end method

.method final setPosition(I[IDDDDFFI)V
    .registers 15
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    .line 126
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    .line 127
    iput-wide p3, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->latitude:D

    .line 128
    iput-wide p5, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->longitude:D

    .line 129
    iput-wide p7, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->altitude:D

    .line 130
    iput-wide p9, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->distance:D

    .line 131
    iput p11, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    .line 132
    iput p12, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->accuracy:F

    .line 133
    iput p13, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    .line 134
    return-void
.end method

.method final setSatelliteCount(I)V
    .registers 2
    .param p1, "satelliteCount"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->satelliteCount:I

    .line 305
    return-void
.end method

.method final setSpeed(F)V
    .registers 2
    .param p1, "speed"    # F

    .prologue
    .line 266
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->speed:F

    .line 267
    return-void
.end method

.method final setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 152
    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->type:I

    .line 153
    return-void
.end method

.method final setUtcTime([I)V
    .registers 2
    .param p1, "utcTime"    # [I

    .prologue
    .line 171
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->utcTime:[I

    .line 172
    return-void
.end method
