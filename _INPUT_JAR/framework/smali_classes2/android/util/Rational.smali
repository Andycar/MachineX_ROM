.class public final Landroid/util/Rational;
.super Ljava/lang/Number;
.source "Rational.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/util/Rational;",
        ">;"
    }
.end annotation


# static fields
.field public static final NEGATIVE_INFINITY:Landroid/util/Rational;

.field public static final NaN:Landroid/util/Rational;

.field public static final POSITIVE_INFINITY:Landroid/util/Rational;

.field public static final ZERO:Landroid/util/Rational;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mDenominator:I

.field private final mNumerator:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 48
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v3, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    .line 56
    new-instance v0, Landroid/util/Rational;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    .line 64
    new-instance v0, Landroid/util/Rational;

    invoke-direct {v0, v2, v3}, Landroid/util/Rational;-><init>(II)V

    sput-object v0, Landroid/util/Rational;->ZERO:Landroid/util/Rational;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 6
    .param p1, "numerator"    # I
    .param p2, "denominator"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 103
    if-gez p2, :cond_9

    .line 104
    neg-int p1, p1

    .line 105
    neg-int p2, p2

    .line 109
    :cond_9
    if-nez p2, :cond_12

    if-lez p1, :cond_12

    .line 110
    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 111
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    .line 127
    :goto_11
    return-void

    .line 112
    :cond_12
    if-nez p2, :cond_1c

    if-gez p1, :cond_1c

    .line 113
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 114
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11

    .line 115
    :cond_1c
    if-nez p2, :cond_25

    if-nez p1, :cond_25

    .line 116
    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    .line 117
    iput v2, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11

    .line 118
    :cond_25
    if-nez p1, :cond_2c

    .line 119
    iput v2, p0, Landroid/util/Rational;->mNumerator:I

    .line 120
    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11

    .line 122
    :cond_2c
    invoke-static {p1, p2}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    .line 124
    .local v0, "gcd":I
    div-int v1, p1, v0

    iput v1, p0, Landroid/util/Rational;->mNumerator:I

    .line 125
    div-int v1, p2, v0

    iput v1, p0, Landroid/util/Rational;->mDenominator:I

    goto :goto_11
.end method

.method private equals(Landroid/util/Rational;)Z
    .registers 4
    .param p1, "other"    # Landroid/util/Rational;

    .prologue
    .line 244
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p1, Landroid/util/Rational;->mNumerator:I

    if-ne v0, v1, :cond_e

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    iget v1, p1, Landroid/util/Rational;->mDenominator:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static gcd(II)I
    .registers 6
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .prologue
    .line 314
    move v0, p0

    .line 315
    .local v0, "a":I
    move v1, p1

    .line 317
    .local v1, "b":I
    :goto_2
    if-eqz v1, :cond_9

    .line 318
    move v2, v1

    .line 320
    .local v2, "oldB":I
    rem-int v1, v0, v1

    .line 321
    move v0, v2

    .line 322
    goto :goto_2

    .line 324
    .end local v2    # "oldB":I
    :cond_9
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    return v3
.end method

