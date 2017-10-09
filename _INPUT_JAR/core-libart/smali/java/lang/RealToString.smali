.class final Ljava/lang/RealToString;
.super Ljava/lang/Object;
.source "RealToString.java"


# static fields
.field private static final INSTANCE:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/RealToString;",
            ">;"
        }
    .end annotation
.end field

.field private static final invLogOfTenBaseTwo:D


# instance fields
.field private digitCount:I

.field private final digits:[I

.field private firstK:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 23
    new-instance v0, Ljava/lang/RealToString$1;

    invoke-direct {v0}, Ljava/lang/RealToString$1;-><init>()V

    sput-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    .line 29
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    sput-wide v0, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Ljava/lang/RealToString;->digits:[I

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/RealToString$1;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/RealToString$1;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/RealToString;-><init>()V

    return-void
.end method

.method private native bigIntDigitGenerator(JIZI)V
.end method

.method private convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;
    .registers 28
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "inputNumber"    # D

    .prologue
    .line 67
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v20

    .line 68
    .local v20, "inputNumberBits":J
    const-wide/high16 v12, -0x8000000000000000L

    and-long v12, v12, v20

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_3d

    const/16 v22, 0x1

    .line 69
    .local v22, "positive":Z
    :goto_10
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v12, v12, v20

    const/16 v3, 0x34

    shr-long/2addr v12, v3

    long-to-int v10, v12

    .line 70
    .local v10, "e":I
    const-wide v12, 0xfffffffffffffL

    and-long v4, v20, v12

    .line 71
    .local v4, "f":J
    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-nez v3, :cond_40

    const/4 v8, 0x1

    .line 73
    .local v8, "mantissaIsZero":Z
    :goto_26
    const/16 v23, 0x0

    .line 74
    .local v23, "quickResult":Ljava/lang/String;
    const/16 v3, 0x7ff

    if-ne v10, v3, :cond_48

    .line 75
    if-eqz v8, :cond_45

    .line 76
    if-eqz v22, :cond_42

    const-string v23, "Infinity"

    .line 88
    :cond_32
    :goto_32
    if-eqz v23, :cond_62

    .line 89
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 122
    :goto_3c
    return-object v3

    .line 68
    .end local v4    # "f":J
    .end local v8    # "mantissaIsZero":Z
    .end local v10    # "e":I
    .end local v22    # "positive":Z
    .end local v23    # "quickResult":Ljava/lang/String;
    :cond_3d
    const/16 v22, 0x0

    goto :goto_10

    .line 71
    .restart local v4    # "f":J
    .restart local v10    # "e":I
    .restart local v22    # "positive":Z
    :cond_40
    const/4 v8, 0x0

    goto :goto_26

    .line 76
    .restart local v8    # "mantissaIsZero":Z
    .restart local v23    # "quickResult":Ljava/lang/String;
    :cond_42
    const-string v23, "-Infinity"

    goto :goto_32

    .line 78
    :cond_45
    const-string v23, "NaN"

    goto :goto_32

    .line 80
    :cond_48
    if-nez v10, :cond_32

    .line 81
    if-eqz v8, :cond_54

    .line 82
    if-eqz v22, :cond_51

    const-string v23, "0.0"

    :goto_50
    goto :goto_32

    :cond_51
    const-string v23, "-0.0"

    goto :goto_50

    .line 83
    :cond_54
    const-wide/16 v12, 0x1

    cmp-long v3, v4, v12

    if-nez v3, :cond_32

    .line 85
    if-eqz v22, :cond_5f

    const-string v23, "4.9E-324"

    :goto_5e
    goto :goto_32

    :cond_5f
    const-string v23, "-4.9E-324"

    goto :goto_5e

    .line 92
    :cond_62
    const/16 v17, 0x433

    .line 94
    .local v17, "p":I
    const/16 v9, 0x34

    .line 95
    .local v9, "numBits":I
    if-nez v10, :cond_7c

    .line 96
    rsub-int/lit8 v6, v17, 0x1

    .line 97
    .local v6, "pow":I
    move-wide/from16 v18, v4

    .line 98
    .local v18, "ff":J
    :goto_6c
    const-wide/high16 v12, 0x10000000000000L

    and-long v12, v12, v18

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-nez v3, :cond_81

    .line 99
    const/4 v3, 0x1

    shl-long v18, v18, v3

    .line 100
    add-int/lit8 v9, v9, -0x1

    goto :goto_6c

    .line 105
    .end local v6    # "pow":I
    .end local v18    # "ff":J
    :cond_7c
    const-wide/high16 v12, 0x10000000000000L

    or-long/2addr v4, v12

    .line 106
    sub-int v6, v10, v17

    .line 109
    .restart local v6    # "pow":I
    :cond_81
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Ljava/lang/RealToString;->digitCount:I

    move-object/from16 v0, p0

    iput v3, v0, Ljava/lang/RealToString;->firstK:I

    .line 110
    const/16 v3, -0x3b

    if-ge v3, v6, :cond_91

    const/4 v3, 0x6

    if-lt v6, v3, :cond_97

    :cond_91
    const/16 v3, -0x3b

    if-ne v6, v3, :cond_d5

    if-nez v8, :cond_d5

    .line 111
    :cond_97
    if-nez v10, :cond_d3

    const/4 v7, 0x1

    :goto_9a
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    .line 115
    :goto_9f
    if-eqz p1, :cond_e4

    move-object/from16 v2, p1

    .line 116
    .local v2, "dst":Ljava/lang/AbstractStringBuilder;
    :goto_a3
    const-wide v12, 0x416312d000000000L    # 1.0E7

    cmpl-double v3, p2, v12

    if-gez v3, :cond_c7

    const-wide v12, -0x3e9ced3000000000L    # -1.0E7

    cmpg-double v3, p2, v12

    if-lez v3, :cond_c7

    const-wide v12, -0x40af9db22d0e5604L    # -0.001

    cmpl-double v3, p2, v12

    if-lez v3, :cond_ec

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, p2, v12

    if-gez v3, :cond_ec

    .line 118
    :cond_c7
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    .line 122
    :goto_ce
    if-eqz p1, :cond_f4

    const/4 v3, 0x0

    goto/16 :goto_3c

    .line 111
    .end local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    :cond_d3
    const/4 v7, 0x0

    goto :goto_9a

    .line 113
    :cond_d5
    if-nez v10, :cond_e2

    const/4 v15, 0x1

    :goto_d8
    move-object/from16 v11, p0

    move-wide v12, v4

    move v14, v6

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    goto :goto_9f

    :cond_e2
    const/4 v15, 0x0

    goto :goto_d8

    .line 115
    :cond_e4
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_a3

    .line 120
    .restart local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    :cond_ec
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    goto :goto_ce

    .line 122
    :cond_f4
    invoke-virtual {v2}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3c
.end method

.method private freeFormat(Ljava/lang/AbstractStringBuilder;Z)V
    .registers 12
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "positive"    # Z

    .prologue
    const/16 v8, 0x2e

    const/16 v7, 0x30

    const/4 v5, -0x1

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "digitIndex":I
    if-nez p2, :cond_d

    .line 219
    const/16 v6, 0x2d

    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 221
    :cond_d
    iget v4, p0, Ljava/lang/RealToString;->firstK:I

    .line 222
    .local v4, "k":I
    if-gez v4, :cond_21

    .line 223
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 224
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 225
    add-int/lit8 v3, v4, 0x1

    .local v3, "i":I
    :goto_19
    if-gez v3, :cond_21

    .line 226
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 225
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 229
    .end local v3    # "i":I
    :cond_21
    iget-object v6, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "digitIndex":I
    .local v2, "digitIndex":I
    aget v0, v6, v1

    .line 231
    .local v0, "U":I
    :goto_27
    if-eq v0, v5, :cond_45

    .line 232
    add-int/lit8 v6, v0, 0x30

    int-to-char v6, v6

    invoke-virtual {p1, v6}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 236
    :cond_2f
    :goto_2f
    if-nez v4, :cond_34

    .line 237
    invoke-virtual {p1, v8}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 239
    :cond_34
    add-int/lit8 v4, v4, -0x1

    .line 240
    iget v6, p0, Ljava/lang/RealToString;->digitCount:I

    if-ge v2, v6, :cond_4b

    iget-object v6, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    aget v0, v6, v2

    .line 241
    :goto_40
    if-ne v0, v5, :cond_4e

    if-ge v4, v5, :cond_4e

    .line 242
    return-void

    .line 233
    .end local v1    # "digitIndex":I
    .restart local v2    # "digitIndex":I
    :cond_45
    if-lt v4, v5, :cond_2f

    .line 234
    invoke-virtual {p1, v7}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    goto :goto_2f

    :cond_4b
    move v0, v5

    move v1, v2

    .line 240
    .end local v2    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    goto :goto_40

    :cond_4e
    move v2, v1

    .end local v1    # "digitIndex":I
    .restart local v2    # "digitIndex":I
    goto :goto_27
.end method

.method private freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V
    .registers 8
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "positive"    # Z

    .prologue
    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "digitIndex":I
    if-nez p2, :cond_8

    .line 194
    const/16 v4, 0x2d

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 196
    :cond_8
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "digitIndex":I
    .local v1, "digitIndex":I
    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 197
    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 199
    iget v3, p0, Ljava/lang/RealToString;->firstK:I

    .line 200
    .local v3, "k":I
    move v2, v3

    .local v2, "exponent":I
    move v0, v1

    .line 202
    .end local v1    # "digitIndex":I
    .restart local v0    # "digitIndex":I
    :goto_1d
    add-int/lit8 v3, v3, -0x1

    .line 203
    iget v4, p0, Ljava/lang/RealToString;->digitCount:I

    if-lt v0, v4, :cond_35

    .line 209
    add-int/lit8 v4, v2, -0x1

    if-ne v3, v4, :cond_2c

    .line 210
    const/16 v4, 0x30

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 212
    :cond_2c
    const/16 v4, 0x45

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    .line 213
    invoke-static {p1, v2}, Ljava/lang/IntegralToString;->appendInt(Ljava/lang/AbstractStringBuilder;I)V

    .line 214
    return-void

    .line 206
    :cond_35
    iget-object v4, p0, Ljava/lang/RealToString;->digits:[I

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "digitIndex":I
    .restart local v1    # "digitIndex":I
    aget v4, v4, v0

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    invoke-virtual {p1, v4}, Ljava/lang/AbstractStringBuilder;->append0(C)V

    move v0, v1

    .end local v1    # "digitIndex":I
    .restart local v0    # "digitIndex":I
    goto :goto_1d
.end method

.method public static getInstance()Ljava/lang/RealToString;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Ljava/lang/RealToString;->INSTANCE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RealToString;

    return-object v0
.end method

.method private longDigitGenerator(JIZZI)V
    .registers 30
    .param p1, "f"    # J
    .param p3, "e"    # I
    .param p4, "isDenormalized"    # Z
    .param p5, "mantissaIsZero"    # Z
    .param p6, "p"    # I

    .prologue
    .line 249
    if-ltz p3, :cond_55

    .line 250
    const-wide/16 v18, 0x1

    shl-long v2, v18, p3

    .line 251
    .local v2, "M":J
    if-nez p5, :cond_4e

    .line 252
    add-int/lit8 v13, p3, 0x1

    shl-long v4, p1, v13

    .line 253
    .local v4, "R":J
    const-wide/16 v6, 0x2

    .line 269
    .local v6, "S":J
    :goto_e
    add-int v13, p3, p6

    add-int/lit8 v13, v13, -0x1

    int-to-double v0, v13

    move-wide/from16 v18, v0

    sget-wide v20, Ljava/lang/RealToString;->invLogOfTenBaseTwo:D

    mul-double v18, v18, v20

    const-wide v20, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-int v11, v0

    .line 271
    .local v11, "k":I
    if-lez v11, :cond_6f

    .line 272
    sget-object v13, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v18, v13, v11

    mul-long v6, v6, v18

    .line 279
    :cond_2f
    :goto_2f
    add-long v18, v4, v2

    cmp-long v13, v18, v6

    if-lez v13, :cond_86

    .line 280
    move-object/from16 v0, p0

    iput v11, v0, Ljava/lang/RealToString;->firstK:I

    .line 291
    :goto_39
    const/4 v8, 0x0

    .line 292
    .local v8, "U":I
    const/4 v10, 0x3

    .local v10, "i":I
    :goto_3b
    if-ltz v10, :cond_95

    .line 293
    shl-long v18, v6, v10

    sub-long v14, v4, v18

    .line 294
    .local v14, "remainder":J
    const-wide/16 v18, 0x0

    cmp-long v13, v14, v18

    if-ltz v13, :cond_4b

    .line 295
    move-wide v4, v14

    .line 296
    const/4 v13, 0x1

    shl-int/2addr v13, v10

    add-int/2addr v8, v13

    .line 292
    :cond_4b
    add-int/lit8 v10, v10, -0x1

    goto :goto_3b

    .line 255
    .end local v4    # "R":J
    .end local v6    # "S":J
    .end local v8    # "U":I
    .end local v10    # "i":I
    .end local v11    # "k":I
    .end local v14    # "remainder":J
    :cond_4e
    add-int/lit8 v13, p3, 0x2

    shl-long v4, p1, v13

    .line 256
    .restart local v4    # "R":J
    const-wide/16 v6, 0x4

    .restart local v6    # "S":J
    goto :goto_e

    .line 259
    .end local v2    # "M":J
    .end local v4    # "R":J
    .end local v6    # "S":J
    :cond_55
    const-wide/16 v2, 0x1

    .line 260
    .restart local v2    # "M":J
    if-nez p4, :cond_5b

    if-nez p5, :cond_65

    .line 261
    :cond_5b
    const/4 v13, 0x1

    shl-long v4, p1, v13

    .line 262
    .restart local v4    # "R":J
    const-wide/16 v18, 0x1

    rsub-int/lit8 v13, p3, 0x1

    shl-long v6, v18, v13

    .restart local v6    # "S":J
    goto :goto_e

    .line 264
    .end local v4    # "R":J
    .end local v6    # "S":J
    :cond_65
    const/4 v13, 0x2

    shl-long v4, p1, v13

    .line 265
    .restart local v4    # "R":J
    const-wide/16 v18, 0x1

    rsub-int/lit8 v13, p3, 0x2

    shl-long v6, v18, v13

    .restart local v6    # "S":J
    goto :goto_e

    .line 273
    .restart local v11    # "k":I
    :cond_6f
    if-gez v11, :cond_2f

    .line 274
    sget-object v13, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-int v0, v11

    move/from16 v18, v0

    aget-wide v16, v13, v18

    .line 275
    .local v16, "scale":J
    mul-long v4, v4, v16

    .line 276
    const-wide/16 v18, 0x1

    cmp-long v13, v2, v18

    if-nez v13, :cond_83

    move-wide/from16 v2, v16

    :goto_82
    goto :goto_2f

    :cond_83
    mul-long v2, v2, v16

    goto :goto_82

    .line 282
    .end local v16    # "scale":J
    :cond_86
    add-int/lit8 v13, v11, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Ljava/lang/RealToString;->firstK:I

    .line 283
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    .line 284
    const-wide/16 v18, 0xa

    mul-long v2, v2, v18

    goto :goto_39

    .line 300
    .restart local v8    # "U":I
    .restart local v10    # "i":I
    :cond_95
    cmp-long v13, v4, v2

    if-gez v13, :cond_be

    const/4 v12, 0x1

    .line 301
    .local v12, "low":Z
    :goto_9a
    add-long v18, v4, v2

    cmp-long v13, v18, v6

    if-lez v13, :cond_c0

    const/4 v9, 0x1

    .line 303
    .local v9, "high":Z
    :goto_a1
    if-nez v12, :cond_a5

    if-eqz v9, :cond_c2

    .line 310
    :cond_a5
    if-eqz v12, :cond_e0

    if-nez v9, :cond_e0

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v13, v18

    .line 319
    :goto_bd
    return-void

    .line 300
    .end local v9    # "high":Z
    .end local v12    # "low":Z
    :cond_be
    const/4 v12, 0x0

    goto :goto_9a

    .line 301
    .restart local v12    # "low":Z
    :cond_c0
    const/4 v9, 0x0

    goto :goto_a1

    .line 306
    .restart local v9    # "high":Z
    :cond_c2
    const-wide/16 v18, 0xa

    mul-long v4, v4, v18

    .line 307
    const-wide/16 v18, 0xa

    mul-long v2, v2, v18

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v13, v18

    goto/16 :goto_39

    .line 312
    :cond_e0
    if-eqz v9, :cond_fb

    if-nez v12, :cond_fb

    .line 313
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    add-int/lit8 v19, v8, 0x1

    aput v19, v13, v18

    goto :goto_bd

    .line 314
    :cond_fb
    const/4 v13, 0x1

    shl-long v18, v4, v13

    cmp-long v13, v18, v6

    if-gez v13, :cond_117

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    aput v8, v13, v18

    goto :goto_bd

    .line 317
    :cond_117
    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/lang/RealToString;->digits:[I

    move-object/from16 v0, p0

    iget v0, v0, Ljava/lang/RealToString;->digitCount:I

    move/from16 v18, v0

    add-int/lit8 v19, v18, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Ljava/lang/RealToString;->digitCount:I

    add-int/lit8 v19, v8, 0x1

    aput v19, v13, v18

    goto :goto_bd
.end method

.method private static resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 51
    if-eqz p0, :cond_6

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/AbstractStringBuilder;->append0(Ljava/lang/String;)V

    .line 53
    const/4 p1, 0x0

    .line 55
    .end local p1    # "s":Ljava/lang/String;
    :cond_6
    return-object p1
.end method


# virtual methods
.method public appendDouble(Ljava/lang/AbstractStringBuilder;D)V
    .registers 4
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "d"    # D

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    .line 64
    return-void
.end method

.method public appendFloat(Ljava/lang/AbstractStringBuilder;F)V
    .registers 3
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "f"    # F

    .prologue
    .line 130
    invoke-virtual {p0, p1, p2}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    .line 131
    return-void
.end method

.method public convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;
    .registers 26
    .param p1, "sb"    # Ljava/lang/AbstractStringBuilder;
    .param p2, "inputNumber"    # F

    .prologue
    .line 134
    invoke-static/range {p2 .. p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v19

    .line 135
    .local v19, "inputNumberBits":I
    const/high16 v3, -0x80000000

    and-int v3, v3, v19

    if-nez v3, :cond_31

    const/16 v21, 0x1

    .line 136
    .local v21, "positive":Z
    :goto_c
    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    and-int v3, v3, v19

    shr-int/lit8 v10, v3, 0x17

    .line 137
    .local v10, "e":I
    const v3, 0x7fffff

    and-int v17, v19, v3

    .line 138
    .local v17, "f":I
    if-nez v17, :cond_34

    const/4 v8, 0x1

    .line 140
    .local v8, "mantissaIsZero":Z
    :goto_1a
    const/16 v22, 0x0

    .line 141
    .local v22, "quickResult":Ljava/lang/String;
    const/16 v3, 0xff

    if-ne v10, v3, :cond_3c

    .line 142
    if-eqz v8, :cond_39

    .line 143
    if-eqz v21, :cond_36

    const-string v22, "Infinity"

    .line 150
    :cond_26
    :goto_26
    if-eqz v22, :cond_48

    .line 151
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/RealToString;->resultOrSideEffect(Ljava/lang/AbstractStringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 188
    :goto_30
    return-object v3

    .line 135
    .end local v8    # "mantissaIsZero":Z
    .end local v10    # "e":I
    .end local v17    # "f":I
    .end local v21    # "positive":Z
    .end local v22    # "quickResult":Ljava/lang/String;
    :cond_31
    const/16 v21, 0x0

    goto :goto_c

    .line 138
    .restart local v10    # "e":I
    .restart local v17    # "f":I
    .restart local v21    # "positive":Z
    :cond_34
    const/4 v8, 0x0

    goto :goto_1a

    .line 143
    .restart local v8    # "mantissaIsZero":Z
    .restart local v22    # "quickResult":Ljava/lang/String;
    :cond_36
    const-string v22, "-Infinity"

    goto :goto_26

    .line 145
    :cond_39
    const-string v22, "NaN"

    goto :goto_26

    .line 147
    :cond_3c
    if-nez v10, :cond_26

    if-eqz v8, :cond_26

    .line 148
    if-eqz v21, :cond_45

    const-string v22, "0.0"

    :goto_44
    goto :goto_26

    :cond_45
    const-string v22, "-0.0"

    goto :goto_44

    .line 154
    :cond_48
    const/16 v20, 0x96

    .line 156
    .local v20, "p":I
    const/16 v9, 0x17

    .line 157
    .local v9, "numBits":I
    if-nez v10, :cond_67

    .line 158
    rsub-int/lit8 v6, v20, 0x1

    .line 159
    .local v6, "pow":I
    const/16 v3, 0x8

    move/from16 v0, v17

    if-ge v0, v3, :cond_5a

    .line 160
    shl-int/lit8 v17, v17, 0x2

    .line 161
    add-int/lit8 v6, v6, -0x2

    .line 163
    :cond_5a
    move/from16 v18, v17

    .line 164
    .local v18, "ff":I
    :goto_5c
    const/high16 v3, 0x800000

    and-int v3, v3, v18

    if-nez v3, :cond_6d

    .line 165
    shl-int/lit8 v18, v18, 0x1

    .line 166
    add-int/lit8 v9, v9, -0x1

    goto :goto_5c

    .line 171
    .end local v6    # "pow":I
    .end local v18    # "ff":I
    :cond_67
    const/high16 v3, 0x800000

    or-int v17, v17, v3

    .line 172
    sub-int v6, v10, v20

    .line 175
    .restart local v6    # "pow":I
    :cond_6d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Ljava/lang/RealToString;->digitCount:I

    move-object/from16 v0, p0

    iput v3, v0, Ljava/lang/RealToString;->firstK:I

    .line 176
    const/16 v3, -0x3b

    if-ge v3, v6, :cond_7e

    const/16 v3, 0x23

    if-lt v6, v3, :cond_84

    :cond_7e
    const/16 v3, -0x3b

    if-ne v6, v3, :cond_bd

    if-nez v8, :cond_bd

    .line 177
    :cond_84
    move/from16 v0, v17

    int-to-long v4, v0

    if-nez v10, :cond_bb

    const/4 v7, 0x1

    :goto_8a
    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Ljava/lang/RealToString;->longDigitGenerator(JIZZI)V

    .line 181
    :goto_8f
    if-eqz p1, :cond_ce

    move-object/from16 v2, p1

    .line 182
    .local v2, "dst":Ljava/lang/AbstractStringBuilder;
    :goto_93
    const v3, 0x4b189680    # 1.0E7f

    cmpl-float v3, p2, v3

    if-gez v3, :cond_af

    const v3, -0x34e76980    # -1.0E7f

    cmpg-float v3, p2, v3

    if-lez v3, :cond_af

    const v3, -0x457ced91    # -0.001f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_d6

    const v3, 0x3a83126f    # 0.001f

    cmpg-float v3, p2, v3

    if-gez v3, :cond_d6

    .line 184
    :cond_af
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormatExponential(Ljava/lang/AbstractStringBuilder;Z)V

    .line 188
    :goto_b6
    if-eqz p1, :cond_de

    const/4 v3, 0x0

    goto/16 :goto_30

    .line 177
    .end local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    :cond_bb
    const/4 v7, 0x0

    goto :goto_8a

    .line 179
    :cond_bd
    move/from16 v0, v17

    int-to-long v12, v0

    if-nez v10, :cond_cc

    const/4 v15, 0x1

    :goto_c3
    move-object/from16 v11, p0

    move v14, v6

    move/from16 v16, v9

    invoke-direct/range {v11 .. v16}, Ljava/lang/RealToString;->bigIntDigitGenerator(JIZI)V

    goto :goto_8f

    :cond_cc
    const/4 v15, 0x0

    goto :goto_c3

    .line 181
    :cond_ce
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    goto :goto_93

    .line 186
    .restart local v2    # "dst":Ljava/lang/AbstractStringBuilder;
    :cond_d6
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v2, v1}, Ljava/lang/RealToString;->freeFormat(Ljava/lang/AbstractStringBuilder;Z)V

    goto :goto_b6

    .line 188
    :cond_de
    invoke-virtual {v2}, Ljava/lang/AbstractStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_30
.end method

.method public doubleToString(D)Ljava/lang/String;
    .registers 4
    .param p1, "d"    # D

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Ljava/lang/RealToString;->convertDouble(Ljava/lang/AbstractStringBuilder;D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public floatToString(F)Ljava/lang/String;
    .registers 3
    .param p1, "f"    # F

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/RealToString;->convertFloat(Ljava/lang/AbstractStringBuilder;F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
