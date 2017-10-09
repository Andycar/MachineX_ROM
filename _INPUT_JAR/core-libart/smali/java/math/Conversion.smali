.class Ljava/math/Conversion;
.super Ljava/lang/Object;
.source "Conversion.java"


# static fields
.field static final bigRadices:[I

.field static final digitFitInInt:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 33
    const/16 v0, 0x25

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Ljava/math/Conversion;->digitFitInInt:[I

    .line 43
    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_62

    sput-object v0, Ljava/math/Conversion;->bigRadices:[I

    return-void

    .line 33
    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        0x1f
        0x13
        0xf
        0xd
        0xb
        0xb
        0xa
        0x9
        0x9
        0x8
        0x8
        0x8
        0x8
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x5
    .end array-data

    .line 43
    :array_62
    .array-data 4
        -0x80000000
        0x4546b3db
        0x40000000    # 2.0f
        0x48c27395
        0x159fd800
        0x75db9c97
        0x40000000    # 2.0f
        0x17179149
        0x3b9aca00
        0xcc6db61
        0x19a10000
        0x309f1021
        0x57f6c100
        0xa2f1b6f
        0x10000000
        0x18754571
        0x247dbc80
        0x3547667b
        0x4c4b4000
        0x6b5a6e1d
        0x6c20a40
        0x8d2d931
        0xb640000
        0xe8d4a51
        0x1269ae40
        0x17179149
        0x1cb91000
        0x23744899
        0x2b73a840
        0x34e63b41
        0x40000000    # 2.0f
        0x4cfa3cc1    # 1.31196424E8f
        0x5c13d840
        0x6d91b519
        0x39aa400
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bigInteger2Double(Ljava/math/BigInteger;)D
    .registers 19
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 419
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 421
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    const/4 v15, 0x2

    if-lt v14, v15, :cond_1a

    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_20

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/math/BigInteger;->digits:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    if-lez v14, :cond_20

    .line 423
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v14

    long-to-double v14, v14

    .line 459
    :goto_1f
    return-wide v14

    .line 426
    :cond_20
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    const/16 v15, 0x20

    if-le v14, v15, :cond_34

    .line 427
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-lez v14, :cond_31

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1f

    :cond_31
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1f

    .line 430
    :cond_34
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 431
    .local v2, "bitLen":I
    add-int/lit8 v14, v2, -0x1

    int-to-long v4, v14

    .line 432
    .local v4, "exponent":J
    add-int/lit8 v3, v2, -0x36

    .line 434
    .local v3, "delta":I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v6

    .line 439
    .local v6, "lVal":J
    const-wide v14, 0x1fffffffffffffL

    and-long v8, v6, v14

    .line 440
    .local v8, "mantissa":J
    const-wide/16 v14, 0x3ff

    cmp-long v14, v4, v14

    if-nez v14, :cond_8a

    .line 441
    const-wide v14, 0x1fffffffffffffL

    cmp-long v14, v8, v14

    if-nez v14, :cond_6f

    .line 442
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-lez v14, :cond_6c

    const-wide/high16 v14, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1f

    :cond_6c
    const-wide/high16 v14, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_1f

    .line 445
    :cond_6f
    const-wide v14, 0x1ffffffffffffeL

    cmp-long v14, v8, v14

    if-nez v14, :cond_8a

    .line 446
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-lez v14, :cond_84

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    goto :goto_1f

    :cond_84
    const-wide v14, -0x10000000000001L

    goto :goto_1f

    .line 450
    :cond_8a
    const-wide/16 v14, 0x1

    and-long/2addr v14, v8

    const-wide/16 v16, 0x1

    cmp-long v14, v14, v16

    if-nez v14, :cond_a9

    const-wide/16 v14, 0x2

    and-long/2addr v14, v8

    const-wide/16 v16, 0x2

    cmp-long v14, v14, v16

    if-eqz v14, :cond_a6

    move-object/from16 v0, p0

    iget-object v14, v0, Ljava/math/BigInteger;->digits:[I

    invoke-static {v3, v14}, Ljava/math/BitLevel;->nonZeroDroppedBits(I[I)Z

    move-result v14

    if-eqz v14, :cond_a9

    .line 453
    :cond_a6
    const-wide/16 v14, 0x2

    add-long/2addr v8, v14

    .line 455
    :cond_a9
    const/4 v14, 0x1

    shr-long/2addr v8, v14

    .line 456
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->sign:I

    if-gez v14, :cond_c8

    const-wide/high16 v10, -0x8000000000000000L

    .line 457
    .local v10, "resSign":J
    :goto_b3
    const-wide/16 v14, 0x3ff

    add-long/2addr v14, v4

    const/16 v16, 0x34

    shl-long v14, v14, v16

    const-wide/high16 v16, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long v4, v14, v16

    .line 458
    or-long v14, v10, v4

    or-long v12, v14, v8

    .line 459
    .local v12, "result":J
    invoke-static {v12, v13}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v14

    goto/16 :goto_1f

    .line 456
    .end local v10    # "resSign":J
    .end local v12    # "result":J
    :cond_c8
    const-wide/16 v10, 0x0

    goto :goto_b3
.end method

.method static bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;
    .registers 30
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "radix"    # I

    .prologue
    .line 54
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 55
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigInteger;->sign:I

    move/from16 v19, v0

    .line 56
    .local v19, "sign":I
    move-object/from16 v0, p0

    iget v14, v0, Ljava/math/BigInteger;->numberLength:I

    .line 57
    .local v14, "numberLength":I
    move-object/from16 v0, p0

    iget-object v10, v0, Ljava/math/BigInteger;->digits:[I

    .line 59
    .local v10, "digits":[I
    if-nez v19, :cond_16

    .line 60
    const-string v24, "0"

    .line 127
    :goto_15
    return-object v24

    .line 62
    :cond_16
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v14, v0, :cond_3a

    .line 63
    add-int/lit8 v24, v14, -0x1

    aget v11, v10, v24

    .line 64
    .local v11, "highDigit":I
    int-to-long v0, v11

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v22, v24, v26

    .line 65
    .local v22, "v":J
    if-gez v19, :cond_31

    .line 66
    move-wide/from16 v0, v22

    neg-long v0, v0

    move-wide/from16 v22, v0

    .line 68
    :cond_31
    move-wide/from16 v0, v22

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v24

    goto :goto_15

    .line 70
    .end local v11    # "highDigit":I
    .end local v22    # "v":J
    :cond_3a
    const/16 v24, 0xa

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_52

    const/16 v24, 0x2

    move/from16 v0, p1

    move/from16 v1, v24

    if-lt v0, v1, :cond_52

    const/16 v24, 0x24

    move/from16 v0, p1

    move/from16 v1, v24

    if-le v0, v1, :cond_57

    .line 72
    :cond_52
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v24

    goto :goto_15

    .line 75
    :cond_57
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->log(D)D

    move-result-wide v24

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->log(D)D

    move-result-wide v26

    div-double v6, v24, v26

    .line 76
    .local v6, "bitsForRadixDigit":D
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/math/BigInteger;->bitLength()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v26, v24, v6

    if-gez v19, :cond_e7

    const/16 v24, 0x1

    :goto_7b
    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    add-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    add-int/lit8 v17, v24, 0x1

    .line 79
    .local v17, "resLengthInChars":I
    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v18, v0

    .line 80
    .local v18, "result":[C
    move/from16 v8, v17

    .line 82
    .local v8, "currentChar":I
    const/16 v24, 0x10

    move/from16 v0, p1

    move/from16 v1, v24

    if-eq v0, v1, :cond_112

    .line 83
    new-array v0, v14, [I

    move-object/from16 v20, v0

    .line 84
    .local v20, "temp":[I
    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-static {v10, v0, v1, v2, v14}, Ljava/lang/System;->arraycopy([II[III)V

    .line 85
    move/from16 v21, v14

    .line 86
    .local v21, "tempLen":I
    sget-object v24, Ljava/math/Conversion;->digitFitInInt:[I

    aget v5, v24, p1

    .line 89
    .local v5, "charsPerInt":I
    sget-object v24, Ljava/math/Conversion;->bigRadices:[I

    add-int/lit8 v25, p1, -0x2

    aget v4, v24, v25

    .line 93
    .local v4, "bigRadix":I
    :cond_b6
    move-object/from16 v0, v20

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2, v4}, Ljava/math/Division;->divideArrayByInt([I[III)I

    move-result v16

    .line 95
    .local v16, "resDigit":I
    move v15, v8

    .line 97
    .local v15, "previous":I
    :cond_c1
    add-int/lit8 v8, v8, -0x1

    rem-int v24, v16, p1

    move/from16 v0, v24

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v24

    aput-char v24, v18, v8

    .line 99
    div-int v16, v16, p1

    if-eqz v16, :cond_d5

    if-nez v8, :cond_c1

    .line 100
    :cond_d5
    sub-int v24, v5, v15

    add-int v9, v24, v8

    .line 101
    .local v9, "delta":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_da
    if-ge v12, v9, :cond_ea

    if-lez v8, :cond_ea

    .line 102
    add-int/lit8 v8, v8, -0x1

    const/16 v24, 0x30

    aput-char v24, v18, v8

    .line 101
    add-int/lit8 v12, v12, 0x1

    goto :goto_da

    .line 76
    .end local v4    # "bigRadix":I
    .end local v5    # "charsPerInt":I
    .end local v8    # "currentChar":I
    .end local v9    # "delta":I
    .end local v12    # "i":I
    .end local v15    # "previous":I
    .end local v16    # "resDigit":I
    .end local v17    # "resLengthInChars":I
    .end local v18    # "result":[C
    .end local v20    # "temp":[I
    .end local v21    # "tempLen":I
    :cond_e7
    const/16 v24, 0x0

    goto :goto_7b

    .line 104
    .restart local v4    # "bigRadix":I
    .restart local v5    # "charsPerInt":I
    .restart local v8    # "currentChar":I
    .restart local v9    # "delta":I
    .restart local v12    # "i":I
    .restart local v15    # "previous":I
    .restart local v16    # "resDigit":I
    .restart local v17    # "resLengthInChars":I
    .restart local v18    # "result":[C
    .restart local v20    # "temp":[I
    .restart local v21    # "tempLen":I
    :cond_ea
    add-int/lit8 v12, v21, -0x1

    :goto_ec
    if-lez v12, :cond_f5

    aget v24, v20, v12

    if-nez v24, :cond_f5

    add-int/lit8 v12, v12, -0x1

    goto :goto_ec

    .line 107
    :cond_f5
    add-int/lit8 v21, v12, 0x1

    .line 108
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_b6

    const/16 v24, 0x0

    aget v24, v20, v24

    if-nez v24, :cond_b6

    .line 121
    .end local v4    # "bigRadix":I
    .end local v5    # "charsPerInt":I
    .end local v9    # "delta":I
    .end local v15    # "previous":I
    .end local v16    # "resDigit":I
    .end local v20    # "temp":[I
    .end local v21    # "tempLen":I
    :cond_105
    :goto_105
    aget-char v24, v18, v8

    const/16 v25, 0x30

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_13a

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_105

    .line 114
    .end local v12    # "i":I
    :cond_112
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_113
    if-ge v12, v14, :cond_105

    .line 115
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_116
    const/16 v24, 0x8

    move/from16 v0, v24

    if-ge v13, v0, :cond_137

    if-lez v8, :cond_137

    .line 116
    aget v24, v10, v12

    shl-int/lit8 v25, v13, 0x2

    shr-int v24, v24, v25

    and-int/lit8 v16, v24, 0xf

    .line 117
    .restart local v16    # "resDigit":I
    add-int/lit8 v8, v8, -0x1

    const/16 v24, 0x10

    move/from16 v0, v16

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v24

    aput-char v24, v18, v8

    .line 115
    add-int/lit8 v13, v13, 0x1

    goto :goto_116

    .line 114
    .end local v16    # "resDigit":I
    :cond_137
    add-int/lit8 v12, v12, 0x1

    goto :goto_113

    .line 124
    .end local v13    # "j":I
    :cond_13a
    const/16 v24, -0x1

    move/from16 v0, v19

    move/from16 v1, v24

    if-ne v0, v1, :cond_148

    .line 125
    add-int/lit8 v8, v8, -0x1

    const/16 v24, 0x2d

    aput-char v24, v18, v8

    .line 127
    :cond_148
    new-instance v24, Ljava/lang/String;

    sub-int v25, v17, v8

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-direct {v0, v1, v8, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_15
.end method

.method static divideLongByBillion(J)J
    .registers 16
    .param p0, "a"    # J

    .prologue
    const/4 v12, 0x1

    .line 398
    const-wide/16 v10, 0x0

    cmp-long v10, p0, v10

    if-ltz v10, :cond_1a

    .line 399
    const-wide/32 v2, 0x3b9aca00

    .line 400
    .local v2, "bLong":J
    div-long v6, p0, v2

    .line 401
    .local v6, "quot":J
    rem-long v8, p0, v2

    .line 414
    .end local v2    # "bLong":J
    .local v8, "rem":J
    :goto_e
    const/16 v10, 0x20

    shl-long v10, v8, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v12, v6

    or-long/2addr v10, v12

    return-wide v10

    .line 407
    .end local v6    # "quot":J
    .end local v8    # "rem":J
    :cond_1a
    ushr-long v0, p0, v12

    .line 408
    .local v0, "aPos":J
    const-wide/32 v4, 0x1dcd6500

    .line 409
    .local v4, "bPos":J
    div-long v6, v0, v4

    .line 410
    .restart local v6    # "quot":J
    rem-long v8, v0, v4

    .line 412
    .restart local v8    # "rem":J
    shl-long v10, v8, v12

    const-wide/16 v12, 0x1

    and-long/2addr v12, p0

    add-long v8, v10, v12

    goto :goto_e
.end method

.method static toDecimalScaledString(JI)Ljava/lang/String;
    .registers 27
    .param p0, "value"    # J
    .param p2, "scale"    # I

    .prologue
    .line 301
    const-wide/16 v18, 0x0

    cmp-long v15, p0, v18

    if-gez v15, :cond_33

    const/4 v8, 0x1

    .line 302
    .local v8, "negNumber":Z
    :goto_7
    if-eqz v8, :cond_e

    .line 303
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    .line 305
    :cond_e
    const-wide/16 v18, 0x0

    cmp-long v15, p0, v18

    if-nez v15, :cond_58

    .line 306
    packed-switch p2, :pswitch_data_168

    .line 315
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v13, "result1":Ljava/lang/StringBuilder;
    if-gez p2, :cond_4a

    .line 317
    const-string v15, "0E+"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_23
    const/high16 v15, -0x80000000

    move/from16 v0, p2

    if-ne v0, v15, :cond_50

    const-string v15, "2147483648"

    :goto_2b
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 391
    .end local v13    # "result1":Ljava/lang/StringBuilder;
    :goto_32
    return-object v15

    .line 301
    .end local v8    # "negNumber":Z
    :cond_33
    const/4 v8, 0x0

    goto :goto_7

    .line 307
    .restart local v8    # "negNumber":Z
    :pswitch_35
    const-string v15, "0"

    goto :goto_32

    .line 308
    :pswitch_38
    const-string v15, "0.0"

    goto :goto_32

    .line 309
    :pswitch_3b
    const-string v15, "0.00"

    goto :goto_32

    .line 310
    :pswitch_3e
    const-string v15, "0.000"

    goto :goto_32

    .line 311
    :pswitch_41
    const-string v15, "0.0000"

    goto :goto_32

    .line 312
    :pswitch_44
    const-string v15, "0.00000"

    goto :goto_32

    .line 313
    :pswitch_47
    const-string v15, "0.000000"

    goto :goto_32

    .line 319
    .restart local v13    # "result1":Ljava/lang/StringBuilder;
    :cond_4a
    const-string v15, "0E"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 321
    :cond_50
    move/from16 v0, p2

    neg-int v15, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    goto :goto_2b

    .line 326
    .end local v13    # "result1":Ljava/lang/StringBuilder;
    :cond_58
    const/16 v9, 0x12

    .line 331
    .local v9, "resLengthInChars":I
    const/16 v15, 0x13

    new-array v12, v15, [C

    .line 334
    .local v12, "result":[C
    move v2, v9

    .line 335
    .local v2, "currentChar":I
    move-wide/from16 v16, p0

    .line 337
    .local v16, "v":J
    :cond_61
    move-wide/from16 v10, v16

    .line 338
    .local v10, "prev":J
    const-wide/16 v18, 0xa

    div-long v16, v16, v18

    .line 339
    add-int/lit8 v2, v2, -0x1

    const-wide/16 v18, 0x30

    const-wide/16 v20, 0xa

    mul-long v20, v20, v16

    sub-long v20, v10, v20

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v15, v0

    int-to-char v15, v15

    aput-char v15, v12, v2

    .line 340
    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-nez v15, :cond_61

    .line 342
    int-to-long v0, v9

    move-wide/from16 v18, v0

    int-to-long v0, v2

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v18, v18, v20

    const-wide/16 v20, 0x1

    sub-long v4, v18, v20

    .line 343
    .local v4, "exponent":J
    if-nez p2, :cond_a6

    .line 344
    if-eqz v8, :cond_9c

    .line 345
    add-int/lit8 v2, v2, -0x1

    const/16 v15, 0x2d

    aput-char v15, v12, v2

    .line 347
    :cond_9c
    new-instance v15, Ljava/lang/String;

    sub-int v18, v9, v2

    move/from16 v0, v18

    invoke-direct {v15, v12, v2, v0}, Ljava/lang/String;-><init>([CII)V

    goto :goto_32

    .line 349
    :cond_a6
    if-lez p2, :cond_116

    const-wide/16 v18, -0x6

    cmp-long v15, v4, v18

    if-ltz v15, :cond_116

    .line 350
    const-wide/16 v18, 0x0

    cmp-long v15, v4, v18

    if-ltz v15, :cond_df

    .line 352
    long-to-int v15, v4

    add-int v6, v2, v15

    .line 353
    .local v6, "insertPoint":I
    add-int/lit8 v7, v9, -0x1

    .local v7, "j":I
    :goto_b9
    if-lt v7, v6, :cond_c4

    .line 354
    add-int/lit8 v15, v7, 0x1

    aget-char v18, v12, v7

    aput-char v18, v12, v15

    .line 353
    add-int/lit8 v7, v7, -0x1

    goto :goto_b9

    .line 356
    :cond_c4
    add-int/lit8 v6, v6, 0x1

    const/16 v15, 0x2e

    aput-char v15, v12, v6

    .line 357
    if-eqz v8, :cond_d2

    .line 358
    add-int/lit8 v2, v2, -0x1

    const/16 v15, 0x2d

    aput-char v15, v12, v2

    .line 360
    :cond_d2
    new-instance v15, Ljava/lang/String;

    sub-int v18, v9, v2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-direct {v15, v12, v2, v0}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_32

    .line 363
    .end local v6    # "insertPoint":I
    .end local v7    # "j":I
    :cond_df
    const/4 v7, 0x2

    .restart local v7    # "j":I
    :goto_e0
    int-to-long v0, v7

    move-wide/from16 v18, v0

    neg-long v0, v4

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    cmp-long v15, v18, v20

    if-gez v15, :cond_f7

    .line 364
    add-int/lit8 v2, v2, -0x1

    const/16 v15, 0x30

    aput-char v15, v12, v2

    .line 363
    add-int/lit8 v7, v7, 0x1

    goto :goto_e0

    .line 366
    :cond_f7
    add-int/lit8 v2, v2, -0x1

    const/16 v15, 0x2e

    aput-char v15, v12, v2

    .line 367
    add-int/lit8 v2, v2, -0x1

    const/16 v15, 0x30

    aput-char v15, v12, v2

    .line 368
    if-eqz v8, :cond_10b

    .line 369
    add-int/lit8 v2, v2, -0x1

    const/16 v15, 0x2d

    aput-char v15, v12, v2

    .line 371
    :cond_10b
    new-instance v15, Ljava/lang/String;

    sub-int v18, v9, v2

    move/from16 v0, v18

    invoke-direct {v15, v12, v2, v0}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_32

    .line 373
    .end local v7    # "j":I
    :cond_116
    add-int/lit8 v14, v2, 0x1

    .line 374
    .local v14, "startPoint":I
    move v3, v9

    .line 375
    .local v3, "endPoint":I
    new-instance v13, Ljava/lang/StringBuilder;

    rsub-int/lit8 v15, v14, 0x22

    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 376
    .restart local v13    # "result1":Ljava/lang/StringBuilder;
    if-eqz v8, :cond_127

    .line 377
    const/16 v15, 0x2d

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 379
    :cond_127
    rsub-int/lit8 v15, v14, 0x12

    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v15, v0, :cond_161

    .line 380
    aget-char v15, v12, v2

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 381
    const/16 v15, 0x2e

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    add-int/lit8 v15, v2, 0x1

    sub-int v18, v9, v2

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v13, v12, v15, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 386
    :goto_144
    const/16 v15, 0x45

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 387
    const-wide/16 v18, 0x0

    cmp-long v15, v4, v18

    if-lez v15, :cond_154

    .line 388
    const/16 v15, 0x2b

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    :cond_154
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_32

    .line 384
    :cond_161
    sub-int v15, v9, v2

    invoke-virtual {v13, v12, v2, v15}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_144

    .line 306
    nop

    :pswitch_data_168
    .packed-switch 0x0
        :pswitch_35
        :pswitch_38
        :pswitch_3b
        :pswitch_3e
        :pswitch_41
        :pswitch_44
        :pswitch_47
    .end packed-switch
.end method

.method static toDecimalScaledString(Ljava/math/BigInteger;I)Ljava/lang/String;
    .registers 44
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I

    .prologue
    .line 138
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 139
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigInteger;->sign:I

    move/from16 v25, v0

    .line 140
    .local v25, "sign":I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigInteger;->numberLength:I

    .line 141
    .local v15, "numberLength":I
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/math/BigInteger;->digits:[I

    .line 146
    .local v6, "digits":[I
    if-nez v25, :cond_56

    .line 147
    packed-switch p1, :pswitch_data_256

    .line 163
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v24, "result1":Ljava/lang/StringBuilder;
    if-gez p1, :cond_4c

    .line 165
    const-string v33, "0E+"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :goto_26
    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 293
    .end local v24    # "result1":Ljava/lang/StringBuilder;
    :goto_36
    return-object v33

    .line 149
    :pswitch_37
    const-string v33, "0"

    goto :goto_36

    .line 151
    :pswitch_3a
    const-string v33, "0.0"

    goto :goto_36

    .line 153
    :pswitch_3d
    const-string v33, "0.00"

    goto :goto_36

    .line 155
    :pswitch_40
    const-string v33, "0.000"

    goto :goto_36

    .line 157
    :pswitch_43
    const-string v33, "0.0000"

    goto :goto_36

    .line 159
    :pswitch_46
    const-string v33, "0.00000"

    goto :goto_36

    .line 161
    :pswitch_49
    const-string v33, "0.000000"

    goto :goto_36

    .line 167
    .restart local v24    # "result1":Ljava/lang/StringBuilder;
    :cond_4c
    const-string v33, "0E"

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 174
    .end local v24    # "result1":Ljava/lang/StringBuilder;
    :cond_56
    mul-int/lit8 v33, v15, 0xa

    add-int/lit8 v33, v33, 0x1

    add-int/lit8 v22, v33, 0x7

    .line 179
    .local v22, "resLengthInChars":I
    add-int/lit8 v33, v22, 0x1

    move/from16 v0, v33

    new-array v0, v0, [C

    move-object/from16 v23, v0

    .line 183
    .local v23, "result":[C
    move/from16 v4, v22

    .line 184
    .local v4, "currentChar":I
    const/16 v33, 0x1

    move/from16 v0, v33

    if-ne v15, v0, :cond_d8

    .line 185
    const/16 v33, 0x0

    aget v9, v6, v33

    .line 186
    .local v9, "highDigit":I
    if-gez v9, :cond_c0

    .line 187
    int-to-long v0, v9

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v34, v36, v38

    .line 189
    .local v34, "v":J
    :cond_7c
    move-wide/from16 v16, v34

    .line 190
    .local v16, "prev":J
    const-wide/16 v36, 0xa

    div-long v34, v34, v36

    .line 191
    add-int/lit8 v4, v4, -0x1

    const-wide/16 v36, 0xa

    mul-long v36, v36, v34

    sub-long v36, v16, v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x30

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    aput-char v33, v23, v4

    .line 192
    const-wide/16 v36, 0x0

    cmp-long v33, v34, v36

    if-nez v33, :cond_7c

    .line 238
    .end local v9    # "highDigit":I
    .end local v16    # "prev":J
    .end local v34    # "v":J
    :cond_9e
    :goto_9e
    if-gez v25, :cond_16a

    const/4 v14, 0x1

    .line 239
    .local v14, "negNumber":Z
    :goto_a1
    sub-int v33, v22, v4

    sub-int v33, v33, p1

    add-int/lit8 v8, v33, -0x1

    .line 240
    .local v8, "exponent":I
    if-nez p1, :cond_16d

    .line 241
    if-eqz v14, :cond_b1

    .line 242
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x2d

    aput-char v33, v23, v4

    .line 244
    :cond_b1
    new-instance v33, Ljava/lang/String;

    sub-int v36, v22, v4

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_36

    .line 194
    .end local v8    # "exponent":I
    .end local v14    # "negNumber":Z
    .restart local v9    # "highDigit":I
    :cond_c0
    move/from16 v34, v9

    .line 196
    .local v34, "v":I
    :cond_c2
    move/from16 v16, v34

    .line 197
    .local v16, "prev":I
    div-int/lit8 v34, v34, 0xa

    .line 198
    add-int/lit8 v4, v4, -0x1

    mul-int/lit8 v33, v34, 0xa

    sub-int v33, v16, v33

    add-int/lit8 v33, v33, 0x30

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    aput-char v33, v23, v4

    .line 199
    if-nez v34, :cond_c2

    goto :goto_9e

    .line 202
    .end local v9    # "highDigit":I
    .end local v16    # "prev":I
    .end local v34    # "v":I
    :cond_d8
    new-array v0, v15, [I

    move-object/from16 v29, v0

    .line 203
    .local v29, "temp":[I
    move/from16 v32, v15

    .line 204
    .local v32, "tempLen":I
    const/16 v33, 0x0

    const/16 v36, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v29

    move/from16 v2, v36

    move/from16 v3, v32

    invoke-static {v6, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 209
    :goto_ed
    const-wide/16 v26, 0x0

    .line 210
    .local v26, "result11":J
    add-int/lit8 v11, v32, -0x1

    .local v11, "i1":I
    :goto_f1
    if-ltz v11, :cond_123

    .line 211
    const/16 v33, 0x20

    shl-long v36, v26, v33

    aget v33, v29, v11

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v30, v36, v38

    .line 213
    .local v30, "temp1":J
    invoke-static/range {v30 .. v31}, Ljava/math/Conversion;->divideLongByBillion(J)J

    move-result-wide v20

    .line 214
    .local v20, "res":J
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v33, v0

    aput v33, v29, v11

    .line 215
    const/16 v33, 0x20

    shr-long v36, v20, v33

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v26, v0

    .line 210
    add-int/lit8 v11, v11, -0x1

    goto :goto_f1

    .line 217
    .end local v20    # "res":J
    .end local v30    # "temp1":J
    :cond_123
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v19, v0

    .line 218
    .local v19, "resDigit":I
    move/from16 v18, v4

    .line 220
    .local v18, "previous":I
    :cond_12a
    add-int/lit8 v4, v4, -0x1

    rem-int/lit8 v33, v19, 0xa

    add-int/lit8 v33, v33, 0x30

    move/from16 v0, v33

    int-to-char v0, v0

    move/from16 v33, v0

    aput-char v33, v23, v4

    .line 221
    div-int/lit8 v19, v19, 0xa

    if-eqz v19, :cond_13d

    if-nez v4, :cond_12a

    .line 222
    :cond_13d
    rsub-int/lit8 v33, v18, 0x9

    add-int v5, v33, v4

    .line 223
    .local v5, "delta":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_142
    if-ge v10, v5, :cond_14f

    if-lez v4, :cond_14f

    .line 224
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x30

    aput-char v33, v23, v4

    .line 223
    add-int/lit8 v10, v10, 0x1

    goto :goto_142

    .line 226
    :cond_14f
    add-int/lit8 v13, v32, -0x1

    .line 227
    .local v13, "j":I
    :goto_151
    aget v33, v29, v13

    if-nez v33, :cond_167

    .line 228
    if-nez v13, :cond_164

    .line 234
    :goto_157
    aget-char v33, v23, v4

    const/16 v36, 0x30

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_9e

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_157

    .line 227
    :cond_164
    add-int/lit8 v13, v13, -0x1

    goto :goto_151

    .line 232
    :cond_167
    add-int/lit8 v32, v13, 0x1

    .line 233
    goto :goto_ed

    .line 238
    .end local v5    # "delta":I
    .end local v10    # "i":I
    .end local v11    # "i1":I
    .end local v13    # "j":I
    .end local v18    # "previous":I
    .end local v19    # "resDigit":I
    .end local v26    # "result11":J
    .end local v29    # "temp":[I
    .end local v32    # "tempLen":I
    :cond_16a
    const/4 v14, 0x0

    goto/16 :goto_a1

    .line 247
    .restart local v8    # "exponent":I
    .restart local v14    # "negNumber":Z
    :cond_16d
    if-lez p1, :cond_1db

    const/16 v33, -0x6

    move/from16 v0, v33

    if-lt v8, v0, :cond_1db

    .line 248
    if-ltz v8, :cond_1a5

    .line 250
    add-int v12, v4, v8

    .line 251
    .local v12, "insertPoint":I
    add-int/lit8 v13, v22, -0x1

    .restart local v13    # "j":I
    :goto_17b
    if-lt v13, v12, :cond_186

    .line 252
    add-int/lit8 v33, v13, 0x1

    aget-char v36, v23, v13

    aput-char v36, v23, v33

    .line 251
    add-int/lit8 v13, v13, -0x1

    goto :goto_17b

    .line 254
    :cond_186
    add-int/lit8 v12, v12, 0x1

    const/16 v33, 0x2e

    aput-char v33, v23, v12

    .line 255
    if-eqz v14, :cond_194

    .line 256
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x2d

    aput-char v33, v23, v4

    .line 258
    :cond_194
    new-instance v33, Ljava/lang/String;

    sub-int v36, v22, v4

    add-int/lit8 v36, v36, 0x1

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_36

    .line 262
    .end local v12    # "insertPoint":I
    .end local v13    # "j":I
    :cond_1a5
    const/4 v13, 0x2

    .restart local v13    # "j":I
    :goto_1a6
    neg-int v0, v8

    move/from16 v33, v0

    add-int/lit8 v33, v33, 0x1

    move/from16 v0, v33

    if-ge v13, v0, :cond_1b8

    .line 263
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x30

    aput-char v33, v23, v4

    .line 262
    add-int/lit8 v13, v13, 0x1

    goto :goto_1a6

    .line 265
    :cond_1b8
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x2e

    aput-char v33, v23, v4

    .line 266
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x30

    aput-char v33, v23, v4

    .line 267
    if-eqz v14, :cond_1cc

    .line 268
    add-int/lit8 v4, v4, -0x1

    const/16 v33, 0x2d

    aput-char v33, v23, v4

    .line 270
    :cond_1cc
    new-instance v33, Ljava/lang/String;

    sub-int v36, v22, v4

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    move/from16 v2, v36

    invoke-direct {v0, v1, v4, v2}, Ljava/lang/String;-><init>([CII)V

    goto/16 :goto_36

    .line 273
    .end local v13    # "j":I
    :cond_1db
    add-int/lit8 v28, v4, 0x1

    .line 274
    .local v28, "startPoint":I
    move/from16 v7, v22

    .line 275
    .local v7, "endPoint":I
    new-instance v24, Ljava/lang/StringBuilder;

    add-int/lit8 v33, v7, 0x10

    sub-int v33, v33, v28

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 276
    .restart local v24    # "result1":Ljava/lang/StringBuilder;
    if-eqz v14, :cond_1f7

    .line 277
    const/16 v33, 0x2d

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 279
    :cond_1f7
    sub-int v33, v7, v28

    const/16 v36, 0x1

    move/from16 v0, v33

    move/from16 v1, v36

    if-lt v0, v1, :cond_249

    .line 280
    aget-char v33, v23, v4

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 281
    const/16 v33, 0x2e

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    add-int/lit8 v33, v4, 0x1

    sub-int v36, v22, v4

    add-int/lit8 v36, v36, -0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v33

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 288
    :goto_224
    const/16 v33, 0x45

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 289
    if-lez v8, :cond_238

    .line 290
    const/16 v33, 0x2b

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    :cond_238
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v24

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    goto/16 :goto_36

    .line 285
    :cond_249
    sub-int v33, v22, v4

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    move/from16 v2, v33

    invoke-virtual {v0, v1, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_224

    .line 147
    nop

    :pswitch_data_256
    .packed-switch 0x0
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
        :pswitch_49
    .end packed-switch
.end method
