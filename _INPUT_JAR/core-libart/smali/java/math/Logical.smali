.class Ljava/math/Logical;
.super Ljava/lang/Object;
.source "Logical.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 83
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_8

    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_b

    .line 84
    :cond_8
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 105
    .end local p0    # "val":Ljava/math/BigInteger;
    :cond_a
    :goto_a
    return-object p0

    .line 86
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_b
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 89
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move-object p0, p1

    .line 90
    goto :goto_a

    .line 93
    :cond_1d
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_2f

    .line 94
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_2a

    .line 95
    invoke-static {p0, p1}, Ljava/math/Logical;->andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_a

    .line 97
    :cond_2a
    invoke-static {p0, p1}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_a

    .line 100
    :cond_2f
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_38

    .line 101
    invoke-static {p1, p0}, Ljava/math/Logical;->andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_a

    .line 102
    :cond_38
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_43

    .line 103
    invoke-static {p0, p1}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_a

    .line 105
    :cond_43
    invoke-static {p1, p0}, Ljava/math/Logical;->andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_a
.end method

.method static andDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 10
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 132
    .local v2, "iPos":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 136
    .local v1, "iNeg":I
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v6, :cond_f

    .line 137
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 160
    :goto_e
    return-object v6

    .line 139
    :cond_f
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 140
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 143
    .local v4, "resDigits":[I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    .local v0, "i":I
    if-ne v0, v1, :cond_27

    .line 145
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    .line 148
    :cond_27
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 149
    .local v3, "limit":I
    :goto_2f
    if-ge v0, v3, :cond_41

    .line 150
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 149
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 154
    :cond_41
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v0, v6, :cond_52

    .line 155
    :goto_45
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_52

    .line 156
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 160
    :cond_52
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_e
.end method

.method static andNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 11
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    .prologue
    const/4 v8, -0x1

    .line 167
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 168
    .local v2, "iLonger":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 171
    .local v3, "iShorter":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_e

    .line 214
    .end local p0    # "longer":Ljava/math/BigInteger;
    :goto_d
    return-object p0

    .line 177
    .restart local p0    # "longer":Ljava/math/BigInteger;
    :cond_e
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 179
    .local v1, "i":I
    if-le v3, v2, :cond_39

    .line 180
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    and-int v0, v6, v7

    .line 186
    .local v0, "digit":I
    :goto_21
    if-nez v0, :cond_7a

    .line 187
    add-int/lit8 v1, v1, 0x1

    :goto_25
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_56

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    or-int/2addr v6, v7

    xor-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_56

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 181
    .end local v0    # "digit":I
    :cond_39
    if-ge v3, v2, :cond_49

    .line 182
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    and-int v0, v6, v7

    .restart local v0    # "digit":I
    goto :goto_21

    .line 184
    .end local v0    # "digit":I
    :cond_49
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    and-int v0, v6, v7

    .restart local v0    # "digit":I
    goto :goto_21

    .line 189
    :cond_56
    if-nez v0, :cond_7a

    .line 191
    :goto_58
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_67

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    xor-int/lit8 v0, v6, -0x1

    if-nez v0, :cond_67

    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 193
    :cond_67
    if-nez v0, :cond_7a

    .line 194
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v5, v6, 0x1

    .line 195
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 196
    .local v4, "resDigits":[I
    add-int/lit8 v6, v5, -0x1

    const/4 v7, 0x1

    aput v7, v4, v6

    .line 198
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "longer":Ljava/math/BigInteger;
    invoke-direct {p0, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_d

    .line 202
    .end local v4    # "resDigits":[I
    .end local v5    # "resLength":I
    .restart local p0    # "longer":Ljava/math/BigInteger;
    :cond_7a
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    .line 203
    .restart local v5    # "resLength":I
    new-array v4, v5, [I

    .line 204
    .restart local v4    # "resDigits":[I
    neg-int v6, v0

    aput v6, v4, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    :goto_83
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_95

    .line 207
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    or-int/2addr v6, v7

    aput v6, v4, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_83

    .line 210
    :cond_95
    :goto_95
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v6, :cond_a2

    .line 211
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v1

    aput v6, v4, v1

    .line 210
    add-int/lit8 v1, v1, 0x1

    goto :goto_95

    .line 214
    :cond_a2
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "longer":Ljava/math/BigInteger;
    invoke-direct {p0, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_d
.end method

.method static andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 219
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_5

    .line 244
    .end local p0    # "val":Ljava/math/BigInteger;
    :goto_4
    return-object p0

    .line 222
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_5
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_c

    .line 223
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_4

    .line 225
    :cond_c
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 226
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 228
    :cond_19
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 229
    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_4

    .line 234
    :cond_24
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_36

    .line 235
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_31

    .line 236
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 238
    :cond_31
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 241
    :cond_36
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_3f

    .line 242
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 244
    :cond_3f
    invoke-static {p0, p1}, Ljava/math/Logical;->andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4
.end method

.method static andNotNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 10
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 373
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 374
    .local v2, "iVal":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 376
    .local v1, "iThat":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_f

    .line 377
    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 421
    :goto_e
    return-object v6

    .line 380
    :cond_f
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    .line 381
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 383
    .local v4, "resDigits":[I
    move v0, v2

    .line 384
    .local v0, "i":I
    if-ge v2, v1, :cond_72

    .line 386
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    .line 387
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 388
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_25
    if-ge v0, v3, :cond_32

    .line 390
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 388
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 392
    :cond_32
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v6, :cond_62

    .line 393
    :goto_36
    if-ge v0, v1, :cond_3e

    .line 395
    const/4 v6, -0x1

    aput v6, v4, v0

    .line 393
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .line 398
    :cond_3e
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 411
    .end local v3    # "limit":I
    :goto_46
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 412
    .restart local v3    # "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_50
    if-ge v0, v3, :cond_90

    .line 414
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 401
    :cond_62
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_46

    .line 403
    .end local v3    # "limit":I
    :cond_72
    if-ge v1, v2, :cond_81

    .line 405
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_46

    .line 408
    :cond_81
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_46

    .line 416
    .restart local v3    # "limit":I
    :cond_90
    :goto_90
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_9d

    .line 418
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_90

    .line 421
    :cond_9d
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_e
.end method

.method static andNotNegativePositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .param p0, "negative"    # Ljava/math/BigInteger;
    .param p1, "positive"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, -0x1

    .line 305
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 306
    .local v2, "iNeg":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 308
    .local v3, "iPos":I
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v7, :cond_e

    .line 367
    .end local p0    # "negative":Ljava/math/BigInteger;
    :goto_d
    return-object p0

    .line 312
    .restart local p0    # "negative":Ljava/math/BigInteger;
    :cond_e
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 313
    .local v6, "resLength":I
    move v1, v2

    .line 314
    .local v1, "i":I
    if-le v3, v2, :cond_3e

    .line 315
    new-array v5, v6, [I

    .line 316
    .local v5, "resDigits":[I
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 317
    .local v4, "limit":I
    :goto_21
    if-ge v1, v4, :cond_2c

    .line 320
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 317
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 322
    :cond_2c
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v7, :cond_a2

    .line 323
    move v1, v3

    :goto_31
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_a2

    .line 325
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 329
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_3e
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    and-int v0, v7, v8

    .line 330
    .local v0, "digit":I
    if-nez v0, :cond_9b

    .line 331
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 332
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_57
    if-ge v1, v4, :cond_69

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_69

    add-int/lit8 v1, v1, 0x1

    goto :goto_57

    .line 334
    :cond_69
    if-nez v0, :cond_9b

    .line 336
    :goto_6b
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_7a

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_7a

    add-int/lit8 v1, v1, 0x1

    goto :goto_6b

    .line 338
    :cond_7a
    :goto_7a
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_89

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_89

    add-int/lit8 v1, v1, 0x1

    goto :goto_7a

    .line 340
    :cond_89
    if-nez v0, :cond_9b

    .line 341
    add-int/lit8 v6, v6, 0x1

    .line 342
    new-array v5, v6, [I

    .line 343
    .restart local v5    # "resDigits":[I
    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    aput v8, v5, v7

    .line 345
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "negative":Ljava/math/BigInteger;
    invoke-direct {p0, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_d

    .line 349
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    .restart local p0    # "negative":Ljava/math/BigInteger;
    :cond_9b
    new-array v5, v6, [I

    .line 350
    .restart local v5    # "resDigits":[I
    neg-int v7, v0

    aput v7, v5, v1

    .line 351
    add-int/lit8 v1, v1, 0x1

    .line 354
    .end local v0    # "digit":I
    :cond_a2
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 355
    .restart local v4    # "limit":I
    :goto_aa
    if-ge v1, v4, :cond_ba

    .line 357
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    or-int/2addr v7, v8

    aput v7, v5, v1

    .line 355
    add-int/lit8 v1, v1, 0x1

    goto :goto_aa

    .line 360
    :cond_ba
    :goto_ba
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_c7

    .line 361
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 360
    add-int/lit8 v1, v1, 0x1

    goto :goto_ba

    .line 363
    :cond_c7
    :goto_c7
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_d4

    .line 364
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 363
    add-int/lit8 v1, v1, 0x1

    goto :goto_c7

    .line 367
    :cond_d4
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "negative":Ljava/math/BigInteger;
    invoke-direct {p0, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_d
.end method

.method static andNotPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 252
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v2, v3, [I

    .line 254
    .local v2, "resDigits":[I
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 256
    .local v1, "limit":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    .local v0, "i":I
    :goto_10
    if-ge v0, v1, :cond_22

    .line 257
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aput v3, v2, v0

    .line 256
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 259
    :cond_22
    :goto_22
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_2f

    .line 260
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v2, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 263
    :cond_2f
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v3, v4, v5, v2}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static andNotPositiveNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    .line 269
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 270
    .local v1, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 272
    .local v2, "iPos":I
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_d

    .line 294
    .end local p0    # "positive":Ljava/math/BigInteger;
    :goto_c
    return-object p0

    .line 276
    .restart local p0    # "positive":Ljava/math/BigInteger;
    :cond_d
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 277
    .local v4, "resLength":I
    new-array v3, v4, [I

    .line 280
    .local v3, "resDigits":[I
    move v0, v2

    .line 281
    .local v0, "i":I
    :goto_18
    if-ge v0, v1, :cond_23

    .line 283
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    aput v5, v3, v0

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 285
    :cond_23
    if-ne v0, v1, :cond_34

    .line 286
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 289
    :cond_34
    :goto_34
    if-ge v0, v4, :cond_44

    .line 291
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    aput v5, v3, v0

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 294
    :cond_44
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "positive":Ljava/math/BigInteger;
    const/4 v5, 0x1

    invoke-direct {p0, v5, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_c
.end method

.method static andPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 113
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    iget v4, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 114
    .local v2, "resLength":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 116
    .local v0, "i":I
    if-lt v0, v2, :cond_19

    .line 117
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 125
    :goto_18
    return-object v3

    .line 120
    :cond_19
    new-array v1, v2, [I

    .line 121
    .local v1, "resDigits":[I
    :goto_1b
    if-ge v0, v2, :cond_2b

    .line 122
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    and-int/2addr v3, v4

    aput v3, v1, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 125
    :cond_2b
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_18
.end method

.method static not(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p0, "val"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, -0x1

    .line 40
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-nez v2, :cond_8

    .line 41
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 78
    :goto_7
    return-object v2

    .line 43
    :cond_8
    sget-object v2, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 44
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    goto :goto_7

    .line 46
    :cond_13
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 49
    .local v1, "resDigits":[I
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    if-lez v2, :cond_51

    .line 51
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eq v2, v4, :cond_31

    .line 52
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_5d

    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 56
    .end local v0    # "i":I
    :cond_31
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_32
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_3f

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-ne v2, v4, :cond_3f

    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 59
    :cond_3f
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v2, :cond_5d

    .line 60
    const/4 v2, 0x1

    aput v2, v1, v0

    .line 61
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    add-int/lit8 v4, v0, 0x1

    invoke-direct {v2, v3, v4, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_7

    .line 67
    .end local v0    # "i":I
    :cond_51
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_52
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    if-nez v2, :cond_5d

    .line 68
    aput v4, v1, v0

    .line 67
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 73
    :cond_5d
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    :goto_68
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v2, :cond_75

    .line 76
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_68

    .line 78
    :cond_75
    new-instance v2, Ljava/math/BigInteger;

    iget v3, p0, Ljava/math/BigInteger;->sign:I

    neg-int v3, v3

    invoke-direct {v2, v3, v0, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_7
.end method

.method static or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 426
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 427
    :cond_10
    sget-object p0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 452
    .end local p0    # "val":Ljava/math/BigInteger;
    :cond_12
    :goto_12
    return-object p0

    .line 429
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_13
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-eqz v0, :cond_12

    .line 432
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_1d

    move-object p0, p1

    .line 433
    goto :goto_12

    .line 436
    :cond_1d
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_3a

    .line 437
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_35

    .line 438
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_30

    .line 439
    invoke-static {p0, p1}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_12

    .line 441
    :cond_30
    invoke-static {p1, p0}, Ljava/math/Logical;->orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_12

    .line 444
    :cond_35
    invoke-static {p0, p1}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_12

    .line 447
    :cond_3a
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_43

    .line 448
    invoke-static {p1, p0}, Ljava/math/Logical;->orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_12

    .line 449
    :cond_43
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_52

    .line 450
    invoke-static {p1, p0}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_12

    .line 452
    :cond_52
    invoke-static {p0, p1}, Ljava/math/Logical;->orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_12
.end method

.method static orDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 11
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    const/4 v8, -0x1

    .line 513
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 514
    .local v1, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 520
    .local v2, "iPos":I
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_e

    .line 565
    .end local p1    # "negative":Ljava/math/BigInteger;
    :goto_d
    return-object p1

    .line 523
    .restart local p1    # "negative":Ljava/math/BigInteger;
    :cond_e
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    .line 524
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 526
    .local v4, "resDigits":[I
    if-ge v1, v2, :cond_20

    .line 529
    move v0, v1

    .local v0, "i":I
    :goto_15
    if-ge v0, v2, :cond_53

    .line 530
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 532
    .end local v0    # "i":I
    :cond_20
    if-ge v2, v1, :cond_7d

    .line 533
    move v0, v2

    .line 534
    .restart local v0    # "i":I
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    .line 535
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 536
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_32
    if-ge v0, v3, :cond_3f

    .line 537
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 536
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 539
    :cond_3f
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-eq v0, v6, :cond_6d

    .line 540
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    or-int/2addr v6, v7

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 548
    :goto_51
    add-int/lit8 v0, v0, 0x1

    .line 555
    .end local v3    # "limit":I
    :cond_53
    :goto_53
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 556
    .restart local v3    # "limit":I
    :goto_5b
    if-ge v0, v3, :cond_8e

    .line 559
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    aput v6, v4, v0

    .line 556
    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 542
    :cond_6d
    :goto_6d
    if-ge v0, v1, :cond_74

    .line 543
    aput v8, v4, v0

    .line 542
    add-int/lit8 v0, v0, 0x1

    goto :goto_6d

    .line 546
    :cond_74
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    goto :goto_51

    .line 551
    .end local v0    # "i":I
    .end local v3    # "limit":I
    :cond_7d
    move v0, v2

    .line 552
    .restart local v0    # "i":I
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    or-int/2addr v6, v7

    neg-int v6, v6

    aput v6, v4, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    .line 561
    .restart local v3    # "limit":I
    :cond_8e
    :goto_8e
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_9b

    .line 562
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 565
    :cond_9b
    new-instance p1, Ljava/math/BigInteger;

    .end local p1    # "negative":Ljava/math/BigInteger;
    invoke-direct {p1, v8, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    goto/16 :goto_d
.end method

.method static orNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 479
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 480
    .local v1, "iThat":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 483
    .local v2, "iVal":I
    iget v5, p1, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v5, :cond_d

    .line 507
    .end local p1    # "that":Ljava/math/BigInteger;
    :goto_c
    return-object p1

    .line 485
    .restart local p1    # "that":Ljava/math/BigInteger;
    :cond_d
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v1, v5, :cond_13

    move-object p1, p0

    .line 486
    goto :goto_c

    .line 489
    :cond_13
    iget v5, p0, Ljava/math/BigInteger;->numberLength:I

    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 490
    .local v4, "resLength":I
    new-array v3, v4, [I

    .line 493
    .local v3, "resDigits":[I
    if-ne v1, v2, :cond_40

    .line 494
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v2

    neg-int v5, v5

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v2

    neg-int v6, v6

    or-int/2addr v5, v6

    neg-int v5, v5

    aput v5, v3, v2

    .line 495
    move v0, v2

    .line 503
    .local v0, "i":I
    :goto_2e
    add-int/lit8 v0, v0, 0x1

    :goto_30
    if-ge v0, v4, :cond_5a

    .line 504
    iget-object v5, p0, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    and-int/2addr v5, v6

    aput v5, v3, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 497
    .end local v0    # "i":I
    :cond_40
    move v0, v1

    .restart local v0    # "i":I
    :goto_41
    if-ge v0, v2, :cond_4c

    .line 498
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    aput v5, v3, v0

    .line 497
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 500
    :cond_4c
    iget-object v5, p1, Ljava/math/BigInteger;->digits:[I

    aget v5, v5, v0

    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    aput v5, v3, v0

    goto :goto_2e

    .line 507
    :cond_5a
    new-instance p1, Ljava/math/BigInteger;

    .end local p1    # "that":Ljava/math/BigInteger;
    const/4 v5, -0x1

    invoke-direct {p1, v5, v4, v3}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_c
.end method

.method static orPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    .prologue
    .line 461
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 462
    .local v2, "resLength":I
    new-array v1, v2, [I

    .line 465
    .local v1, "resDigits":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_17

    .line 466
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    or-int/2addr v3, v4

    aput v3, v1, v0

    .line 465
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 468
    :cond_17
    :goto_17
    if-ge v0, v2, :cond_22

    .line 469
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v1, v0

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 472
    :cond_22
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method

.method static xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 570
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_5

    .line 599
    .end local p0    # "val":Ljava/math/BigInteger;
    :goto_4
    return-object p0

    .line 573
    .restart local p0    # "val":Ljava/math/BigInteger;
    :cond_5
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-nez v0, :cond_b

    move-object p0, p1

    .line 574
    goto :goto_4

    .line 576
    :cond_b
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 577
    invoke-virtual {p0}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 579
    :cond_18
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 580
    invoke-virtual {p1}, Ljava/math/BigInteger;->not()Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 583
    :cond_25
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_42

    .line 584
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_3d

    .line 585
    iget v0, p0, Ljava/math/BigInteger;->numberLength:I

    iget v1, p1, Ljava/math/BigInteger;->numberLength:I

    if-le v0, v1, :cond_38

    .line 586
    invoke-static {p0, p1}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 588
    :cond_38
    invoke-static {p1, p0}, Ljava/math/Logical;->xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 591
    :cond_3d
    invoke-static {p0, p1}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 594
    :cond_42
    iget v0, p1, Ljava/math/BigInteger;->sign:I

    if-lez v0, :cond_4b

    .line 595
    invoke-static {p1, p0}, Ljava/math/Logical;->xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 596
    :cond_4b
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    if-le v0, v1, :cond_5a

    .line 597
    invoke-static {p1, p0}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4

    .line 599
    :cond_5a
    invoke-static {p0, p1}, Ljava/math/Logical;->xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_4
.end method

.method static xorDiffSigns(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 12
    .param p0, "positive"    # Ljava/math/BigInteger;
    .param p1, "negative"    # Ljava/math/BigInteger;

    .prologue
    const/4 v9, -0x1

    .line 676
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 678
    .local v6, "resLength":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 679
    .local v2, "iNeg":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    .line 684
    .local v3, "iPos":I
    if-ge v2, v3, :cond_40

    .line 685
    new-array v5, v6, [I

    .line 686
    .local v5, "resDigits":[I
    move v1, v2

    .line 688
    .local v1, "i":I
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 689
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 691
    .local v4, "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_24
    if-ge v1, v4, :cond_2f

    .line 693
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 691
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 697
    :cond_2f
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v1, v7, :cond_73

    .line 698
    :goto_33
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_73

    .line 700
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 698
    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 703
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_40
    if-ge v3, v2, :cond_a3

    .line 704
    new-array v5, v6, [I

    .line 705
    .restart local v5    # "resDigits":[I
    move v1, v3

    .line 707
    .restart local v1    # "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    neg-int v7, v7

    aput v7, v5, v1

    .line 708
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 709
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_54
    if-ge v1, v4, :cond_61

    .line 711
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    .line 709
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 715
    :cond_61
    if-ne v1, v2, :cond_8f

    .line 716
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    xor-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    .line 717
    add-int/lit8 v1, v1, 0x1

    .line 758
    .end local v4    # "limit":I
    :cond_73
    :goto_73
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    iget v8, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 759
    .restart local v4    # "limit":I
    :goto_7b
    if-ge v1, v4, :cond_108

    .line 760
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v7, v7, -0x1

    iget-object v8, p0, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/2addr v7, v8

    xor-int/lit8 v7, v7, -0x1

    aput v7, v5, v1

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_7b

    .line 721
    :cond_8f
    :goto_8f
    if-ge v1, v2, :cond_96

    .line 723
    aput v9, v5, v1

    .line 721
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 725
    :cond_96
    :goto_96
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_73

    .line 727
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 725
    add-int/lit8 v1, v1, 0x1

    goto :goto_96

    .line 732
    .end local v1    # "i":I
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    :cond_a3
    move v1, v2

    .line 733
    .restart local v1    # "i":I
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    neg-int v8, v8

    xor-int v0, v7, v8

    .line 734
    .local v0, "digit":I
    if-nez v0, :cond_ff

    .line 735
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    iget v8, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 736
    .restart local v4    # "limit":I
    add-int/lit8 v1, v1, 0x1

    :goto_bb
    if-ge v1, v4, :cond_ce

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    iget-object v8, p1, Ljava/math/BigInteger;->digits:[I

    aget v8, v8, v1

    xor-int/lit8 v8, v8, -0x1

    xor-int v0, v7, v8

    if-nez v0, :cond_ce

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    .line 738
    :cond_ce
    if-nez v0, :cond_ff

    .line 740
    :goto_d0
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_df

    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_df

    add-int/lit8 v1, v1, 0x1

    goto :goto_d0

    .line 742
    :cond_df
    :goto_df
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_ee

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    xor-int/lit8 v0, v7, -0x1

    if-nez v0, :cond_ee

    add-int/lit8 v1, v1, 0x1

    goto :goto_df

    .line 744
    :cond_ee
    if-nez v0, :cond_ff

    .line 745
    add-int/lit8 v6, v6, 0x1

    .line 746
    new-array v5, v6, [I

    .line 747
    .restart local v5    # "resDigits":[I
    add-int/lit8 v7, v6, -0x1

    const/4 v8, 0x1

    aput v8, v5, v7

    .line 749
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    .line 771
    .end local v0    # "digit":I
    :goto_fe
    return-object v7

    .line 753
    .end local v4    # "limit":I
    .end local v5    # "resDigits":[I
    .restart local v0    # "digit":I
    :cond_ff
    new-array v5, v6, [I

    .line 754
    .restart local v5    # "resDigits":[I
    neg-int v7, v0

    aput v7, v5, v1

    .line 755
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_73

    .line 762
    .end local v0    # "digit":I
    .restart local v4    # "limit":I
    :cond_108
    :goto_108
    iget v7, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_115

    .line 764
    iget-object v7, p0, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_108

    .line 766
    :cond_115
    :goto_115
    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v1, v7, :cond_122

    .line 768
    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v1

    aput v7, v5, v1

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    .line 771
    :cond_122
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v9, v6, v5}, Ljava/math/BigInteger;-><init>(II[I)V

    goto :goto_fe
.end method

.method static xorNegative(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 10
    .param p0, "val"    # Ljava/math/BigInteger;
    .param p1, "that"    # Ljava/math/BigInteger;

    .prologue
    .line 625
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 626
    .local v5, "resLength":I
    new-array v4, v5, [I

    .line 627
    .local v4, "resDigits":[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v2

    .line 628
    .local v2, "iVal":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 629
    .local v1, "iThat":I
    move v0, v1

    .line 633
    .local v0, "i":I
    if-ne v2, v1, :cond_3c

    .line 634
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    neg-int v7, v7

    xor-int/2addr v6, v7

    aput v6, v4, v0

    .line 655
    :goto_22
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    iget v7, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 657
    .local v3, "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_2c
    if-ge v0, v3, :cond_7c

    .line 659
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/2addr v6, v7

    aput v6, v4, v0

    .line 657
    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    .line 636
    .end local v3    # "limit":I
    :cond_3c
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    aput v6, v4, v0

    .line 637
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 638
    .restart local v3    # "limit":I
    add-int/lit8 v0, v0, 0x1

    :goto_4b
    if-ge v0, v3, :cond_58

    .line 639
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    xor-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 642
    :cond_58
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ne v0, v6, :cond_6d

    .line 644
    :goto_5c
    if-ge v0, v2, :cond_64

    .line 646
    const/4 v6, -0x1

    aput v6, v4, v0

    .line 644
    add-int/lit8 v0, v0, 0x1

    goto :goto_5c

    .line 649
    :cond_64
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v0

    goto :goto_22

    .line 651
    :cond_6d
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    neg-int v6, v6

    iget-object v7, p1, Ljava/math/BigInteger;->digits:[I

    aget v7, v7, v0

    xor-int/lit8 v7, v7, -0x1

    xor-int/2addr v6, v7

    aput v6, v4, v0

    goto :goto_22

    .line 662
    :cond_7c
    :goto_7c
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_89

    .line 664
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 662
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c

    .line 666
    :cond_89
    :goto_89
    iget v6, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v6, :cond_96

    .line 668
    iget-object v6, p1, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v0

    aput v6, v4, v0

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 671
    :cond_96
    new-instance v6, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v5, v4}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v6
.end method

.method static xorPositive(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7
    .param p0, "longer"    # Ljava/math/BigInteger;
    .param p1, "shorter"    # Ljava/math/BigInteger;

    .prologue
    .line 608
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    .line 609
    .local v2, "resLength":I
    new-array v1, v2, [I

    .line 610
    .local v1, "resDigits":[I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 611
    .local v0, "i":I
    :goto_10
    iget v3, p1, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_22

    .line 612
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    iget-object v4, p1, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v0

    xor-int/2addr v3, v4

    aput v3, v1, v0

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 614
    :cond_22
    :goto_22
    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v3, :cond_2f

    .line 615
    iget-object v3, p0, Ljava/math/BigInteger;->digits:[I

    aget v3, v3, v0

    aput v3, v1, v0

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 618
    :cond_2f
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2, v1}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v3
.end method
