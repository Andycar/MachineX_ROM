.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
.super Ljava/lang/Object;
.source "LppLocation.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field public Capturedtime:J

.field private Updated:Z

.field private loc:Landroid/location/Location;

.field private mOrgHei:D

.field private mOrgLat:D

.field private mOrgLon:D

.field private mPosECEF_X:D

.field private mPosECEF_Y:D

.field private mPosECEF_Z:D

.field private mPosEast:D

.field private mPosNorth:D

.field private mPosUp:D

.field private movingStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "LppLocation"

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 46
    new-instance v0, Landroid/location/Location;

    const-string v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 47
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 10
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const/4 v2, 0x1

    const-wide/16 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 28
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 34
    if-eqz p1, :cond_37

    .line 35
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 36
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 37
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 38
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 43
    :goto_36
    return-void

    .line 40
    :cond_37
    new-instance v0, Landroid/location/Location;

    const-string v1, "NOPROVIDER"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 41
    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_36
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .registers 4
    .param p1, "l"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    const-wide/16 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 17
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 18
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 51
    new-instance v0, Landroid/location/Location;

    iget-object v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    .line 52
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .line 53
    return-void
.end method

.method private CalCoordinate()V
    .registers 10

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 165
    iput-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 167
    new-array v2, v4, [D

    .line 168
    .local v2, "llh":[D
    new-array v3, v4, [D

    .line 171
    .local v3, "orgllh":[D
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v6

    .line 172
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v2, v7

    .line 173
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    aput-wide v4, v2, v8

    .line 174
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v6

    .line 175
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    aput-wide v4, v3, v7

    .line 176
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v4, v3, v8

    .line 178
    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2enu([D[D)[D

    move-result-object v1

    .line 179
    .local v1, "enu":[D
    aget-wide v4, v1, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    .line 180
    aget-wide v4, v1, v7

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    .line 181
    aget-wide v4, v1, v8

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    .line 183
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    .line 184
    .local v0, "XYZ":[D
    aget-wide v4, v0, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    .line 185
    aget-wide v4, v0, v7

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    .line 186
    aget-wide v4, v0, v8

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    .line 188
    return-void
.end method


# virtual methods
.method public PosPropation(DD)V
    .registers 18
    .param p1, "bearing"    # D
    .param p3, "stepLength"    # D

    .prologue
    .line 192
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v7, :cond_7

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 195
    :cond_7
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 196
    .local v0, "HeadVec_E":D
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 199
    .local v2, "HeadVec_N":D
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    mul-double v10, v0, p3

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    .line 200
    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    mul-double v10, v2, p3

    add-double/2addr v8, v10

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    .line 203
    const/4 v7, 0x3

    new-array v6, v7, [D

    .line 204
    .local v6, "orgllh":[D
    const/4 v7, 0x3

    new-array v4, v7, [D

    .line 206
    .local v4, "enu":[D
    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    aput-wide v8, v4, v7

    .line 207
    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    aput-wide v8, v4, v7

    .line 208
    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    aput-wide v8, v4, v7

    .line 209
    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 210
    const/4 v7, 0x1

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    aput-wide v8, v6, v7

    .line 211
    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    aput-wide v8, v6, v7

    .line 213
    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v5

    .line 214
    .local v5, "llh":[D
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x0

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLatitude(D)V

    .line 215
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setLongitude(D)V

    .line 216
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    const/4 v8, 0x2

    aget-wide v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/location/Location;->setAltitude(D)V

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 221
    return-void
.end method

.method public distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D
    .registers 12
    .param p1, "lppLoc2"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .line 272
    .local v0, "squreDist":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getAccuracy()F
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getLoc()Landroid/location/Location;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    return-object v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMovingStatus()I
    .registers 2

    .prologue
    .line 246
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    return v0
.end method

.method public getOriginAltitude()D
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    return-wide v0
.end method

.method public getOriginLat()D
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    return-wide v0
.end method

.method public getOriginLon()D
    .registers 3

    .prologue
    .line 91
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    return-wide v0
.end method

.method public getPosECEF_X()D
    .registers 3

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_7

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 149
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_X:D

    return-wide v0
.end method

.method public getPosECEF_Y()D
    .registers 3

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_7

    .line 154
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 155
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Y:D

    return-wide v0
.end method

.method public getPosECEF_Z()D
    .registers 3

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_7

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 161
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosECEF_Z:D

    return-wide v0
.end method

.method public getPosEastLocal()D
    .registers 3

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_7

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 131
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosEast:D

    return-wide v0
.end method

.method public getPosNorthLocal()D
    .registers 3

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_7

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 137
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosNorth:D

    return-wide v0
.end method

.method public getPosUpLocal()D
    .registers 3

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    if-eqz v0, :cond_7

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->CalCoordinate()V

    .line 143
    :cond_7
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mPosUp:D

    return-wide v0
.end method

.method public getSystemTime()J
    .registers 3

    .prologue
    .line 104
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    return-wide v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public set(Landroid/location/Location;)V
    .registers 4
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 109
    if-nez p1, :cond_3

    .line 117
    :goto_2
    return-void

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 113
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setSystemTime()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    goto :goto_2
.end method

.method public set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .registers 10
    .param p1, "lpploc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v1, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, v1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLat()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginLon()D

    move-result-wide v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getOriginAltitude()D

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getSystemTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 126
    return-void
.end method

.method public setAltitude(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 264
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setAltitude(D)V

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 266
    return-void
.end method

.method public setLatitude(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 254
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLatitude(D)V

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 256
    return-void
.end method

.method public setLongitude(D)V
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 261
    return-void
.end method

.method public setMovingStatus(I)V
    .registers 2
    .param p1, "MS"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->movingStatus:I

    .line 243
    return-void
.end method

.method public setOrigin(DDD)V
    .registers 8
    .param p1, "OrgLat"    # D
    .param p3, "OrgLon"    # D
    .param p5, "OrgHeight"    # D

    .prologue
    .line 78
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLat:D

    .line 79
    iput-wide p3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgLon:D

    .line 80
    iput-wide p5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->mOrgHei:D

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Updated:Z

    .line 82
    return-void
.end method

.method public setSystemTime()V
    .registers 3

    .prologue
    .line 100
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 101
    return-void
.end method

.method public setSystemTime(J)V
    .registers 12
    .param p1, "systemtime"    # J

    .prologue
    .line 225
    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_11

    .line 226
    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setSystemTime() - Abnormal method calling"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_10
    return-void

    .line 229
    :cond_11
    iget-wide v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    sub-long v2, p1, v2

    long-to-double v0, v2

    .line 230
    .local v0, "timediff":D
    const-wide v2, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v2, v0, v2

    if-lez v2, :cond_5e

    .line 231
    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "systemtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "     Capturedtime"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSystemTime() - systemtime overflow or propagation error timediff"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    .line 235
    :cond_5e
    iput-wide p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->Capturedtime:J

    .line 236
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->loc:Landroid/location/Location;

    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double/2addr v6, v0

    double-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setTime(J)V

    goto :goto_10
.end method
