.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;
.super Ljava/lang/Object;
.source "CoordinateTransform.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field final TRANSFORMSUCCESS:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string v0, "CoordinateTransform"

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->TRANSFORMSUCCESS:I

    return-void
.end method

.method public static enu2llh([D[D)[D
    .registers 3
    .param p0, "enu"    # [D
    .param p1, "orgllh"    # [D

    .prologue
    .line 212
    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2xyz([D[D)[D

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v0

    return-object v0
.end method

.method public static enu2xyz([D[D)[D
    .registers 28
    .param p0, "enu"    # [D
    .param p1, "xyzorg"    # [D

    .prologue
    .line 164
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 167
    .local v19, "xyz":[D
    new-instance v18, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 170
    .local v18, "tmpenu":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v5

    .line 174
    .local v5, "orgllh":[D
    const/16 v20, 0x0

    aget-wide v12, v5, v20

    .line 175
    .local v12, "phi":D
    const/16 v20, 0x1

    aget-wide v10, v5, v20

    .line 176
    .local v10, "lam":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 177
    .local v16, "sinphi":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 178
    .local v8, "cosphi":D
    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 179
    .local v14, "sinlam":D
    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 187
    .local v6, "coslam":D
    new-instance v4, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/16 v20, 0x3

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 188
    .local v4, "R":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/16 v20, 0x0

    const/16 v21, 0x0

    neg-double v0, v14

    move-wide/from16 v22, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 189
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 190
    const/16 v20, 0x0

    const/16 v21, 0x2

    const-wide/16 v22, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 191
    const/16 v20, 0x1

    const/16 v21, 0x0

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v6

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 192
    const/16 v20, 0x1

    const/16 v21, 0x1

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v14

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 193
    const/16 v20, 0x1

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 194
    const/16 v20, 0x2

    const/16 v21, 0x0

    mul-double v22, v8, v6

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 195
    const/16 v20, 0x2

    const/16 v21, 0x1

    mul-double v22, v8, v14

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 196
    const/16 v20, 0x2

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    move-wide/from16 v2, v16

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 202
    const/16 v20, 0x0

    const/16 v21, 0x0

    aget-wide v22, p1, v21

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v24

    add-double v22, v22, v24

    aput-wide v22, v19, v20

    .line 203
    const/16 v20, 0x1

    const/16 v21, 0x1

    aget-wide v22, p1, v21

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v24

    add-double v22, v22, v24

    aput-wide v22, v19, v20

    .line 204
    const/16 v20, 0x2

    const/16 v21, 0x2

    aget-wide v22, p1, v21

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v21

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v24

    add-double v22, v22, v24

    aput-wide v22, v19, v20

    .line 208
    return-object v19
.end method

.method public static llh2enu([D[D)[D
    .registers 10
    .param p0, "llh"    # [D
    .param p1, "llhorg"    # [D

    .prologue
    const/4 v5, 0x3

    .line 52
    new-array v1, v5, [D

    .line 53
    .local v1, "xyz":[D
    new-array v3, v5, [D

    .line 57
    .local v3, "xyzorg":[D
    invoke-static {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v2

    .line 58
    .local v2, "xyz2":[D
    invoke-static {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->llh2xyz([D)[D

    move-result-object v4

    .line 60
    .local v4, "xyzorg2":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    if-ge v0, v5, :cond_1b

    .line 61
    aget-wide v6, v2, v0

    aput-wide v6, v1, v0

    .line 62
    aget-wide v6, v4, v0

    aput-wide v6, v3, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 64
    :cond_1b
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2enu([D[D)[D

    move-result-object v5

    return-object v5
.end method

.method public static llh2xyz([D)[D
    .registers 45
    .param p0, "llh"    # [D

    .prologue
    .line 16
    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [D

    move-object/from16 v32, v0

    .line 19
    .local v32, "xyz":[D
    const/16 v33, 0x0

    aget-wide v16, p0, v33

    .line 20
    .local v16, "phi":D
    const/16 v33, 0x1

    aget-wide v14, p0, v33

    .line 21
    .local v14, "lambda":D
    const/16 v33, 0x2

    aget-wide v12, p0, v33

    .line 23
    .local v12, "h":D
    const-wide v2, 0x415854a640000000L    # 6378137.0

    .line 24
    .local v2, "a":D
    const-wide v4, 0x41583fc4141bda51L    # 6356752.3142

    .line 25
    .local v4, "b":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    div-double v40, v4, v2

    div-double v42, v4, v2

    mul-double v40, v40, v42

    sub-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 27
    .local v10, "e":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 28
    .local v20, "sinphi":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 29
    .local v8, "cosphi":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 30
    .local v6, "coslam":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    .line 31
    .local v18, "sinlam":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v38

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->tan(D)D

    move-result-wide v40

    mul-double v22, v38, v40

    .line 32
    .local v22, "tan2phi":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    mul-double v40, v10, v10

    sub-double v24, v38, v40

    .line 33
    .local v24, "tmp":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    mul-double v40, v24, v22

    add-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    .line 37
    .local v28, "tmpden":D
    mul-double v38, v2, v6

    div-double v38, v38, v28

    mul-double v40, v12, v6

    mul-double v40, v40, v8

    add-double v30, v38, v40

    .line 39
    .local v30, "x":D
    mul-double v38, v2, v18

    div-double v38, v38, v28

    mul-double v40, v12, v18

    mul-double v40, v40, v8

    add-double v34, v38, v40

    .line 41
    .local v34, "y":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    mul-double v40, v10, v10

    mul-double v40, v40, v20

    mul-double v40, v40, v20

    sub-double v38, v38, v40

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 42
    .local v26, "tmp2":D
    mul-double v38, v2, v24

    mul-double v38, v38, v20

    div-double v38, v38, v26

    mul-double v40, v12, v20

    add-double v36, v38, v40

    .line 44
    .local v36, "z":D
    const/16 v33, 0x0

    aput-wide v30, v32, v33

    .line 45
    const/16 v33, 0x1

    aput-wide v34, v32, v33

    .line 46
    const/16 v33, 0x2

    aput-wide v36, v32, v33

    .line 48
    return-object v32
.end method

.method public static xyz2enu([D[D)[D
    .registers 27
    .param p0, "xyz"    # [D
    .param p1, "xyzorg"    # [D

    .prologue
    .line 68
    const/4 v3, 0x3

    new-array v9, v3, [D

    .line 69
    .local v9, "enu":[D
    const/4 v3, 0x3

    new-array v0, v3, [D

    move-object/from16 v16, v0

    .line 71
    .local v16, "orgllh":[D
    new-instance v24, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 72
    .local v24, "tmpxyz":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v17, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([DI)V

    .line 74
    .local v17, "tmporg":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 76
    .local v2, "difxyz":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->uminus()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->plus(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->setMatrix(IIIILcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V

    .line 78
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->xyz2llh([D)[D

    move-result-object v16

    .line 79
    const/4 v3, 0x0

    aget-wide v18, v16, v3

    .line 80
    .local v18, "phi":D
    const/4 v3, 0x1

    aget-wide v14, v16, v3

    .line 81
    .local v14, "lam":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    .line 82
    .local v22, "sinphi":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 83
    .local v12, "cosphi":D
    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    .line 84
    .local v20, "sinlam":D
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    .line 86
    .local v10, "coslam":D
    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    const/4 v3, 0x3

    const/4 v4, 0x3

    invoke-direct {v8, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 92
    .local v8, "R":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-wide/from16 v0, v20

    neg-double v6, v0

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 93
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v8, v3, v4, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 94
    const/4 v3, 0x0

    const/4 v4, 0x2

    const-wide/16 v6, 0x0

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 95
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide/from16 v0, v22

    neg-double v6, v0

    mul-double/2addr v6, v10

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 96
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-wide/from16 v0, v22

    neg-double v6, v0

    mul-double v6, v6, v20

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 97
    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v8, v3, v4, v12, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 98
    const/4 v3, 0x2

    const/4 v4, 0x0

    mul-double v6, v12, v10

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 99
    const/4 v3, 0x2

    const/4 v4, 0x1

    mul-double v6, v12, v20

    invoke-virtual {v8, v3, v4, v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 100
    const/4 v3, 0x2

    const/4 v4, 0x2

    move-wide/from16 v0, v22

    invoke-virtual {v8, v3, v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->set(IID)V

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v9, v3

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v9, v3

    .line 104
    const/4 v3, 0x2

    invoke-virtual {v8, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v4

    aput-wide v4, v9, v3

    .line 106
    return-object v9
.end method

.method public static xyz2llh([D)[D
    .registers 73
    .param p0, "xyz"    # [D

    .prologue
    .line 110
    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [D

    move-object/from16 v34, v0

    .line 113
    .local v34, "llh":[D
    const/16 v35, 0x0

    aget-wide v50, p0, v35

    .line 114
    .local v50, "x":D
    const/16 v35, 0x1

    aget-wide v54, p0, v35

    .line 115
    .local v54, "y":D
    const/16 v35, 0x2

    aget-wide v58, p0, v35

    .line 116
    .local v58, "z":D
    mul-double v52, v50, v50

    .line 117
    .local v52, "x2":D
    mul-double v56, v54, v54

    .line 118
    .local v56, "y2":D
    mul-double v60, v58, v58

    .line 120
    .local v60, "z2":D
    const-wide v16, 0x415854a640000000L    # 6378137.0

    .line 121
    .local v16, "a":D
    const-wide v18, 0x41583fc4141bda51L    # 6356752.3142

    .line 122
    .local v18, "b":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    div-double v66, v18, v16

    div-double v68, v18, v16

    mul-double v66, v66, v68

    sub-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    .line 123
    .local v24, "e":D
    mul-double v20, v18, v18

    .line 124
    .local v20, "b2":D
    mul-double v26, v24, v24

    .line 125
    .local v26, "e2":D
    div-double v64, v16, v18

    mul-double v28, v24, v64

    .line 126
    .local v28, "ep":D
    add-double v64, v52, v56

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v38

    .line 127
    .local v38, "r":D
    mul-double v40, v38, v38

    .line 128
    .local v40, "r2":D
    mul-double v64, v16, v16

    mul-double v66, v18, v18

    sub-double v2, v64, v66

    .line 129
    .local v2, "E2":D
    const-wide/high16 v64, 0x404b000000000000L    # 54.0

    mul-double v64, v64, v20

    mul-double v4, v64, v60

    .line 130
    .local v4, "F":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v26

    mul-double v64, v64, v60

    add-double v64, v64, v40

    mul-double v66, v26, v2

    sub-double v6, v64, v66

    .line 131
    .local v6, "G":D
    mul-double v64, v26, v26

    mul-double v64, v64, v4

    mul-double v64, v64, v40

    mul-double v66, v6, v6

    mul-double v66, v66, v6

    div-double v22, v64, v66

    .line 132
    .local v22, "c":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    add-double v64, v64, v22

    mul-double v66, v22, v22

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    mul-double v68, v68, v22

    add-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v66

    add-double v64, v64, v66

    const-wide v66, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static/range {v64 .. v67}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v44

    .line 133
    .local v44, "s":D
    const-wide/high16 v64, 0x4008000000000000L    # 3.0

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    div-double v66, v66, v44

    add-double v66, v66, v44

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v68

    mul-double v64, v64, v66

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    div-double v66, v66, v44

    add-double v66, v66, v44

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v68

    mul-double v64, v64, v66

    mul-double v64, v64, v6

    mul-double v64, v64, v6

    div-double v8, v4, v64

    .line 134
    .local v8, "P":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v66, 0x4000000000000000L    # 2.0

    mul-double v66, v66, v26

    mul-double v66, v66, v26

    mul-double v66, v66, v8

    add-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 135
    .local v10, "Q":D
    mul-double v64, v8, v26

    mul-double v64, v64, v38

    move-wide/from16 v0, v64

    neg-double v0, v0

    move-wide/from16 v64, v0

    const-wide/high16 v66, 0x3ff0000000000000L    # 1.0

    add-double v66, v66, v10

    div-double v64, v64, v66

    mul-double v66, v16, v16

    const-wide/high16 v68, 0x4000000000000000L    # 2.0

    div-double v66, v66, v68

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    div-double v70, v70, v10

    add-double v68, v68, v70

    mul-double v66, v66, v68

    const-wide/high16 v68, 0x3ff0000000000000L    # 1.0

    sub-double v68, v68, v26

    mul-double v68, v68, v8

    mul-double v68, v68, v60

    const-wide/high16 v70, 0x3ff0000000000000L    # 1.0

    add-double v70, v70, v10

    mul-double v70, v70, v10

    div-double v68, v68, v70

    sub-double v66, v66, v68

    mul-double v68, v8, v40

    const-wide/high16 v70, 0x4000000000000000L    # 2.0

    div-double v68, v68, v70

    sub-double v66, v66, v68

    invoke-static/range {v66 .. v67}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v66

    add-double v42, v64, v66

    .line 136
    .local v42, "ro":D
    mul-double v64, v26, v42

    sub-double v64, v38, v64

    mul-double v66, v26, v42

    sub-double v66, v38, v66

    mul-double v48, v64, v66

    .line 137
    .local v48, "tmp":D
    add-double v64, v48, v60

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 138
    .local v12, "U":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v26

    mul-double v64, v64, v60

    add-double v64, v64, v48

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 139
    .local v14, "V":D
    mul-double v64, v20, v58

    mul-double v66, v16, v14

    div-double v62, v64, v66

    .line 141
    .local v62, "zo":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    mul-double v66, v16, v14

    div-double v66, v20, v66

    sub-double v64, v64, v66

    mul-double v30, v12, v64

    .line 143
    .local v30, "height":D
    mul-double v64, v28, v28

    mul-double v64, v64, v62

    add-double v64, v64, v58

    div-double v64, v64, v38

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->atan(D)D

    move-result-wide v32

    .line 145
    .local v32, "lat":D
    div-double v64, v54, v50

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->atan(D)D

    move-result-wide v46

    .line 146
    .local v46, "temp":D
    const-wide/16 v64, 0x0

    cmpl-double v35, v50, v64

    if-ltz v35, :cond_143

    .line 147
    move-wide/from16 v36, v46

    .line 156
    .local v36, "lon":D
    :goto_136
    const/16 v35, 0x0

    aput-wide v32, v34, v35

    .line 157
    const/16 v35, 0x1

    aput-wide v36, v34, v35

    .line 158
    const/16 v35, 0x2

    aput-wide v30, v34, v35

    .line 160
    return-object v34

    .line 149
    .end local v36    # "lon":D
    :cond_143
    const-wide/16 v64, 0x0

    cmpg-double v35, v50, v64

    if-gez v35, :cond_157

    const-wide/16 v64, 0x0

    cmpl-double v35, v54, v64

    if-ltz v35, :cond_157

    .line 150
    const-wide v64, 0x400921fb54442d18L    # Math.PI

    add-double v36, v64, v46

    .restart local v36    # "lon":D
    goto :goto_136

    .line 153
    .end local v36    # "lon":D
    :cond_157
    const-wide v64, 0x400921fb54442d18L    # Math.PI

    sub-double v36, v46, v64

    .restart local v36    # "lon":D
    goto :goto_136
.end method
