.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;
.super Ljava/lang/Object;
.source "MatrixLUDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private LU:[[D

.field private m:I

.field private n:I

.field private piv:[I

.field private pivsign:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .registers 20
    .param p1, "A"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 51
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    .line 58
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v9, v9, [I

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    .line 59
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_35

    .line 60
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v4, v9, v4

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 62
    :cond_35
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    .line 64
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v2, v9, [D

    .line 68
    .local v2, "LUcolj":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_41
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v5, v9, :cond_128

    .line 72
    const/4 v4, 0x0

    :goto_48
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_5b

    .line 73
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v14, v9, v5

    aput-wide v14, v2, v4

    .line 72
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 78
    :cond_5b
    const/4 v4, 0x0

    :goto_5c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_85

    .line 79
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v3, v9, v4

    .line 83
    .local v3, "LUrowi":[D
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 84
    .local v7, "kmax":I
    const-wide/16 v10, 0x0

    .line 85
    .local v10, "s":D
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_6f
    if-ge v6, v7, :cond_7b

    .line 86
    aget-wide v14, v3, v6

    aget-wide v16, v2, v6

    mul-double v14, v14, v16

    add-double/2addr v10, v14

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    .line 89
    :cond_7b
    aget-wide v14, v2, v4

    sub-double/2addr v14, v10

    aput-wide v14, v2, v4

    aput-wide v14, v3, v5

    .line 78
    add-int/lit8 v4, v4, 0x1

    goto :goto_5c

    .line 94
    .end local v3    # "LUrowi":[D
    .end local v6    # "k":I
    .end local v7    # "kmax":I
    .end local v10    # "s":D
    :cond_85
    move v8, v5

    .line 95
    .local v8, "p":I
    add-int/lit8 v4, v5, 0x1

    :goto_88
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_a2

    .line 96
    aget-wide v14, v2, v4

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    aget-wide v16, v2, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    cmpl-double v9, v14, v16

    if-lez v9, :cond_9f

    .line 97
    move v8, v4

    .line 95
    :cond_9f
    add-int/lit8 v4, v4, 0x1

    goto :goto_88

    .line 100
    :cond_a2
    if-eq v8, v5, :cond_ef

    .line 101
    const/4 v6, 0x0

    .restart local v6    # "k":I
    :goto_a5
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v6, v9, :cond_ce

    .line 102
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v8

    aget-wide v12, v9, v6

    .local v12, "t":D
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v14, v14, v5

    aget-wide v14, v14, v6

    aput-wide v14, v9, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v5

    aput-wide v12, v9, v6

    .line 101
    add-int/lit8 v6, v6, 0x1

    goto :goto_a5

    .line 104
    .end local v12    # "t":D
    :cond_ce
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v6, v9, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v14, v14, v5

    aput v14, v9, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aput v6, v9, v5

    .line 105
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    neg-int v9, v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    .line 110
    .end local v6    # "k":I
    :cond_ef
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v5, v9, :cond_124

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v5

    aget-wide v14, v9, v5

    const-wide/16 v16, 0x0

    cmpl-double v9, v14, v16

    if-eqz v9, :cond_124

    .line 111
    add-int/lit8 v4, v5, 0x1

    :goto_105
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v4, v9, :cond_124

    .line 112
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v9, v9, v4

    aget-wide v14, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    move-object/from16 v16, v0

    aget-object v16, v16, v5

    aget-wide v16, v16, v5

    div-double v14, v14, v16

    aput-wide v14, v9, v5

    .line 111
    add-int/lit8 v4, v4, 0x1

    goto :goto_105

    .line 68
    :cond_124
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_41

    .line 116
    .end local v8    # "p":I
    :cond_128
    return-void
.end method


# virtual methods
.method public det()D
    .registers 7

    .prologue
    .line 263
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-eq v3, v4, :cond_e

    .line 264
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Matrix must be square."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 266
    :cond_e
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->pivsign:I

    int-to-double v0, v3

    .line 267
    .local v0, "d":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_12
    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v3, :cond_20

    .line 268
    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v3, v3, v2

    aget-wide v4, v3, v2

    mul-double/2addr v0, v4

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 270
    :cond_20
    return-wide v0
.end method

.method public getDoublePivot()[D
    .registers 5

    .prologue
    .line 250
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v2, [D

    .line 251
    .local v1, "vals":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v0, v2, :cond_13

    .line 252
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v0

    int-to-double v2, v2

    aput-wide v2, v1, v0

    .line 251
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 254
    :cond_13
    return-object v1
.end method

.method public getL()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .registers 9

    .prologue
    .line 198
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 199
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 200
    .local v0, "L":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v2, v4, :cond_39

    .line 201
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_36

    .line 202
    if-le v2, v3, :cond_26

    .line 203
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 201
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 204
    :cond_26
    if-ne v2, v3, :cond_2f

    .line 205
    aget-object v4, v0, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v4, v3

    goto :goto_23

    .line 207
    :cond_2f
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_23

    .line 200
    :cond_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 211
    .end local v3    # "j":I
    :cond_39
    return-object v1
.end method

.method public getPivot()[I
    .registers 4

    .prologue
    .line 238
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    new-array v1, v2, [I

    .line 239
    .local v1, "p":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-ge v0, v2, :cond_12

    .line 240
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 242
    :cond_12
    return-object v1
.end method

.method public getU()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .registers 9

    .prologue
    .line 219
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 220
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 221
    .local v0, "U":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v4, :cond_30

    .line 222
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v3, v4, :cond_2d

    .line 223
    if-gt v2, v3, :cond_26

    .line 224
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    .line 222
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 226
    :cond_26
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    goto :goto_23

    .line 221
    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 230
    .end local v3    # "j":I
    :cond_30
    return-object v1
.end method

.method public isNonsingular()Z
    .registers 7

    .prologue
    .line 186
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    iget v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v0, v1, :cond_16

    .line 187
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v1, v1, v0

    aget-wide v2, v1, v0

    const-wide/16 v4, 0x0

    cmpl-double v1, v2, v4

    if-nez v1, :cond_13

    .line 188
    const/4 v1, 0x0

    .line 190
    :goto_12
    return v1

    .line 186
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_16
    const/4 v1, 0x1

    goto :goto_12
.end method

.method public solve(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .registers 16
    .param p1, "B"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->m:I

    if-eq v6, v7, :cond_10

    .line 282
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Matrix row dimensions must agree."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 284
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->isNonsingular()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 285
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Matrix is singular."

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 289
    :cond_1e
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v5

    .line 290
    .local v5, "nx":I
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->piv:[I

    const/4 v7, 0x0

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {p1, v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getMatrix([III)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v1

    .line 291
    .local v1, "Xmat":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 294
    .local v0, "X":[[D
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_30
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v4, v6, :cond_58

    .line 295
    add-int/lit8 v2, v4, 0x1

    .local v2, "i":I
    :goto_36
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    if-ge v2, v6, :cond_55

    .line 296
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_3b
    if-ge v3, v5, :cond_52

    .line 297
    aget-object v6, v0, v2

    aget-wide v8, v6, v3

    aget-object v7, v0, v4

    aget-wide v10, v7, v3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v2

    aget-wide v12, v7, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 296
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 295
    :cond_52
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 294
    .end local v3    # "j":I
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 302
    .end local v2    # "i":I
    :cond_58
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->n:I

    add-int/lit8 v4, v6, -0x1

    :goto_5c
    if-ltz v4, :cond_92

    .line 303
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_5f
    if-ge v3, v5, :cond_71

    .line 304
    aget-object v6, v0, v4

    aget-wide v8, v6, v3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v4

    aget-wide v10, v7, v4

    div-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 306
    :cond_71
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_72
    if-ge v2, v4, :cond_8f

    .line 307
    const/4 v3, 0x0

    :goto_75
    if-ge v3, v5, :cond_8c

    .line 308
    aget-object v6, v0, v2

    aget-wide v8, v6, v3

    aget-object v7, v0, v4

    aget-wide v10, v7, v3

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixLUDecomposition;->LU:[[D

    aget-object v7, v7, v2

    aget-wide v12, v7, v4

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v3

    .line 307
    add-int/lit8 v3, v3, 0x1

    goto :goto_75

    .line 306
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 302
    :cond_8f
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c

    .line 312
    .end local v2    # "i":I
    .end local v3    # "j":I
    :cond_92
    return-object v1
.end method
