.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_COARSE_LOCATION:Ljava/lang/String; = "coarseLocation"

.field public static final EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"

.field public static final FORMAT_DEGREES:I = 0x0

.field public static final FORMAT_MINUTES:I = 0x1

.field public static final FORMAT_SECONDS:I = 0x2


# instance fields
.field private mAccuracy:F

.field private mAltitude:D

.field private mBearing:F

.field private mDistance:F

.field private mElapsedRealtimeNanos:J

.field private mExtras:Landroid/os/Bundle;

.field private mHasAccuracy:Z

.field private mHasAltitude:Z

.field private mHasBearing:Z

.field private mHasSpeed:Z

.field private mInitialBearing:F

.field private mIsFromMockProvider:Z

.field private mLat1:D

.field private mLat2:D

.field private mLatitude:D

.field private mLon1:D

.field private mLon2:D

.field private mLongitude:D

.field private mProvider:Ljava/lang/String;

.field private final mResults:[F

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 863
    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/location/Location;)V
    .registers 10
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    .line 83
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 84
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 85
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 86
    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 87
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 88
    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 89
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 90
    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    .line 91
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 92
    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 93
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 95
    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 99
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    .line 100
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    .line 101
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    .line 102
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    .line 103
    iput v1, p0, Landroid/location/Location;->mDistance:F

    .line 104
    iput v1, p0, Landroid/location/Location;->mInitialBearing:F

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 124
    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 10
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    .line 83
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 84
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 85
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 86
    iput-boolean v4, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 87
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 88
    iput-boolean v4, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 89
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 90
    iput-boolean v4, p0, Landroid/location/Location;->mHasBearing:Z

    .line 91
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 92
    iput-boolean v4, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 93
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 95
    iput-boolean v4, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 99
    iput-wide v2, p0, Landroid/location/Location;->mLat1:D

    .line 100
    iput-wide v2, p0, Landroid/location/Location;->mLon1:D

    .line 101
    iput-wide v2, p0, Landroid/location/Location;->mLat2:D

    .line 102
    iput-wide v2, p0, Landroid/location/Location;->mLon2:D

    .line 103
    iput v1, p0, Landroid/location/Location;->mDistance:F

    .line 104
    iput v1, p0, Landroid/location/Location;->mInitialBearing:F

    .line 106
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/location/Location;->mResults:[F

    .line 117
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static synthetic access$002(Landroid/location/Location;J)J
    .registers 4
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    return-wide p1
.end method

.method static synthetic access$1002(Landroid/location/Location;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/location/Location;->mHasAccuracy:Z

    return p1
.end method

.method static synthetic access$102(Landroid/location/Location;J)J
    .registers 4
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # J

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1102(Landroid/location/Location;F)F
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    return p1
.end method

.method static synthetic access$1202(Landroid/location/Location;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1302(Landroid/location/Location;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return p1
.end method

.method static synthetic access$202(Landroid/location/Location;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    return-wide p1
.end method

.method static synthetic access$302(Landroid/location/Location;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    return-wide p1
.end method

.method static synthetic access$402(Landroid/location/Location;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/location/Location;->mHasAltitude:Z

    return p1
.end method

.method static synthetic access$502(Landroid/location/Location;D)D
    .registers 4
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # D

    .prologue
    .line 41
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    return-wide p1
.end method

.method static synthetic access$602(Landroid/location/Location;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/location/Location;->mHasSpeed:Z

    return p1
.end method

.method static synthetic access$702(Landroid/location/Location;F)F
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    return p1
.end method

.method static synthetic access$802(Landroid/location/Location;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/location/Location;->mHasBearing:Z

    return p1
.end method

.method static synthetic access$902(Landroid/location/Location;F)F
    .registers 2
    .param p0, "x0"    # Landroid/location/Location;
    .param p1, "x1"    # F

    .prologue
    .line 41
    iput p1, p0, Landroid/location/Location;->mBearing:F

    return p1
.end method

.method private static computeDistanceAndBearing(DDDD[F)V
    .registers 97
    .param p0, "lat1"    # D
    .param p2, "lon1"    # D
    .param p4, "lat2"    # D
    .param p6, "lon2"    # D
    .param p8, "results"    # [F

    .prologue
    .line 293
    const/16 v12, 0x14

    .line 295
    .local v12, "MAXITERS":I
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p0, p0, v76

    .line 296
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p4, p4, v76

    .line 297
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p2, p2, v76

    .line 298
    const-wide v76, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double p6, p6, v76

    .line 300
    const-wide v18, 0x415854a640000000L    # 6378137.0

    .line 301
    .local v18, "a":D
    const-wide v22, 0x41583fc4141bda51L    # 6356752.3142

    .line 302
    .local v22, "b":D
    sub-double v76, v18, v22

    div-double v44, v76, v18

    .line 303
    .local v44, "f":D
    mul-double v76, v18, v18

    mul-double v78, v22, v22

    sub-double v76, v76, v78

    mul-double v78, v22, v22

    div-double v20, v76, v78

    .line 305
    .local v20, "aSqMinusBSqOverBSq":D
    sub-double v10, p6, p2

    .line 306
    .local v10, "L":D
    const-wide/16 v4, 0x0

    .line 307
    .local v4, "A":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    sub-double v76, v76, v44

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->atan(D)D

    move-result-wide v14

    .line 308
    .local v14, "U1":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    sub-double v76, v76, v44

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v78

    mul-double v76, v76, v78

    invoke-static/range {v76 .. v77}, Ljava/lang/Math;->atan(D)D

    move-result-wide v16

    .line 310
    .local v16, "U2":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v34

    .line 311
    .local v34, "cosU1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v38

    .line 312
    .local v38, "cosU2":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v64

    .line 313
    .local v64, "sinU1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v68

    .line 314
    .local v68, "sinU2":D
    mul-double v36, v34, v38

    .line 315
    .local v36, "cosU1cosU2":D
    mul-double v66, v64, v68

    .line 317
    .local v66, "sinU1sinU2":D
    const-wide/16 v54, 0x0

    .line 318
    .local v54, "sigma":D
    const-wide/16 v42, 0x0

    .line 319
    .local v42, "deltaSigma":D
    const-wide/16 v32, 0x0

    .line 320
    .local v32, "cosSqAlpha":D
    const-wide/16 v24, 0x0

    .line 321
    .local v24, "cos2SM":D
    const-wide/16 v30, 0x0

    .line 322
    .local v30, "cosSigma":D
    const-wide/16 v60, 0x0

    .line 323
    .local v60, "sinSigma":D
    const-wide/16 v28, 0x0

    .line 324
    .local v28, "cosLambda":D
    const-wide/16 v58, 0x0

    .line 326
    .local v58, "sinLambda":D
    move-wide/from16 v50, v10

    .line 327
    .local v50, "lambda":D
    const/16 v48, 0x0

    .local v48, "iter":I
    :goto_7e
    move/from16 v0, v48

    if-ge v0, v12, :cond_184

    .line 328
    move-wide/from16 v52, v50

    .line 329
    .local v52, "lambdaOrig":D
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    .line 330
    invoke-static/range {v50 .. v51}, Ljava/lang/Math;->sin(D)D

    move-result-wide v58

    .line 331
    mul-double v70, v38, v58

    .line 332
    .local v70, "t1":D
    mul-double v76, v34, v68

    mul-double v78, v64, v38

    mul-double v78, v78, v28

    sub-double v72, v76, v78

    .line 333
    .local v72, "t2":D
    mul-double v76, v70, v70

    mul-double v78, v72, v72

    add-double v62, v76, v78

    .line 334
    .local v62, "sinSqSigma":D
    invoke-static/range {v62 .. v63}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v60

    .line 335
    mul-double v76, v36, v28

    add-double v30, v66, v76

    .line 336
    move-wide/from16 v0, v60

    move-wide/from16 v2, v30

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v54

    .line 337
    const-wide/16 v76, 0x0

    cmpl-double v49, v60, v76

    if-nez v49, :cond_201

    const-wide/16 v56, 0x0

    .line 339
    .local v56, "sinAlpha":D
    :goto_b4
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    mul-double v78, v56, v56

    sub-double v32, v76, v78

    .line 340
    const-wide/16 v76, 0x0

    cmpl-double v49, v32, v76

    if-nez v49, :cond_207

    const-wide/16 v24, 0x0

    .line 343
    :goto_c2
    mul-double v74, v32, v20

    .line 344
    .local v74, "uSquared":D
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v78, 0x40d0000000000000L    # 16384.0

    div-double v78, v74, v78

    const-wide/high16 v80, 0x40b0000000000000L    # 4096.0

    const-wide/high16 v82, -0x3f78000000000000L    # -768.0

    const-wide/high16 v84, 0x4074000000000000L    # 320.0

    const-wide v86, 0x4065e00000000000L    # 175.0

    mul-double v86, v86, v74

    sub-double v84, v84, v86

    mul-double v84, v84, v74

    add-double v82, v82, v84

    mul-double v82, v82, v74

    add-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v4, v76, v78

    .line 347
    const-wide/high16 v76, 0x4090000000000000L    # 1024.0

    div-double v76, v74, v76

    const-wide/high16 v78, 0x4070000000000000L    # 256.0

    const-wide/high16 v80, -0x3fa0000000000000L    # -128.0

    const-wide v82, 0x4052800000000000L    # 74.0

    const-wide v84, 0x4047800000000000L    # 47.0

    mul-double v84, v84, v74

    sub-double v82, v82, v84

    mul-double v82, v82, v74

    add-double v80, v80, v82

    mul-double v80, v80, v74

    add-double v78, v78, v80

    mul-double v6, v76, v78

    .line 350
    .local v6, "B":D
    const-wide/high16 v76, 0x4030000000000000L    # 16.0

    div-double v76, v44, v76

    mul-double v76, v76, v32

    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    const-wide/high16 v80, 0x4010000000000000L    # 4.0

    const-wide/high16 v82, 0x4008000000000000L    # 3.0

    mul-double v82, v82, v32

    sub-double v80, v80, v82

    mul-double v80, v80, v44

    add-double v78, v78, v80

    mul-double v8, v76, v78

    .line 353
    .local v8, "C":D
    mul-double v26, v24, v24

    .line 354
    .local v26, "cos2SMSq":D
    mul-double v76, v6, v60

    const-wide/high16 v78, 0x4010000000000000L    # 4.0

    div-double v78, v6, v78

    const-wide/high16 v80, -0x4010000000000000L    # -1.0

    const-wide/high16 v82, 0x4000000000000000L    # 2.0

    mul-double v82, v82, v26

    add-double v80, v80, v82

    mul-double v80, v80, v30

    const-wide/high16 v82, 0x4018000000000000L    # 6.0

    div-double v82, v6, v82

    mul-double v82, v82, v24

    const-wide/high16 v84, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v86, 0x4010000000000000L    # 4.0

    mul-double v86, v86, v60

    mul-double v86, v86, v60

    add-double v84, v84, v86

    mul-double v82, v82, v84

    const-wide/high16 v84, -0x3ff8000000000000L    # -3.0

    const-wide/high16 v86, 0x4010000000000000L    # 4.0

    mul-double v86, v86, v26

    add-double v84, v84, v86

    mul-double v82, v82, v84

    sub-double v80, v80, v82

    mul-double v78, v78, v80

    add-double v78, v78, v24

    mul-double v42, v76, v78

    .line 361
    const-wide/high16 v76, 0x3ff0000000000000L    # 1.0

    sub-double v76, v76, v8

    mul-double v76, v76, v44

    mul-double v76, v76, v56

    mul-double v78, v8, v60

    mul-double v80, v8, v30

    const-wide/high16 v82, -0x4010000000000000L    # -1.0

    const-wide/high16 v84, 0x4000000000000000L    # 2.0

    mul-double v84, v84, v24

    mul-double v84, v84, v24

    add-double v82, v82, v84

    mul-double v80, v80, v82

    add-double v80, v80, v24

    mul-double v78, v78, v80

    add-double v78, v78, v54

    mul-double v76, v76, v78

    add-double v50, v10, v76

    .line 367
    sub-double v76, v50, v52

    div-double v40, v76, v50

    .line 368
    .local v40, "delta":D
    invoke-static/range {v40 .. v41}, Ljava/lang/Math;->abs(D)D

    move-result-wide v76

    const-wide v78, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v49, v76, v78

    if-gez v49, :cond_211

    .line 373
    .end local v6    # "B":D
    .end local v8    # "C":D
    .end local v26    # "cos2SMSq":D
    .end local v40    # "delta":D
    .end local v52    # "lambdaOrig":D
    .end local v56    # "sinAlpha":D
    .end local v62    # "sinSqSigma":D
    .end local v70    # "t1":D
    .end local v72    # "t2":D
    .end local v74    # "uSquared":D
    :cond_184
    mul-double v76, v22, v4

    sub-double v78, v54, v42

    mul-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v13, v0

    .line 374
    .local v13, "distance":F
    const/16 v49, 0x0

    aput v13, p8, v49

    .line 375
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v49, v0

    const/16 v76, 0x1

    move/from16 v0, v49

    move/from16 v1, v76

    if-le v0, v1, :cond_200

    .line 376
    mul-double v76, v38, v58

    mul-double v78, v34, v68

    mul-double v80, v64, v38

    mul-double v80, v80, v28

    sub-double v78, v78, v80

    invoke-static/range {v76 .. v79}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v76

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v47, v0

    .line 378
    .local v47, "initialBearing":F
    move/from16 v0, v47

    float-to-double v0, v0

    move-wide/from16 v76, v0

    const-wide v78, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v47, v0

    .line 379
    const/16 v49, 0x1

    aput v47, p8, v49

    .line 380
    move-object/from16 v0, p8

    array-length v0, v0

    move/from16 v49, v0

    const/16 v76, 0x2

    move/from16 v0, v49

    move/from16 v1, v76

    if-le v0, v1, :cond_200

    .line 381
    mul-double v76, v34, v58

    move-wide/from16 v0, v64

    neg-double v0, v0

    move-wide/from16 v78, v0

    mul-double v78, v78, v38

    mul-double v80, v34, v68

    mul-double v80, v80, v28

    add-double v78, v78, v80

    invoke-static/range {v76 .. v79}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v76

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v46, v0

    .line 383
    .local v46, "finalBearing":F
    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v76, v0

    const-wide v78, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double v76, v76, v78

    move-wide/from16 v0, v76

    double-to-float v0, v0

    move/from16 v46, v0

    .line 384
    const/16 v49, 0x2

    aput v46, p8, v49

    .line 387
    .end local v46    # "finalBearing":F
    .end local v47    # "initialBearing":F
    :cond_200
    return-void

    .line 337
    .end local v13    # "distance":F
    .restart local v52    # "lambdaOrig":D
    .restart local v62    # "sinSqSigma":D
    .restart local v70    # "t1":D
    .restart local v72    # "t2":D
    :cond_201
    mul-double v76, v36, v58

    div-double v56, v76, v60

    goto/16 :goto_b4

    .line 340
    .restart local v56    # "sinAlpha":D
    :cond_207
    const-wide/high16 v76, 0x4000000000000000L    # 2.0

    mul-double v76, v76, v66

    div-double v76, v76, v32

    sub-double v24, v30, v76

    goto/16 :goto_c2

    .line 327
    .restart local v6    # "B":D
    .restart local v8    # "C":D
    .restart local v26    # "cos2SMSq":D
    .restart local v40    # "delta":D
    .restart local v74    # "uSquared":D
    :cond_211
    add-int/lit8 v48, v48, 0x1

    goto/16 :goto_7e
.end method

.method public static convert(Ljava/lang/String;)D
    .registers 23
    .param p0, "coordinate"    # Ljava/lang/String;

    .prologue
    .line 228
    if-nez p0, :cond_c

    .line 229
    new-instance v15, Ljava/lang/NullPointerException;

    const-string v18, "coordinate"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 232
    :cond_c
    const/4 v8, 0x0

    .line 233
    .local v8, "negative":Z
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v15, v0, :cond_22

    .line 234
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 235
    const/4 v8, 0x1

    .line 238
    :cond_22
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v15, ":"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .local v13, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v14

    .line 240
    .local v14, "tokens":I
    const/4 v15, 0x1

    if-ge v14, v15, :cond_51

    .line 241
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 244
    :cond_51
    :try_start_51
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 246
    .local v3, "degrees":Ljava/lang/String;
    const/4 v15, 0x1

    if-ne v14, v15, :cond_67

    .line 247
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    .line 248
    .local v16, "val":D
    if-eqz v8, :cond_64

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v18, v0

    .line 282
    :goto_63
    return-wide v18

    :cond_64
    move-wide/from16 v18, v16

    .line 248
    goto :goto_63

    .line 251
    .end local v16    # "val":D
    :cond_67
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "minutes":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 254
    .local v2, "deg":I
    const-wide/16 v10, 0x0

    .line 256
    .local v10, "sec":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v15

    if-eqz v15, :cond_e5

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-double v6, v15

    .line 258
    .local v6, "min":D
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 259
    .local v12, "seconds":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    .line 264
    .end local v12    # "seconds":Ljava/lang/String;
    :goto_84
    if-eqz v8, :cond_ea

    const/16 v15, 0xb4

    if-ne v2, v15, :cond_ea

    const-wide/16 v18, 0x0

    cmpl-double v15, v6, v18

    if-nez v15, :cond_ea

    const-wide/16 v18, 0x0

    cmpl-double v15, v10, v18

    if-nez v15, :cond_ea

    const/4 v4, 0x1

    .line 268
    .local v4, "isNegative180":Z
    :goto_97
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpg-double v15, v18, v20

    if-ltz v15, :cond_a6

    const/16 v15, 0xb3

    if-le v2, v15, :cond_ec

    if-nez v4, :cond_ec

    .line 269
    :cond_a6
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_c5
    .catch Ljava/lang/NumberFormatException; {:try_start_51 .. :try_end_c5} :catch_c5

    .line 283
    .end local v2    # "deg":I
    .end local v3    # "degrees":Ljava/lang/String;
    .end local v4    # "isNegative180":Z
    .end local v5    # "minutes":Ljava/lang/String;
    .end local v6    # "min":D
    .end local v10    # "sec":D
    :catch_c5
    move-exception v9

    .line 284
    .local v9, "nfe":Ljava/lang/NumberFormatException;
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 261
    .end local v9    # "nfe":Ljava/lang/NumberFormatException;
    .restart local v2    # "deg":I
    .restart local v3    # "degrees":Ljava/lang/String;
    .restart local v5    # "minutes":Ljava/lang/String;
    .restart local v10    # "sec":D
    :cond_e5
    :try_start_e5
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .restart local v6    # "min":D
    goto :goto_84

    .line 264
    :cond_ea
    const/4 v4, 0x0

    goto :goto_97

    .line 271
    .restart local v4    # "isNegative180":Z
    :cond_ec
    const-wide/16 v18, 0x0

    cmpg-double v15, v6, v18

    if-ltz v15, :cond_fb

    const-wide v18, 0x404d800000000000L    # 59.0

    cmpl-double v15, v6, v18

    if-lez v15, :cond_11a

    .line 272
    :cond_fb
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 275
    :cond_11a
    const-wide/16 v18, 0x0

    cmpg-double v15, v10, v18

    if-ltz v15, :cond_129

    const-wide v18, 0x404d800000000000L    # 59.0

    cmpl-double v15, v10, v18

    if-lez v15, :cond_148

    .line 276
    :cond_129
    new-instance v15, Ljava/lang/IllegalArgumentException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "coordinate="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_148
    .catch Ljava/lang/NumberFormatException; {:try_start_e5 .. :try_end_148} :catch_c5

    .line 280
    :cond_148
    int-to-double v0, v2

    move-wide/from16 v18, v0

    const-wide v20, 0x40ac200000000000L    # 3600.0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x404e000000000000L    # 60.0

    mul-double v20, v20, v6

    add-double v18, v18, v20

    add-double v16, v18, v10

    .line 281
    .restart local v16    # "val":D
    const-wide v18, 0x40ac200000000000L    # 3600.0

    div-double v16, v16, v18

    .line 282
    if-eqz v8, :cond_16a

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v18, v0

    goto/16 :goto_63

    :cond_16a
    move-wide/from16 v18, v16

    goto/16 :goto_63
.end method

.method public static convert(DI)Ljava/lang/String;
    .registers 15
    .param p0, "coordinate"    # D
    .param p2, "outputType"    # I

    .prologue
    const/16 v10, 0x3a

    const/4 v7, 0x1

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    const/4 v6, 0x2

    .line 180
    const-wide v4, -0x3f99800000000000L    # -180.0

    cmpg-double v4, p0, v4

    if-ltz v4, :cond_1e

    const-wide v4, 0x4066800000000000L    # 180.0

    cmpl-double v4, p0, v4

    if-gtz v4, :cond_1e

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 182
    :cond_1e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "coordinate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_37
    if-eqz p2, :cond_57

    if-eq p2, v7, :cond_57

    if-eq p2, v6, :cond_57

    .line 187
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "outputType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 190
    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v3, "sb":Ljava/lang/StringBuilder;
    const-wide/16 v4, 0x0

    cmpg-double v4, p0, v4

    if-gez v4, :cond_68

    .line 194
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 195
    neg-double p0, p0

    .line 198
    :cond_68
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 199
    .local v1, "df":Ljava/text/DecimalFormat;
    if-eq p2, v7, :cond_73

    if-ne p2, v6, :cond_91

    .line 200
    :cond_73
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 201
    .local v0, "degrees":I
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    int-to-double v4, v0

    sub-double/2addr p0, v4

    .line 204
    mul-double/2addr p0, v8

    .line 205
    if-ne p2, v6, :cond_91

    .line 206
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 207
    .local v2, "minutes":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 209
    int-to-double v4, v2

    sub-double/2addr p0, v4

    .line 210
    mul-double/2addr p0, v8

    .line 213
    .end local v0    # "degrees":I
    .end local v2    # "minutes":I
    :cond_91
    invoke-virtual {v1, p0, p1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static distanceBetween(DDDD[F)V
    .registers 11
    .param p0, "startLatitude"    # D
    .param p2, "startLongitude"    # D
    .param p4, "endLatitude"    # D
    .param p6, "endLongitude"    # D
    .param p8, "results"    # [F

    .prologue
    .line 409
    if-eqz p8, :cond_6

    array-length v0, p8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_f

    .line 410
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "results is null or has length < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_f
    invoke-static/range {p0 .. p8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 414
    return-void
.end method


# virtual methods
.method public bearingTo(Landroid/location/Location;)F
    .registers 12
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 453
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 455
    :try_start_3
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4e

    .line 457
    :cond_23
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 459
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 460
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 461
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 462
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 463
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 464
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 466
    :cond_4e
    iget v0, p0, Landroid/location/Location;->mInitialBearing:F

    monitor-exit v9

    return v0

    .line 467
    :catchall_52
    move-exception v0

    monitor-exit v9
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public distanceTo(Landroid/location/Location;)F
    .registers 12
    .param p1, "dest"    # Landroid/location/Location;

    .prologue
    .line 426
    iget-object v9, p0, Landroid/location/Location;->mResults:[F

    monitor-enter v9

    .line 427
    :try_start_3
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_23

    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_4e

    .line 429
    :cond_23
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iget-wide v2, p0, Landroid/location/Location;->mLongitude:D

    iget-wide v4, p1, Landroid/location/Location;->mLatitude:D

    iget-wide v6, p1, Landroid/location/Location;->mLongitude:D

    iget-object v8, p0, Landroid/location/Location;->mResults:[F

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->computeDistanceAndBearing(DDDD[F)V

    .line 431
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat1:D

    .line 432
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon1:D

    .line 433
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLat2:D

    .line 434
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLon2:D

    .line 435
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mDistance:F

    .line 436
    iget-object v0, p0, Landroid/location/Location;->mResults:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Landroid/location/Location;->mInitialBearing:F

    .line 438
    :cond_4e
    iget v0, p0, Landroid/location/Location;->mDistance:F

    monitor-exit v9

    return v0

    .line 439
    :catchall_52
    move-exception v0

    monitor-exit v9
    :try_end_54
    .catchall {:try_start_3 .. :try_end_54} :catchall_52

    throw v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 861
    return-void
.end method

.method public getAccuracy()F
    .registers 2

    .prologue
    .line 737
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 593
    iget-wide v0, p0, Landroid/location/Location;->mAltitude:D

    return-wide v0
.end method

.method public getBearing()F
    .registers 2

    .prologue
    .line 671
    iget v0, p0, Landroid/location/Location;->mBearing:F

    return v0
.end method

.method public getElapsedRealtimeNanos()J
    .registers 3

    .prologue
    .line 533
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    return-wide v0
.end method

.method public getExtraLocation(Ljava/lang/String;)Landroid/location/Location;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 925
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_11

    .line 926
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 927
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Landroid/location/Location;

    if-eqz v1, :cond_11

    .line 928
    check-cast v0, Landroid/location/Location;

    .line 931
    .end local v0    # "value":Landroid/os/Parcelable;
    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 819
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 552
    iget-wide v0, p0, Landroid/location/Location;->mLatitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 569
    iget-wide v0, p0, Landroid/location/Location;->mLongitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()F
    .registers 2

    .prologue
    .line 630
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 504
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    return-wide v0
.end method

.method public hasAccuracy()Z
    .registers 2

    .prologue
    .line 711
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    return v0
.end method

.method public hasAltitude()Z
    .registers 2

    .prologue
    .line 583
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    return v0
.end method

.method public hasBearing()Z
    .registers 2

    .prologue
    .line 658
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    return v0
.end method

.method public hasSpeed()Z
    .registers 2

    .prologue
    .line 621
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    return v0
.end method

.method public isComplete()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    .line 777
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v1, :cond_8

    .line 781
    :cond_7
    :goto_7
    return v0

    .line 778
    :cond_8
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_7

    .line 779
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 780
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_7

    .line 781
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public isFromMockProvider()Z
    .registers 2

    .prologue
    .line 954
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    return v0
.end method

.method public makeComplete()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 795
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_a

    const-string v0, "?"

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 796
    :cond_a
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-nez v0, :cond_15

    .line 797
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 798
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 800
    :cond_15
    iget-wide v0, p0, Landroid/location/Location;->mTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 801
    :cond_21
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 802
    :cond_2d
    return-void
.end method

.method public removeAccuracy()V
    .registers 2

    .prologue
    .line 759
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 761
    return-void
.end method

.method public removeAltitude()V
    .registers 3

    .prologue
    .line 613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 614
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 615
    return-void
.end method

.method public removeBearing()V
    .registers 2

    .prologue
    .line 700
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 702
    return-void
.end method

.method public removeSpeed()V
    .registers 2

    .prologue
    .line 650
    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 651
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 652
    return-void
.end method

.method public reset()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 152
    iput-object v4, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 153
    iput-wide v6, p0, Landroid/location/Location;->mTime:J

    .line 154
    iput-wide v6, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 155
    iput-wide v2, p0, Landroid/location/Location;->mLatitude:D

    .line 156
    iput-wide v2, p0, Landroid/location/Location;->mLongitude:D

    .line 157
    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 158
    iput-wide v2, p0, Landroid/location/Location;->mAltitude:D

    .line 159
    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 160
    iput v1, p0, Landroid/location/Location;->mSpeed:F

    .line 161
    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 162
    iput v1, p0, Landroid/location/Location;->mBearing:F

    .line 163
    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 164
    iput v1, p0, Landroid/location/Location;->mAccuracy:F

    .line 165
    iput-object v4, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 166
    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 167
    return-void
.end method

.method public set(Landroid/location/Location;)V
    .registers 4
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 131
    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 132
    iget-wide v0, p1, Landroid/location/Location;->mTime:J

    iput-wide v0, p0, Landroid/location/Location;->mTime:J

    .line 133
    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNanos:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 134
    iget-wide v0, p1, Landroid/location/Location;->mLatitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitude:D

    .line 135
    iget-wide v0, p1, Landroid/location/Location;->mLongitude:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitude:D

    .line 136
    iget-boolean v0, p1, Landroid/location/Location;->mHasAltitude:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 137
    iget-wide v0, p1, Landroid/location/Location;->mAltitude:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitude:D

    .line 138
    iget-boolean v0, p1, Landroid/location/Location;->mHasSpeed:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 139
    iget v0, p1, Landroid/location/Location;->mSpeed:F

    iput v0, p0, Landroid/location/Location;->mSpeed:F

    .line 140
    iget-boolean v0, p1, Landroid/location/Location;->mHasBearing:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 141
    iget v0, p1, Landroid/location/Location;->mBearing:F

    iput v0, p0, Landroid/location/Location;->mBearing:F

    .line 142
    iget-boolean v0, p1, Landroid/location/Location;->mHasAccuracy:Z

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 143
    iget v0, p1, Landroid/location/Location;->mAccuracy:F

    iput v0, p0, Landroid/location/Location;->mAccuracy:F

    .line 144
    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_40

    const/4 v0, 0x0

    :goto_39
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 145
    iget-boolean v0, p1, Landroid/location/Location;->mIsFromMockProvider:Z

    iput-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 146
    return-void

    .line 144
    :cond_40
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_39
.end method

.method public setAccuracy(F)V
    .registers 3
    .param p1, "accuracy"    # F

    .prologue
    .line 748
    iput p1, p0, Landroid/location/Location;->mAccuracy:F

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    .line 750
    return-void
.end method

.method public setAltitude(D)V
    .registers 4
    .param p1, "altitude"    # D

    .prologue
    .line 602
    iput-wide p1, p0, Landroid/location/Location;->mAltitude:D

    .line 603
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    .line 604
    return-void
.end method

.method public setBearing(F)V
    .registers 4
    .param p1, "bearing"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 683
    :goto_2
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_9

    .line 684
    add-float/2addr p1, v1

    goto :goto_2

    .line 686
    :cond_9
    :goto_9
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_f

    .line 687
    sub-float/2addr p1, v1

    goto :goto_9

    .line 689
    :cond_f
    iput p1, p0, Landroid/location/Location;->mBearing:F

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    .line 691
    return-void
.end method

.method public setElapsedRealtimeNanos(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 542
    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    .line 543
    return-void
.end method

.method public setExtraLocation(Ljava/lang/String;Landroid/location/Location;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/location/Location;

    .prologue
    .line 942
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_b

    .line 943
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 945
    :cond_b
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 946
    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 827
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    .line 828
    return-void

    .line 827
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_3
.end method

.method public setIsFromMockProvider(Z)V
    .registers 2
    .param p1, "isFromMockProvider"    # Z

    .prologue
    .line 965
    iput-boolean p1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    .line 966
    return-void
.end method

.method public setLatitude(D)V
    .registers 4
    .param p1, "latitude"    # D

    .prologue
    .line 559
    iput-wide p1, p0, Landroid/location/Location;->mLatitude:D

    .line 560
    return-void
.end method

.method public setLongitude(D)V
    .registers 4
    .param p1, "longitude"    # D

    .prologue
    .line 576
    iput-wide p1, p0, Landroid/location/Location;->mLongitude:D

    .line 577
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    .line 484
    return-void
.end method

.method public setSpeed(F)V
    .registers 3
    .param p1, "speed"    # F

    .prologue
    .line 639
    iput p1, p0, Landroid/location/Location;->mSpeed:F

    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    .line 641
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "time"    # J

    .prologue
    .line 514
    iput-wide p1, p0, Landroid/location/Location;->mTime:J

    .line 515
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, " %.6f,%.6f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    iget-boolean v1, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v1, :cond_b1

    const-string v1, " acc=%.0f"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Landroid/location/Location;->mAccuracy:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    :goto_46
    iget-wide v2, p0, Landroid/location/Location;->mTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_51

    .line 839
    const-string v1, " t=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    :cond_51
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_b7

    .line 842
    const-string v1, " et=?!?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    :goto_5c
    iget-boolean v1, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v1, :cond_6b

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 848
    :cond_6b
    iget-boolean v1, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v1, :cond_7a

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 849
    :cond_7a
    iget-boolean v1, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v1, :cond_89

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 850
    :cond_89
    iget-boolean v1, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    if-eqz v1, :cond_92

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    :cond_92
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_a7

    .line 853
    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 855
    :cond_a7
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 856
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 837
    :cond_b1
    const-string v1, " acc=???"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 844
    :cond_b7
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    iget-wide v2, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    goto :goto_5c
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 9
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 899
    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 900
    iget-wide v4, p0, Landroid/location/Location;->mTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 901
    iget-wide v4, p0, Landroid/location/Location;->mElapsedRealtimeNanos:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 902
    iget-wide v4, p0, Landroid/location/Location;->mLatitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 903
    iget-wide v4, p0, Landroid/location/Location;->mLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 904
    iget-boolean v0, p0, Landroid/location/Location;->mHasAltitude:Z

    if-eqz v0, :cond_5c

    move v0, v1

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 905
    iget-wide v4, p0, Landroid/location/Location;->mAltitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 906
    iget-boolean v0, p0, Landroid/location/Location;->mHasSpeed:Z

    if-eqz v0, :cond_5e

    move v0, v1

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget v0, p0, Landroid/location/Location;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 908
    iget-boolean v0, p0, Landroid/location/Location;->mHasBearing:Z

    if-eqz v0, :cond_60

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 909
    iget v0, p0, Landroid/location/Location;->mBearing:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 910
    iget-boolean v0, p0, Landroid/location/Location;->mHasAccuracy:Z

    if-eqz v0, :cond_62

    move v0, v1

    :goto_47
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    iget v0, p0, Landroid/location/Location;->mAccuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 912
    iget-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 913
    iget-boolean v0, p0, Landroid/location/Location;->mIsFromMockProvider:Z

    if-eqz v0, :cond_64

    :goto_58
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 914
    return-void

    :cond_5c
    move v0, v2

    .line 904
    goto :goto_20

    :cond_5e
    move v0, v2

    .line 906
    goto :goto_2d

    :cond_60
    move v0, v2

    .line 908
    goto :goto_3a

    :cond_62
    move v0, v2

    .line 910
    goto :goto_47

    :cond_64
    move v1, v2

    .line 913
    goto :goto_58
.end method