.method private static invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 545
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Rational: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isNegInf()Z
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private isPosInf()Z
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public static parseRational(Ljava/lang/String;)Landroid/util/Rational;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 578
    const-string/jumbo v2, "string must not be null"

    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    const-string v2, "NaN"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 581
    sget-object v2, Landroid/util/Rational;->NaN:Landroid/util/Rational;

    .line 596
    :goto_10
    return-object v2

    .line 582
    :cond_11
    const-string v2, "Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 583
    sget-object v2, Landroid/util/Rational;->POSITIVE_INFINITY:Landroid/util/Rational;

    goto :goto_10

    .line 584
    :cond_1c
    const-string v2, "-Infinity"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 585
    sget-object v2, Landroid/util/Rational;->NEGATIVE_INFINITY:Landroid/util/Rational;

    goto :goto_10

    .line 588
    :cond_27
    const/16 v2, 0x3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 589
    .local v1, "sep_ix":I
    if-gez v1, :cond_35

    .line 590
    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 592
    :cond_35
    if-gez v1, :cond_3c

    .line 593
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 596
    :cond_3c
    :try_start_3c
    new-instance v2, Landroid/util/Rational;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V
    :try_end_54
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_54} :catch_55

    goto :goto_10

    .line 598
    :catch_55
    move-exception v0

    .line 599
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {p0}, Landroid/util/Rational;->invalidRational(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 514
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 524
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_19

    .line 525
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eq v0, v2, :cond_10

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_11

    .line 542
    :cond_10
    return-void

    .line 528
    :cond_11
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for zero values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_19
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_2e

    .line 531
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eq v0, v2, :cond_10

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 534
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for infinity values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_2e
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-static {v0, v1}, Landroid/util/Rational;->gcd(II)I

    move-result v0

    if-le v0, v2, :cond_10

    .line 538
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Rational must be deserialized from a reduced form for finite values"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public compareTo(Landroid/util/Rational;)I
    .registers 14
    .param p1, "another"    # Landroid/util/Rational;

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 467
    const-string v7, "another must not be null"

    invoke-static {p1, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 494
    :cond_e
    :goto_e
    return v4

    .line 471
    :cond_f
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_17

    move v4, v5

    .line 472
    goto :goto_e

    .line 473
    :cond_17
    invoke-virtual {p1}, Landroid/util/Rational;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_1f

    move v4, v6

    .line 474
    goto :goto_e

    .line 475
    :cond_1f
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v7

    if-nez v7, :cond_2b

    invoke-direct {p1}, Landroid/util/Rational;->isNegInf()Z

    move-result v7

    if-eqz v7, :cond_2d

    :cond_2b
    move v4, v5

    .line 476
    goto :goto_e

    .line 477
    :cond_2d
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v7

    if-nez v7, :cond_39

    invoke-direct {p1}, Landroid/util/Rational;->isPosInf()Z

    move-result v7

    if-eqz v7, :cond_3b

    :cond_39
    move v4, v6

    .line 478
    goto :goto_e

    .line 484
    :cond_3b
    iget v7, p0, Landroid/util/Rational;->mNumerator:I

    int-to-long v8, v7

    iget v7, p1, Landroid/util/Rational;->mDenominator:I

    int-to-long v10, v7

    mul-long v2, v8, v10

    .line 485
    .local v2, "thisNumerator":J
    iget v7, p1, Landroid/util/Rational;->mNumerator:I

    int-to-long v8, v7

    iget v7, p0, Landroid/util/Rational;->mDenominator:I

    int-to-long v10, v7

    mul-long v0, v8, v10

    .line 488
    .local v0, "otherNumerator":J
    cmp-long v7, v2, v0

    if-gez v7, :cond_51

    move v4, v6

    .line 489
    goto :goto_e

    .line 490
    :cond_51
    cmp-long v6, v2, v0

    if-lez v6, :cond_e

    move v4, v5

    .line 491
    goto :goto_e
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    check-cast p1, Landroid/util/Rational;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/util/Rational;->compareTo(Landroid/util/Rational;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 7

    .prologue
    .line 338
    iget v4, p0, Landroid/util/Rational;->mNumerator:I

    int-to-double v2, v4

    .line 339
    .local v2, "num":D
    iget v4, p0, Landroid/util/Rational;->mDenominator:I

    int-to-double v0, v4

    .line 341
    .local v0, "den":D
    div-double v4, v2, v0

    return-wide v4
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 240
    instance-of v0, p1, Landroid/util/Rational;

    if-eqz v0, :cond_e

    check-cast p1, Landroid/util/Rational;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/Rational;->equals(Landroid/util/Rational;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public floatValue()F
    .registers 4

    .prologue
    .line 355
    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    int-to-float v1, v2

    .line 356
    .local v1, "num":F
    iget v2, p0, Landroid/util/Rational;->mDenominator:I

    int-to-float v0, v2

    .line 358
    .local v0, "den":F
    div-float v2, v1, v0

    return v2
.end method

.method public getDenominator()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    return v0
.end method

.method public getNumerator()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 290
    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Landroid/util/Rational;->mNumerator:I

    ushr-int/lit8 v2, v2, 0x10

    or-int v0, v1, v2

    .line 292
    .local v0, "numeratorFlipped":I
    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    xor-int/2addr v1, v0

    return v1
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 384
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 385
    const v0, 0x7fffffff

    .line 391
    :goto_9
    return v0

    .line 386
    :cond_a
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 387
    const/high16 v0, -0x80000000

    goto :goto_9

    .line 388
    :cond_13
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 389
    const/4 v0, 0x0

    goto :goto_9

    .line 391
    :cond_1b
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    goto :goto_9
.end method

.method public isFinite()Z
    .registers 2

    .prologue
    .line 186
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isInfinite()Z
    .registers 2

    .prologue
    .line 173
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-eqz v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isNaN()Z
    .registers 2

    .prologue
    .line 161
    iget v0, p0, Landroid/util/Rational;->mDenominator:I

    if-nez v0, :cond_a

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isZero()Z
    .registers 2

    .prologue
    .line 198
    invoke-virtual {p0}, Landroid/util/Rational;->isFinite()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 418
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 419
    const-wide v0, 0x7fffffffffffffffL

    .line 425
    :goto_b
    return-wide v0

    .line 420
    :cond_c
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 421
    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_b

    .line 422
    :cond_15
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 423
    const-wide/16 v0, 0x0

    goto :goto_b

    .line 425
    :cond_1e
    iget v0, p0, Landroid/util/Rational;->mNumerator:I

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    div-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_b
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/util/Rational;->intValue()I

    move-result v0

    int-to-short v0, v0

    return v0
.end method

.method public toFloat()F
    .registers 2

    .prologue
    .line 281
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 262
    invoke-virtual {p0}, Landroid/util/Rational;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 263
    const-string v0, "NaN"

    .line 269
    :goto_8
    return-object v0

    .line 264
    :cond_9
    invoke-direct {p0}, Landroid/util/Rational;->isPosInf()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 265
    const-string v0, "Infinity"

    goto :goto_8

    .line 266
    :cond_12
    invoke-direct {p0}, Landroid/util/Rational;->isNegInf()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 267
    const-string v0, "-Infinity"

    goto :goto_8

    .line 269
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/util/Rational;->mNumerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/util/Rational;->mDenominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method
