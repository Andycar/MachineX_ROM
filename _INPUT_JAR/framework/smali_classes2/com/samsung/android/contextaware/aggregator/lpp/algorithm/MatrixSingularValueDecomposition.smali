.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;
.super Ljava/lang/Object;
.source "MatrixSingularValueDecomposition.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private U:[[D

.field private V:[[D

.field private m:I

.field private n:I

.field private s:[D


# direct methods
.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)V
    .registers 60
    .param p1, "Arg"    # Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    .prologue
    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArrayCopy()[[D

    move-result-object v4

    .line 57
    .local v4, "A":[[D
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getRowDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getColumnDimension()I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    .line 65
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v30

    .line 66
    .local v30, "nu":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v52

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    .line 67
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v30

    filled-new-array {v0, v1}, [I

    move-result-object v52

    sget-object v53, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    .line 68
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    filled-new-array/range {v52 .. v53}, [I

    move-result-object v52

    sget-object v53, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v52

    check-cast v52, [[D

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    .line 69
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v5, v0, [D

    .line 70
    .local v5, "e":[D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    new-array v0, v0, [D

    move-object/from16 v51, v0

    .line 71
    .local v51, "work":[D
    const/16 v33, 0x1

    .line 72
    .local v33, "wantu":Z
    const/16 v50, 0x1

    .line 77
    .local v50, "wantv":Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 78
    .local v28, "nct":I
    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, -0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v54, v0

    invoke-static/range {v53 .. v54}, Ljava/lang/Math;->min(II)I

    move-result v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->max(II)I

    move-result v29

    .line 79
    .local v29, "nrt":I
    const/16 v25, 0x0

    .local v25, "k":I
    :goto_d1
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->max(II)I

    move-result v52

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_348

    .line 80
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_181

    .line 85
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 86
    move/from16 v22, v25

    .local v22, "i":I
    :goto_ed
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_114

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v54, v53, v25

    aget-object v53, v4, v22

    aget-wide v56, v53, v25

    invoke-static/range {v54 .. v57}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v54

    aput-wide v54, v52, v25

    .line 86
    add-int/lit8 v22, v22, 0x1

    goto :goto_ed

    .line 89
    :cond_114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_16c

    .line 90
    aget-object v52, v4, v25

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_141

    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 93
    :cond_141
    move/from16 v22, v25

    :goto_143
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_162

    .line 94
    aget-object v52, v4, v22

    aget-wide v54, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v56, v53, v25

    div-double v54, v54, v56

    aput-wide v54, v52, v25

    .line 93
    add-int/lit8 v22, v22, 0x1

    goto :goto_143

    .line 96
    :cond_162
    aget-object v52, v4, v25

    aget-wide v54, v52, v25

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v56

    aput-wide v54, v52, v25

    .line 98
    :cond_16c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 100
    .end local v22    # "i":I
    :cond_181
    add-int/lit8 v24, v25, 0x1

    .local v24, "j":I
    :goto_183
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_1f5

    .line 101
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_1ec

    .line 105
    const-wide/16 v46, 0x0

    .line 106
    .local v46, "t":D
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_1a7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1c2

    .line 107
    aget-object v52, v4, v22

    aget-wide v52, v52, v25

    aget-object v54, v4, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v46, v46, v52

    .line 106
    add-int/lit8 v22, v22, 0x1

    goto :goto_1a7

    .line 109
    :cond_1c2
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-object v54, v4, v25

    aget-wide v54, v54, v25

    div-double v46, v52, v54

    .line 110
    move/from16 v22, v25

    :goto_1cf
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_1ec

    .line 111
    aget-object v52, v4, v22

    aget-wide v54, v52, v24

    aget-object v53, v4, v22

    aget-wide v56, v53, v25

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 110
    add-int/lit8 v22, v22, 0x1

    goto :goto_1cf

    .line 118
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_1ec
    aget-object v52, v4, v25

    aget-wide v52, v52, v24

    aput-wide v52, v5, v24

    .line 100
    add-int/lit8 v24, v24, 0x1

    goto :goto_183

    .line 120
    :cond_1f5
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_220

    const/16 v52, 0x1

    :goto_1fd
    and-int v52, v52, v33

    if-eqz v52, :cond_223

    .line 125
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_203
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_223

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-object v53, v4, v22

    aget-wide v54, v53, v25

    aput-wide v54, v52, v25

    .line 125
    add-int/lit8 v22, v22, 0x1

    goto :goto_203

    .line 120
    .end local v22    # "i":I
    :cond_220
    const/16 v52, 0x0

    goto :goto_1fd

    .line 129
    :cond_223
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_344

    .line 134
    const-wide/16 v52, 0x0

    aput-wide v52, v5, v25

    .line 135
    add-int/lit8 v22, v25, 0x1

    .restart local v22    # "i":I
    :goto_22f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_248

    .line 136
    aget-wide v52, v5, v25

    aget-wide v54, v5, v22

    invoke-static/range {v52 .. v55}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v52

    aput-wide v52, v5, v25

    .line 135
    add-int/lit8 v22, v22, 0x1

    goto :goto_22f

    .line 138
    :cond_248
    aget-wide v52, v5, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_286

    .line 139
    add-int/lit8 v52, v25, 0x1

    aget-wide v52, v5, v52

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gez v52, :cond_263

    .line 140
    aget-wide v52, v5, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v5, v25

    .line 142
    :cond_263
    add-int/lit8 v22, v25, 0x1

    :goto_265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_27c

    .line 143
    aget-wide v52, v5, v22

    aget-wide v54, v5, v25

    div-double v52, v52, v54

    aput-wide v52, v5, v22

    .line 142
    add-int/lit8 v22, v22, 0x1

    goto :goto_265

    .line 145
    :cond_27c
    add-int/lit8 v52, v25, 0x1

    aget-wide v54, v5, v52

    const-wide/high16 v56, 0x3ff0000000000000L    # 1.0

    add-double v54, v54, v56

    aput-wide v54, v5, v52

    .line 147
    :cond_286
    aget-wide v52, v5, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    aput-wide v52, v5, v25

    .line 148
    add-int/lit8 v52, v25, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ge v0, v1, :cond_325

    aget-wide v52, v5, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_325

    .line 152
    add-int/lit8 v22, v25, 0x1

    :goto_2a7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_2ba

    .line 153
    const-wide/16 v52, 0x0

    aput-wide v52, v51, v22

    .line 152
    add-int/lit8 v22, v22, 0x1

    goto :goto_2a7

    .line 155
    :cond_2ba
    add-int/lit8 v24, v25, 0x1

    :goto_2bc
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_2ea

    .line 156
    add-int/lit8 v22, v25, 0x1

    :goto_2ca
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_2e7

    .line 157
    aget-wide v52, v51, v22

    aget-wide v54, v5, v24

    aget-object v56, v4, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    add-double v52, v52, v54

    aput-wide v52, v51, v22

    .line 156
    add-int/lit8 v22, v22, 0x1

    goto :goto_2ca

    .line 155
    :cond_2e7
    add-int/lit8 v24, v24, 0x1

    goto :goto_2bc

    .line 160
    :cond_2ea
    add-int/lit8 v24, v25, 0x1

    :goto_2ec
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_325

    .line 161
    aget-wide v52, v5, v24

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v54, v5, v54

    div-double v46, v52, v54

    .line 162
    .restart local v46    # "t":D
    add-int/lit8 v22, v25, 0x1

    :goto_307
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_322

    .line 163
    aget-object v52, v4, v22

    aget-wide v54, v52, v24

    aget-wide v56, v51, v22

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 162
    add-int/lit8 v22, v22, 0x1

    goto :goto_307

    .line 160
    :cond_322
    add-int/lit8 v24, v24, 0x1

    goto :goto_2ec

    .line 167
    .end local v46    # "t":D
    :cond_325
    if-eqz v50, :cond_344

    .line 172
    add-int/lit8 v22, v25, 0x1

    :goto_329
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_344

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v54, v5, v22

    aput-wide v54, v52, v25

    .line 172
    add-int/lit8 v22, v22, 0x1

    goto :goto_329

    .line 79
    .end local v22    # "i":I
    :cond_344
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_d1

    .line 181
    .end local v24    # "j":I
    :cond_348
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v53, v0

    add-int/lit8 v53, v53, 0x1

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->min(II)I

    move-result v31

    .line 182
    .local v31, "p":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v28

    move/from16 v1, v52

    if-ge v0, v1, :cond_372

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-object v53, v4, v28

    aget-wide v54, v53, v28

    aput-wide v54, v52, v28

    .line 185
    :cond_372
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_38a

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v53

    .line 188
    :cond_38a
    add-int/lit8 v52, v29, 0x1

    move/from16 v0, v52

    move/from16 v1, v31

    if-ge v0, v1, :cond_39a

    .line 189
    aget-object v52, v4, v29

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    aput-wide v52, v5, v29

    .line 191
    :cond_39a
    add-int/lit8 v52, v31, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v5, v52

    .line 195
    if-eqz v33, :cond_4e2

    .line 196
    move/from16 v24, v28

    .restart local v24    # "j":I
    :goto_3a4
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_3d6

    .line 197
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_3ac
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_3c7

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v24

    .line 197
    add-int/lit8 v22, v22, 0x1

    goto :goto_3ac

    .line 200
    :cond_3c7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v24

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    aput-wide v54, v52, v24

    .line 196
    add-int/lit8 v24, v24, 0x1

    goto :goto_3a4

    .line 202
    .end local v22    # "i":I
    :cond_3d6
    add-int/lit8 v25, v28, -0x1

    :goto_3d8
    if-ltz v25, :cond_4e2

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_4b5

    .line 204
    add-int/lit8 v24, v25, 0x1

    :goto_3ea
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_45a

    .line 205
    const-wide/16 v46, 0x0

    .line 206
    .restart local v46    # "t":D
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_3f4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_41b

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v46, v46, v52

    .line 206
    add-int/lit8 v22, v22, 0x1

    goto :goto_3f4

    .line 209
    :cond_41b
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v25

    aget-wide v54, v54, v25

    div-double v46, v52, v54

    .line 210
    move/from16 v22, v25

    :goto_42e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_457

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v54, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v56, v53, v25

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 210
    add-int/lit8 v22, v22, 0x1

    goto :goto_42e

    .line 204
    :cond_457
    add-int/lit8 v24, v24, 0x1

    goto :goto_3ea

    .line 214
    .end local v22    # "i":I
    .end local v46    # "t":D
    :cond_45a
    move/from16 v22, v25

    .restart local v22    # "i":I
    :goto_45c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_484

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 214
    add-int/lit8 v22, v22, 0x1

    goto :goto_45c

    .line 217
    :cond_484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v25

    aget-wide v56, v53, v25

    add-double v54, v54, v56

    aput-wide v54, v52, v25

    .line 218
    const/16 v22, 0x0

    :goto_49e
    add-int/lit8 v52, v25, -0x1

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_4de

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 218
    add-int/lit8 v22, v22, 0x1

    goto :goto_49e

    .line 222
    .end local v22    # "i":I
    :cond_4b5
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_4b7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_4d2

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 222
    add-int/lit8 v22, v22, 0x1

    goto :goto_4b7

    .line 225
    :cond_4d2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    aput-wide v54, v52, v25

    .line 202
    :cond_4de
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_3d8

    .line 232
    .end local v22    # "i":I
    .end local v24    # "j":I
    :cond_4e2
    if-eqz v50, :cond_59d

    .line 233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v25, v52, -0x1

    :goto_4ec
    if-ltz v25, :cond_59d

    .line 234
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_570

    aget-wide v52, v5, v25

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-eqz v52, :cond_570

    .line 235
    add-int/lit8 v24, v25, 0x1

    .restart local v24    # "j":I
    :goto_4fe
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_570

    .line 236
    const-wide/16 v46, 0x0

    .line 237
    .restart local v46    # "t":D
    add-int/lit8 v22, v25, 0x1

    .restart local v22    # "i":I
    :goto_508
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_52f

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v24

    mul-double v52, v52, v54

    add-double v46, v46, v52

    .line 237
    add-int/lit8 v22, v22, 0x1

    goto :goto_508

    .line 240
    :cond_52f
    move-wide/from16 v0, v46

    neg-double v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-object v54, v54, v55

    aget-wide v54, v54, v25

    div-double v46, v52, v54

    .line 241
    add-int/lit8 v22, v25, 0x1

    :goto_544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_56d

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v54, v52, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v56, v53, v25

    mul-double v56, v56, v46

    add-double v54, v54, v56

    aput-wide v54, v52, v24

    .line 241
    add-int/lit8 v22, v22, 0x1

    goto :goto_544

    .line 235
    :cond_56d
    add-int/lit8 v24, v24, 0x1

    goto :goto_4fe

    .line 246
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v46    # "t":D
    :cond_570
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_572
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_58d

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v25

    .line 246
    add-int/lit8 v22, v22, 0x1

    goto :goto_572

    .line 249
    :cond_58d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v25

    const-wide/high16 v54, 0x3ff0000000000000L    # 1.0

    aput-wide v54, v52, v25

    .line 233
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_4ec

    .line 255
    .end local v22    # "i":I
    :cond_59d
    add-int/lit8 v32, v31, -0x1

    .line 256
    .local v32, "pp":I
    const/16 v23, 0x0

    .line 257
    .local v23, "iter":I
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    const-wide/high16 v54, -0x3fb6000000000000L    # -52.0

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    .line 258
    .local v16, "eps":D
    const-wide/high16 v52, 0x4000000000000000L    # 2.0

    const-wide v54, -0x3f71d00000000000L    # -966.0

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v48

    .line 259
    .local v48, "tiny":D
    :cond_5b4
    :goto_5b4
    if-lez v31, :cond_b88

    .line 274
    add-int/lit8 v25, v31, -0x2

    :goto_5b8
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-lt v0, v1, :cond_5c8

    .line 275
    const/16 v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_68f

    .line 284
    :cond_5c8
    :goto_5c8
    add-int/lit8 v52, v31, -0x2

    move/from16 v0, v25

    move/from16 v1, v52

    if-ne v0, v1, :cond_6c3

    .line 285
    const/16 v26, 0x4

    .line 308
    .local v26, "kase":I
    :goto_5d2
    add-int/lit8 v25, v25, 0x1

    .line 312
    packed-switch v26, :pswitch_data_b8a

    goto :goto_5b4

    .line 317
    :pswitch_5d8
    add-int/lit8 v52, v31, -0x2

    aget-wide v18, v5, v52

    .line 318
    .local v18, "f":D
    add-int/lit8 v52, v31, -0x2

    const-wide/16 v54, 0x0

    aput-wide v54, v5, v52

    .line 319
    add-int/lit8 v24, v31, -0x2

    .restart local v24    # "j":I
    :goto_5e4
    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_5b4

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 321
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v10, v52, v46

    .line 322
    .local v10, "cs":D
    div-double v40, v18, v46

    .line 323
    .local v40, "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v46, v52, v24

    .line 324
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_629

    .line 325
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    add-int/lit8 v54, v24, -0x1

    aget-wide v54, v5, v54

    mul-double v18, v52, v54

    .line 326
    add-int/lit8 v52, v24, -0x1

    add-int/lit8 v53, v24, -0x1

    aget-wide v54, v5, v53

    mul-double v54, v54, v10

    aput-wide v54, v5, v52

    .line 328
    :cond_629
    if-eqz v50, :cond_737

    .line 329
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_62d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_737

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v31, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v31, -0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v31, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 329
    add-int/lit8 v22, v22, 0x1

    goto :goto_62d

    .line 278
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v26    # "kase":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_68f
    aget-wide v52, v5, v25

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v25, 0x1

    aget-wide v56, v56, v57

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->abs(D)D

    move-result-wide v56

    add-double v54, v54, v56

    mul-double v54, v54, v16

    add-double v54, v54, v48

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_6bf

    .line 280
    const-wide/16 v52, 0x0

    aput-wide v52, v5, v25

    goto/16 :goto_5c8

    .line 274
    :cond_6bf
    add-int/lit8 v25, v25, -0x1

    goto/16 :goto_5b8

    .line 288
    :cond_6c3
    add-int/lit8 v27, v31, -0x1

    .local v27, "ks":I
    :goto_6c5
    move/from16 v0, v27

    move/from16 v1, v25

    if-lt v0, v1, :cond_6d1

    .line 289
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_6db

    .line 299
    :cond_6d1
    :goto_6d1
    move/from16 v0, v27

    move/from16 v1, v25

    if-ne v0, v1, :cond_725

    .line 300
    const/16 v26, 0x3

    .restart local v26    # "kase":I
    goto/16 :goto_5d2

    .line 292
    .end local v26    # "kase":I
    :cond_6db
    move/from16 v0, v27

    move/from16 v1, v31

    if-eq v0, v1, :cond_71a

    aget-wide v52, v5, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-wide/from16 v54, v52

    :goto_6e9
    add-int/lit8 v52, v25, 0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-eq v0, v1, :cond_71f

    add-int/lit8 v52, v27, -0x1

    aget-wide v52, v5, v52

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    :goto_6f9
    add-double v46, v54, v52

    .line 294
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v27

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    mul-double v54, v16, v46

    add-double v54, v54, v48

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_722

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    const-wide/16 v54, 0x0

    aput-wide v54, v52, v27

    goto :goto_6d1

    .line 292
    .end local v46    # "t":D
    :cond_71a
    const-wide/16 v52, 0x0

    move-wide/from16 v54, v52

    goto :goto_6e9

    :cond_71f
    const-wide/16 v52, 0x0

    goto :goto_6f9

    .line 288
    .restart local v46    # "t":D
    :cond_722
    add-int/lit8 v27, v27, -0x1

    goto :goto_6c5

    .line 301
    .end local v46    # "t":D
    :cond_725
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v27

    move/from16 v1, v52

    if-ne v0, v1, :cond_731

    .line 302
    const/16 v26, 0x1

    .restart local v26    # "kase":I
    goto/16 :goto_5d2

    .line 304
    .end local v26    # "kase":I
    :cond_731
    const/16 v26, 0x2

    .line 305
    .restart local v26    # "kase":I
    move/from16 v25, v27

    goto/16 :goto_5d2

    .line 319
    .end local v27    # "ks":I
    .restart local v10    # "cs":D
    .restart local v18    # "f":D
    .restart local v24    # "j":I
    .restart local v40    # "sn":D
    .restart local v46    # "t":D
    :cond_737
    add-int/lit8 v24, v24, -0x1

    goto/16 :goto_5e4

    .line 342
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v24    # "j":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :pswitch_73b
    add-int/lit8 v52, v25, -0x1

    aget-wide v18, v5, v52

    .line 343
    .restart local v18    # "f":D
    add-int/lit8 v52, v25, -0x1

    const-wide/16 v54, 0x0

    aput-wide v54, v5, v52

    .line 344
    move/from16 v24, v25

    .restart local v24    # "j":I
    :goto_747
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_5b4

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    move-wide/from16 v0, v52

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 346
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    div-double v10, v52, v46

    .line 347
    .restart local v10    # "cs":D
    div-double v40, v18, v46

    .line 348
    .restart local v40    # "sn":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v46, v52, v24

    .line 349
    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v52, v0

    aget-wide v54, v5, v24

    mul-double v18, v52, v54

    .line 350
    aget-wide v52, v5, v24

    mul-double v52, v52, v10

    aput-wide v52, v5, v24

    .line 351
    if-eqz v33, :cond_7e6

    .line 352
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_784
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_7e6

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v25, -0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, -0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v25, -0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 352
    add-int/lit8 v22, v22, 0x1

    goto :goto_784

    .line 344
    .end local v22    # "i":I
    :cond_7e6
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_747

    .line 368
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v24    # "j":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :pswitch_7ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->abs(D)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v31, -0x2

    aget-wide v54, v54, v55

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    add-int/lit8 v54, v31, -0x2

    aget-wide v54, v5, v54

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    aget-wide v54, v5, v25

    invoke-static/range {v54 .. v55}, Ljava/lang/Math;->abs(D)D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v34

    .line 371
    .local v34, "scale":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x1

    aget-wide v52, v52, v53

    div-double v42, v52, v34

    .line 372
    .local v42, "sp":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v31, -0x2

    aget-wide v52, v52, v53

    div-double v44, v52, v34

    .line 373
    .local v44, "spm1":D
    add-int/lit8 v52, v31, -0x2

    aget-wide v52, v5, v52

    div-double v14, v52, v34

    .line 374
    .local v14, "epm1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    div-double v38, v52, v34

    .line 375
    .local v38, "sk":D
    aget-wide v52, v5, v25

    div-double v12, v52, v34

    .line 376
    .local v12, "ek":D
    add-double v52, v44, v42

    sub-double v54, v44, v42

    mul-double v52, v52, v54

    mul-double v54, v14, v14

    add-double v52, v52, v54

    const-wide/high16 v54, 0x4000000000000000L    # 2.0

    div-double v6, v52, v54

    .line 377
    .local v6, "b":D
    mul-double v52, v42, v14

    mul-double v54, v42, v14

    mul-double v8, v52, v54

    .line 378
    .local v8, "c":D
    const-wide/16 v36, 0x0

    .line 379
    .local v36, "shift":D
    const-wide/16 v52, 0x0

    cmpl-double v52, v6, v52

    if-eqz v52, :cond_96f

    const/16 v52, 0x1

    move/from16 v53, v52

    :goto_87c
    const-wide/16 v54, 0x0

    cmpl-double v52, v8, v54

    if-eqz v52, :cond_975

    const/16 v52, 0x1

    :goto_884
    or-int v52, v52, v53

    if-eqz v52, :cond_89f

    .line 380
    mul-double v52, v6, v6

    add-double v52, v52, v8

    invoke-static/range {v52 .. v53}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v36

    .line 381
    const-wide/16 v52, 0x0

    cmpg-double v52, v6, v52

    if-gez v52, :cond_89b

    .line 382
    move-wide/from16 v0, v36

    neg-double v0, v0

    move-wide/from16 v36, v0

    .line 384
    :cond_89b
    add-double v52, v6, v36

    div-double v36, v8, v52

    .line 386
    :cond_89f
    add-double v52, v38, v42

    sub-double v54, v38, v42

    mul-double v52, v52, v54

    add-double v18, v52, v36

    .line 387
    .restart local v18    # "f":D
    mul-double v20, v38, v12

    .line 391
    .local v20, "g":D
    move/from16 v24, v25

    .restart local v24    # "j":I
    :goto_8ab
    add-int/lit8 v52, v31, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_a44

    .line 392
    invoke-static/range {v18 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 393
    .restart local v46    # "t":D
    div-double v10, v18, v46

    .line 394
    .restart local v10    # "cs":D
    div-double v40, v20, v46

    .line 395
    .restart local v40    # "sn":D
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8c5

    .line 396
    add-int/lit8 v52, v24, -0x1

    aput-wide v46, v5, v52

    .line 398
    :cond_8c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    aget-wide v54, v5, v24

    mul-double v54, v54, v40

    add-double v18, v52, v54

    .line 399
    aget-wide v52, v5, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    aget-wide v54, v54, v24

    mul-double v54, v54, v40

    sub-double v52, v52, v54

    aput-wide v52, v5, v24

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    aget-wide v52, v52, v53

    mul-double v20, v40, v52

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v10

    aput-wide v54, v52, v53

    .line 402
    if-eqz v50, :cond_979

    .line 403
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_90d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_979

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 403
    add-int/lit8 v22, v22, 0x1

    goto :goto_90d

    .line 379
    .end local v10    # "cs":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v22    # "i":I
    .end local v24    # "j":I
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_96f
    const/16 v52, 0x0

    move/from16 v53, v52

    goto/16 :goto_87c

    :cond_975
    const/16 v52, 0x0

    goto/16 :goto_884

    .line 409
    .restart local v10    # "cs":D
    .restart local v18    # "f":D
    .restart local v20    # "g":D
    .restart local v24    # "j":I
    .restart local v40    # "sn":D
    .restart local v46    # "t":D
    :cond_979
    invoke-static/range {v18 .. v21}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->hypot(DD)D

    move-result-wide v46

    .line 410
    div-double v10, v18, v46

    .line 411
    div-double v40, v20, v46

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aput-wide v46, v52, v24

    .line 413
    aget-wide v52, v5, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v18, v52, v54

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    aget-wide v56, v5, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v56, v0

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 415
    add-int/lit8 v52, v24, 0x1

    aget-wide v52, v5, v52

    mul-double v20, v40, v52

    .line 416
    add-int/lit8 v52, v24, 0x1

    add-int/lit8 v53, v24, 0x1

    aget-wide v54, v5, v53

    mul-double v54, v54, v10

    aput-wide v54, v5, v52

    .line 417
    if-eqz v33, :cond_a40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v24

    move/from16 v1, v52

    if-ge v0, v1, :cond_a40

    .line 418
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_9de
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_a40

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aget-wide v52, v52, v24

    mul-double v52, v52, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    add-int/lit8 v55, v24, 0x1

    aget-wide v54, v54, v55

    mul-double v54, v54, v40

    add-double v46, v52, v54

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v24, 0x1

    move-wide/from16 v0, v40

    neg-double v0, v0

    move-wide/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    aget-wide v56, v56, v24

    mul-double v54, v54, v56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v56, v0

    aget-object v56, v56, v22

    add-int/lit8 v57, v24, 0x1

    aget-wide v56, v56, v57

    mul-double v56, v56, v10

    add-double v54, v54, v56

    aput-wide v54, v52, v53

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v24

    .line 418
    add-int/lit8 v22, v22, 0x1

    goto :goto_9de

    .line 391
    .end local v22    # "i":I
    :cond_a40
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_8ab

    .line 425
    .end local v10    # "cs":D
    .end local v40    # "sn":D
    .end local v46    # "t":D
    :cond_a44
    add-int/lit8 v52, v31, -0x2

    aput-wide v18, v5, v52

    .line 426
    add-int/lit8 v23, v23, 0x1

    .line 428
    goto/16 :goto_5b4

    .line 436
    .end local v6    # "b":D
    .end local v8    # "c":D
    .end local v12    # "ek":D
    .end local v14    # "epm1":D
    .end local v18    # "f":D
    .end local v20    # "g":D
    .end local v24    # "j":I
    .end local v34    # "scale":D
    .end local v36    # "shift":D
    .end local v38    # "sk":D
    .end local v42    # "sp":D
    .end local v44    # "spm1":D
    :pswitch_a4c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v54, 0x0

    cmpg-double v52, v52, v54

    if-gtz v52, :cond_aa8

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    const-wide/16 v56, 0x0

    cmpg-double v52, v52, v56

    if-gez v52, :cond_aa3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-wide/from16 v0, v52

    neg-double v0, v0

    move-wide/from16 v52, v0

    :goto_a7b
    aput-wide v52, v54, v25

    .line 438
    if-eqz v50, :cond_aa8

    .line 439
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_a81
    move/from16 v0, v22

    move/from16 v1, v32

    if-gt v0, v1, :cond_aa8

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v53, v0

    aget-object v53, v53, v22

    aget-wide v54, v53, v25

    move-wide/from16 v0, v54

    neg-double v0, v0

    move-wide/from16 v54, v0

    aput-wide v54, v52, v25

    .line 439
    add-int/lit8 v22, v22, 0x1

    goto :goto_a81

    .line 437
    .end local v22    # "i":I
    :cond_aa3
    const-wide/16 v52, 0x0

    goto :goto_a7b

    .line 464
    .restart local v46    # "t":D
    :cond_aa6
    add-int/lit8 v25, v25, 0x1

    .line 447
    .end local v46    # "t":D
    :cond_aa8
    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_ac4

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v52, v52, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v54, v0

    add-int/lit8 v55, v25, 0x1

    aget-wide v54, v54, v55

    cmpl-double v52, v52, v54

    if-ltz v52, :cond_aca

    .line 466
    :cond_ac4
    const/16 v23, 0x0

    .line 467
    add-int/lit8 v31, v31, -0x1

    goto/16 :goto_5b4

    .line 451
    :cond_aca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    aget-wide v46, v52, v25

    .line 452
    .restart local v46    # "t":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v53, v0

    add-int/lit8 v54, v25, 0x1

    aget-wide v54, v53, v54

    aput-wide v54, v52, v25

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    move-object/from16 v52, v0

    add-int/lit8 v53, v25, 0x1

    aput-wide v46, v52, v53

    .line 454
    if-eqz v50, :cond_b3b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_b3b

    .line 455
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_b00
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_b3b

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v46, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v25

    .line 455
    add-int/lit8 v22, v22, 0x1

    goto :goto_b00

    .line 459
    .end local v22    # "i":I
    :cond_b3b
    if-eqz v33, :cond_aa6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, -0x1

    move/from16 v0, v25

    move/from16 v1, v52

    if-ge v0, v1, :cond_aa6

    .line 460
    const/16 v22, 0x0

    .restart local v22    # "i":I
    :goto_b4d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    move/from16 v52, v0

    move/from16 v0, v22

    move/from16 v1, v52

    if-ge v0, v1, :cond_aa6

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    aget-wide v46, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    add-int/lit8 v53, v25, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v54, v0

    aget-object v54, v54, v22

    aget-wide v54, v54, v25

    aput-wide v54, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    move-object/from16 v52, v0

    aget-object v52, v52, v22

    aput-wide v46, v52, v25

    .line 460
    add-int/lit8 v22, v22, 0x1

    goto :goto_b4d

    .line 472
    .end local v22    # "i":I
    .end local v26    # "kase":I
    .end local v46    # "t":D
    :cond_b88
    return-void

    .line 312
    nop

    :pswitch_data_b8a
    .packed-switch 0x1
        :pswitch_5d8
        :pswitch_73b
        :pswitch_7ea
        :pswitch_a4c
    .end packed-switch
.end method


# virtual methods
.method public cond()D
    .registers 6

    .prologue
    .line 531
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getS()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .registers 9

    .prologue
    .line 507
    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>(II)V

    .line 508
    .local v1, "X":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->getArray()[[D

    move-result-object v0

    .line 509
    .local v0, "S":[[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v2, v4, :cond_2b

    .line 510
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_13
    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    if-ge v3, v4, :cond_20

    .line 511
    aget-object v4, v0, v2

    const-wide/16 v6, 0x0

    aput-wide v6, v4, v3

    .line 510
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 513
    :cond_20
    aget-object v4, v0, v2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v5, v2

    aput-wide v6, v4, v2

    .line 509
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 515
    .end local v3    # "j":I
    :cond_2b
    return-object v1
.end method

.method public getSingularValues()[D
    .registers 2

    .prologue
    .line 499
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    return-object v0
.end method

.method public getU()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .registers 6

    .prologue
    .line 483
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->U:[[D

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public getV()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .registers 5

    .prologue
    .line 491
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->V:[[D

    iget v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    iget v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[DII)V

    return-object v0
.end method

.method public norm2()D
    .registers 3

    .prologue
    .line 523
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public rank()I
    .registers 11

    .prologue
    .line 539
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, -0x3fb6000000000000L    # -52.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 540
    .local v0, "eps":D
    iget v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->m:I

    iget v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->n:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-double v6, v6

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    const/4 v9, 0x0

    aget-wide v8, v8, v9

    mul-double/2addr v6, v8

    mul-double v4, v6, v0

    .line 541
    .local v4, "tol":D
    const/4 v3, 0x0

    .line 542
    .local v3, "r":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    array-length v6, v6

    if-ge v2, v6, :cond_2d

    .line 543
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/MatrixSingularValueDecomposition;->s:[D

    aget-wide v6, v6, v2

    cmpl-double v6, v6, v4

    if-lez v6, :cond_2a

    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 542
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 547
    :cond_2d
    return v3
.end method
