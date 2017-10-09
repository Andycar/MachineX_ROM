.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

.field private static final BI_SCALED_BY_ZERO_LENGTH:I = 0xb

.field private static final CH_ZEROS:[C

.field private static final FIVE_POW:[Ljava/math/BigInteger;

.field private static final LOG10_2:D = 0.3010299956639812

.field private static final LONG_FIVE_POW:[J

.field private static final LONG_FIVE_POW_BIT_LENGTH:[I

.field private static final LONG_POWERS_OF_TEN_BIT_LENGTH:[I

.field public static final ONE:Ljava/math/BigDecimal;

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Ljava/math/BigDecimal;

.field private static final TEN_POW:[Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigDecimal;

.field private static final ZERO_SCALED_BY:[Ljava/math/BigDecimal;

.field private static final serialVersionUID:J = 0x54c71557f981284fL


# instance fields
.field private transient bitLength:I

.field private transient hashCode:I

.field private intVal:Ljava/math/BigInteger;

.field private transient precision:I

.field private scale:I

.field private transient smallValue:J

.field private transient toStringImage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/16 v2, 0xb

    const/4 v4, 0x0

    .line 127
    const/16 v1, 0x1c

    new-array v1, v1, [J

    fill-array-data v1, :array_96

    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    .line 157
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    .line 158
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    .line 166
    new-array v1, v2, [Ljava/math/BigDecimal;

    sput-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    .line 172
    new-array v1, v2, [Ljava/math/BigDecimal;

    sput-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    .line 175
    const/16 v1, 0x64

    new-array v1, v1, [C

    sput-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    .line 178
    sget-object v1, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/16 v2, 0x30

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([CC)V

    .line 180
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v1, v1

    if-ge v0, v1, :cond_4a

    .line 181
    sget-object v1, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0, v4}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v2, v1, v0

    .line 182
    sget-object v1, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v4, v0}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v2, v1, v0

    .line 180
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 184
    :cond_4a
    const/4 v0, 0x0

    :goto_4b
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_5f

    .line 185
    sget-object v1, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v2

    aput v2, v1, v0

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    .line 187
    :cond_5f
    const/4 v0, 0x0

    :goto_60
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    array-length v1, v1

    if-ge v0, v1, :cond_74

    .line 188
    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v2

    aput v2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 192
    :cond_74
    sget-object v1, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    .line 193
    sget-object v1, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sput-object v1, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    .line 199
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, v4, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 204
    new-instance v1, Ljava/math/BigDecimal;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 209
    new-instance v1, Ljava/math/BigDecimal;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v1, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    return-void

    .line 127
    nop

    :array_96
    .array-data 8
        0x1
        0x5
        0x19
        0x7d
        0x271
        0xc35
        0x3d09
        0x1312d
        0x5f5e1
        0x1dcd65
        0x9502f9
        0x2e90edd
        0xe8d4a51
        0x48c27395
        0x16bcc41e9L
        0x71afd498dL
        0x2386f26fc1L
        0xb1a2bc2ec5L
        0x3782dace9d9L
        0x1158e460913dL
        0x56bc75e2d631L
        0x1b1ae4d6e2ef5L
        0x878678326eac9L
        0x2a5a058fc295edL
        0xd3c21bcecceda1L
        0x422ca8b0a00a425L    # 9.6411383183208E-289
        0x14adf4b7320334b9L
        0x6765c793fa10079dL    # 1.2129899831238297E190
    .end array-data
.end method

.method public constructor <init>(D)V
    .registers 16
    .param p1, "val"    # D

    .prologue
    .line 463
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 110
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 113
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 235
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 464
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 465
    :cond_18
    new-instance v7, Ljava/lang/NumberFormatException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Infinity or NaN: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 467
    :cond_31
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 471
    .local v2, "bits":J
    const/16 v7, 0x34

    shr-long v8, v2, v7

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v7, v8

    rsub-int v7, v7, 0x433

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 473
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v8, 0x433

    if-ne v7, v8, :cond_99

    const-wide v8, 0xfffffffffffffL

    and-long/2addr v8, v2

    const/4 v7, 0x1

    shl-long v4, v8, v7

    .line 475
    .local v4, "mantissa":J
    :goto_50
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_5c

    .line 476
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 477
    const/4 v7, 0x1

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 480
    :cond_5c
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_70

    .line 481
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v4, v5}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 482
    .local v6, "trailingZeros":I
    ushr-long/2addr v4, v6

    .line 483
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v7, v6

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 486
    .end local v6    # "trailingZeros":I
    :cond_70
    const/16 v7, 0x3f

    shr-long v8, v2, v7

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_7b

    .line 487
    neg-long v4, v4

    .line 489
    :cond_7b
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v1

    .line 490
    .local v1, "mantissaBits":I
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v7, :cond_bf

    .line 491
    if-nez v1, :cond_a4

    const/4 v7, 0x0

    :goto_86
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 492
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_a9

    .line 493
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    shl-long v8, v4, v7

    iput-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 500
    :goto_95
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 514
    :goto_98
    return-void

    .line 473
    .end local v1    # "mantissaBits":I
    .end local v4    # "mantissa":J
    :cond_99
    const-wide v8, 0xfffffffffffffL

    and-long/2addr v8, v2

    const-wide/high16 v10, 0x10000000000000L

    or-long v4, v8, v10

    goto :goto_50

    .line 491
    .restart local v1    # "mantissaBits":I
    .restart local v4    # "mantissa":J
    :cond_a4
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v7, v1, v7

    goto :goto_86

    .line 495
    :cond_a9
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 496
    .local v0, "bi":Ljava/math/BigInt;
    invoke-virtual {v0, v4, v5}, Ljava/math/BigInt;->putLongInt(J)V

    .line 497
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    invoke-virtual {v0, v7}, Ljava/math/BigInt;->shift(I)V

    .line 498
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iput-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    goto :goto_95

    .line 501
    .end local v0    # "bi":Ljava/math/BigInt;
    :cond_bf
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_f5

    .line 503
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v8, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v8, v8

    if-ge v7, v8, :cond_e7

    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget v7, v7, v8

    add-int/2addr v7, v1

    const/16 v8, 0x40

    if-ge v7, v8, :cond_e7

    .line 505
    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget-wide v8, v7, v8

    mul-long/2addr v8, v4

    iput-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 506
    iget-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v7

    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_98

    .line 508
    :cond_e7
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_98

    .line 511
    :cond_f5
    iput-wide v4, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 512
    iput v1, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_98
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .registers 5
    .param p1, "val"    # D
    .param p3, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 538
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 539
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 540
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "val"    # I

    .prologue
    .line 610
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 611
    return-void
.end method

.method private constructor <init>(II)V
    .registers 5
    .param p1, "smallValue"    # I
    .param p2, "scale"    # I

    .prologue
    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 113
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 235
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 244
    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 245
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 246
    invoke-static {p1}, Ljava/math/BigDecimal;->bitLength(I)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 247
    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .registers 4
    .param p1, "val"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 629
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 630
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "val"    # J

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(JI)V

    .line 641
    return-void
.end method

.method private constructor <init>(JI)V
    .registers 7
    .param p1, "smallValue"    # J
    .param p3, "scale"    # I

    .prologue
    const/4 v1, 0x0

    .line 237
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 113
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 235
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 238
    iput-wide p1, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 239
    iput p3, p0, Ljava/math/BigDecimal;->scale:I

    .line 240
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 241
    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .registers 5
    .param p1, "val"    # J
    .param p3, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 658
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 659
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 660
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "val"    # Ljava/lang/String;

    .prologue
    .line 425
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 426
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .registers 6
    .param p1, "val"    # Ljava/lang/String;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 444
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 445
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 446
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 547
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 548
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .prologue
    const/4 v1, 0x0

    .line 574
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 113
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 235
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 575
    if-nez p1, :cond_15

    .line 576
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "unscaledVal == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 578
    :cond_15
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 579
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    .line 580
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .registers 4
    .param p1, "unscaledVal"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 598
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 599
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 600
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .registers 3
    .param p1, "val"    # Ljava/math/BigInteger;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 563
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 564
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .param p1, "in"    # [C

    .prologue
    .line 390
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 391
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 20
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 265
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 110
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-object v11, v0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 113
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Ljava/math/BigDecimal;->hashCode:I

    .line 235
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Ljava/math/BigDecimal;->precision:I

    .line 266
    move/from16 v2, p2

    .line 267
    .local v2, "begin":I
    add-int/lit8 v11, p3, -0x1

    add-int v5, p2, v11

    .line 272
    .local v5, "last":I
    if-nez p1, :cond_22

    .line 273
    new-instance v11, Ljava/lang/NullPointerException;

    const-string v12, "in == null"

    invoke-direct {v11, v12}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 275
    :cond_22
    move-object/from16 v0, p1

    array-length v11, v0

    if-ge v5, v11, :cond_2d

    if-ltz p2, :cond_2d

    if-lez p3, :cond_2d

    if-gez v5, :cond_61

    .line 276
    :cond_2d
    new-instance v11, Ljava/lang/NumberFormatException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Bad offset/length: offset="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " len="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " in.length="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    array-length v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 279
    :cond_61
    new-instance v9, Ljava/lang/StringBuilder;

    move/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    .local v9, "unscaledBuffer":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 282
    .local v3, "bufLength":I
    move/from16 v0, p2

    if-gt v0, v5, :cond_77

    aget-char v11, p1, p2

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_77

    .line 283
    add-int/lit8 p2, p2, 0x1

    .line 284
    add-int/lit8 v2, v2, 0x1

    .line 286
    :cond_77
    const/4 v4, 0x0

    .line 287
    .local v4, "counter":I
    const/4 v10, 0x0

    .line 289
    .local v10, "wasNonZero":Z
    :goto_79
    move/from16 v0, p2

    if-gt v0, v5, :cond_9e

    aget-char v11, p1, p2

    const/16 v12, 0x2e

    if-eq v11, v12, :cond_9e

    aget-char v11, p1, p2

    const/16 v12, 0x65

    if-eq v11, v12, :cond_9e

    aget-char v11, p1, p2

    const/16 v12, 0x45

    if-eq v11, v12, :cond_9e

    .line 290
    if-nez v10, :cond_99

    .line 291
    aget-char v11, p1, p2

    const/16 v12, 0x30

    if-ne v11, v12, :cond_9c

    .line 292
    add-int/lit8 v4, v4, 0x1

    .line 289
    :cond_99
    :goto_99
    add-int/lit8 p2, p2, 0x1

    goto :goto_79

    .line 294
    :cond_9c
    const/4 v10, 0x1

    goto :goto_99

    .line 299
    :cond_9e
    sub-int v11, p2, v2

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 300
    sub-int v11, p2, v2

    add-int/2addr v3, v11

    .line 302
    move/from16 v0, p2

    if-gt v0, v5, :cond_140

    aget-char v11, p1, p2

    const/16 v12, 0x2e

    if-ne v11, v12, :cond_140

    .line 303
    add-int/lit8 p2, p2, 0x1

    .line 305
    move/from16 v2, p2

    .line 307
    :goto_b6
    move/from16 v0, p2

    if-gt v0, v5, :cond_d5

    aget-char v11, p1, p2

    const/16 v12, 0x65

    if-eq v11, v12, :cond_d5

    aget-char v11, p1, p2

    const/16 v12, 0x45

    if-eq v11, v12, :cond_d5

    .line 308
    if-nez v10, :cond_d0

    .line 309
    aget-char v11, p1, p2

    const/16 v12, 0x30

    if-ne v11, v12, :cond_d3

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 307
    :cond_d0
    :goto_d0
    add-int/lit8 p2, p2, 0x1

    goto :goto_b6

    .line 312
    :cond_d3
    const/4 v10, 0x1

    goto :goto_d0

    .line 316
    :cond_d5
    sub-int v11, p2, v2

    move-object/from16 v0, p0

    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    .line 317
    move-object/from16 v0, p0

    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v3, v11

    .line 318
    move-object/from16 v0, p0

    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v2, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 323
    :goto_e9
    move/from16 v0, p2

    if-gt v0, v5, :cond_146

    aget-char v11, p1, p2

    const/16 v12, 0x65

    if-eq v11, v12, :cond_f9

    aget-char v11, p1, p2

    const/16 v12, 0x45

    if-ne v11, v12, :cond_146

    .line 324
    :cond_f9
    add-int/lit8 p2, p2, 0x1

    .line 326
    move/from16 v2, p2

    .line 327
    move/from16 v0, p2

    if-gt v0, v5, :cond_115

    aget-char v11, p1, p2

    const/16 v12, 0x2b

    if-ne v11, v12, :cond_115

    .line 328
    add-int/lit8 p2, p2, 0x1

    .line 329
    move/from16 v0, p2

    if-gt v0, v5, :cond_115

    aget-char v11, p1, p2

    const/16 v12, 0x2d

    if-eq v11, v12, :cond_115

    .line 330
    add-int/lit8 v2, v2, 0x1

    .line 334
    :cond_115
    add-int/lit8 v11, v5, 0x1

    sub-int/2addr v11, v2

    move-object/from16 v0, p1

    invoke-static {v0, v2, v11}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "scaleString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v11

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v14, v11

    sub-long v6, v12, v14

    .line 337
    .local v6, "newScale":J
    long-to-int v11, v6

    move-object/from16 v0, p0

    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    .line 338
    move-object/from16 v0, p0

    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v11

    cmp-long v11, v6, v12

    if-eqz v11, :cond_146

    .line 339
    new-instance v11, Ljava/lang/NumberFormatException;

    const-string v12, "Scale out of range"

    invoke-direct {v11, v12}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 320
    .end local v6    # "newScale":J
    .end local v8    # "scaleString":Ljava/lang/String;
    :cond_140
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Ljava/math/BigDecimal;->scale:I

    goto :goto_e9

    .line 343
    :cond_146
    const/16 v11, 0x13

    if-ge v3, v11, :cond_163

    .line 344
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/math/BigDecimal;->smallValue:J

    .line 345
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Ljava/math/BigDecimal;->bitLength:I

    .line 349
    :goto_162
    return-void

    .line 347
    :cond_163
    new-instance v11, Ljava/math/BigInteger;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_162
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .registers 5
    .param p1, "in"    # [C
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 374
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 375
    invoke-direct {p0, p4}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 376
    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .registers 5
    .param p1, "in"    # [C
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 412
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 413
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 414
    return-void
.end method

.method private static addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 11
    .param p0, "thisValue"    # Ljava/math/BigDecimal;
    .param p1, "augend"    # Ljava/math/BigDecimal;
    .param p2, "diffScale"    # I

    .prologue
    .line 763
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge p2, v1, :cond_29

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_29

    .line 765
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v6, v1, p2

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    .line 769
    :goto_28
    return-object v1

    .line 767
    :cond_29
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 768
    .local v0, "bi":Ljava/math/BigInt;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->add(Ljava/math/BigInt;)V

    .line 769
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_28
.end method

.method private approxPrecision()I
    .registers 5

    .prologue
    .line 2832
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_7

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    add-int/lit8 v0, v0, -0x1

    int-to-double v0, v0

    const-wide v2, 0x3fd34413509f79ffL    # 0.3010299956639812

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static bitLength(I)I
    .registers 2
    .param p0, "smallValue"    # I

    .prologue
    .line 2914
    if-gez p0, :cond_4

    .line 2915
    xor-int/lit8 p0, p0, -0x1

    .line 2917
    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private static bitLength(J)I
    .registers 4
    .param p0, "smallValue"    # J

    .prologue
    .line 2907
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 2908
    const-wide/16 v0, -0x1

    xor-long/2addr p0, v0

    .line 2910
    :cond_9
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x40

    return v0
.end method

.method private decimalDigitsInLong(J)I
    .registers 8
    .param p1, "value"    # J

    .prologue
    .line 1805
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v1, p1, v2

    if-nez v1, :cond_9

    .line 1806
    const/16 v1, 0x13

    .line 1809
    :goto_8
    return v1

    .line 1808
    :cond_9
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 1809
    .local v0, "index":I
    if-gez v0, :cond_19

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    :cond_19
    add-int/lit8 v1, v0, 0x1

    goto :goto_8
.end method

.method private static divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 20
    .param p0, "scaledDividend"    # Ljava/math/BigInteger;
    .param p1, "scaledDivisor"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1076
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v3

    .line 1078
    .local v3, "quotAndRem":[Ljava/math/BigInteger;
    const/4 v11, 0x0

    aget-object v6, v3, v11

    .line 1079
    .local v6, "quotient":Ljava/math/BigInteger;
    const/4 v11, 0x1

    aget-object v7, v3, v11

    .line 1080
    .local v7, "remainder":Ljava/math/BigInteger;
    invoke-virtual {v7}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_18

    .line 1081
    new-instance v11, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v11, v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1107
    :goto_17
    return-object v11

    .line 1083
    :cond_18
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigInteger;->signum()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v12

    mul-int v10, v11, v12

    .line 1085
    .local v10, "sign":I
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    const/16 v12, 0x3f

    if-ge v11, v12, :cond_6b

    .line 1086
    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    .line 1087
    .local v8, "rem":J
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    .line 1088
    .local v4, "divisor":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x2

    mul-long/2addr v12, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    invoke-static {v12, v13, v14, v15}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v2

    .line 1090
    .local v2, "compRem":I
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_69

    const/4 v11, 0x1

    :goto_49
    add-int/lit8 v12, v2, 0x5

    mul-int/2addr v12, v10

    move-object/from16 v0, p3

    invoke-static {v11, v12, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v2

    .line 1099
    .end local v4    # "divisor":J
    .end local v8    # "rem":J
    :goto_52
    if-eqz v2, :cond_a1

    .line 1100
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    const/16 v12, 0x3f

    if-ge v11, v12, :cond_8f

    .line 1101
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v12

    int-to-long v14, v2

    add-long/2addr v12, v14

    move/from16 v0, p2

    invoke-static {v12, v13, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v11

    goto :goto_17

    .line 1090
    .restart local v4    # "divisor":J
    .restart local v8    # "rem":J
    :cond_69
    const/4 v11, 0x0

    goto :goto_49

    .line 1095
    .end local v2    # "compRem":I
    .end local v4    # "divisor":J
    .end local v8    # "rem":J
    :cond_6b
    invoke-virtual {v7}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    .line 1096
    .restart local v2    # "compRem":I
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-eqz v11, :cond_8d

    const/4 v11, 0x1

    :goto_83
    add-int/lit8 v12, v2, 0x5

    mul-int/2addr v12, v10

    move-object/from16 v0, p3

    invoke-static {v11, v12, v0}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v2

    goto :goto_52

    :cond_8d
    const/4 v11, 0x0

    goto :goto_83

    .line 1103
    :cond_8f
    int-to-long v12, v2

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1104
    new-instance v11, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v11, v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_17

    .line 1107
    :cond_a1
    new-instance v11, Ljava/math/BigDecimal;

    move/from16 v0, p2

    invoke-direct {v11, v6, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_17
.end method

.method private static dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 16
    .param p0, "scaledDividend"    # J
    .param p2, "scaledDivisor"    # J
    .param p4, "scale"    # I
    .param p5, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1111
    div-long v2, p0, p2

    .line 1112
    .local v2, "quotient":J
    rem-long v4, p0, p2

    .line 1113
    .local v4, "remainder":J
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v6

    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    move-result v7

    mul-int v1, v6, v7

    .line 1114
    .local v1, "sign":I
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_2f

    .line 1117
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v0

    .line 1119
    .local v0, "compRem":I
    long-to-int v6, v2

    and-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x5

    mul-int/2addr v7, v1

    invoke-static {v6, v7, p5}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v2, v6

    .line 1124
    .end local v0    # "compRem":I
    :cond_2f
    invoke-static {v2, v3, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private getUnscaledValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 2892
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 2893
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2895
    :cond_c
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-object v0
.end method

.method private inplaceRound(Ljava/math/MathContext;)V
    .registers 14
    .param p1, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 2659
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 2660
    .local v3, "mcPrecision":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    if-lt v8, v3, :cond_c

    if-nez v3, :cond_d

    .line 2701
    :cond_c
    :goto_c
    return-void

    .line 2663
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    sub-int v1, v8, v3

    .line 2665
    .local v1, "discardedPrecision":I
    if-lez v1, :cond_c

    .line 2669
    iget v8, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v9, 0x40

    if-ge v8, v9, :cond_1f

    .line 2670
    invoke-direct {p0, p1, v1}, Ljava/math/BigDecimal;->smallRound(Ljava/math/MathContext;I)V

    goto :goto_c

    .line 2674
    :cond_1f
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 2675
    .local v6, "sizeOfFraction":Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 2676
    .local v2, "integerAndFraction":[Ljava/math/BigInteger;
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v8

    int-to-long v10, v1

    sub-long v4, v8, v10

    .line 2680
    .local v4, "newScale":J
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_95

    .line 2682
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 2684
    .local v0, "compRem":I
    const/4 v8, 0x0

    aget-object v8, v2, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_a5

    const/4 v8, 0x1

    :goto_55
    const/4 v9, 0x1

    aget-object v9, v2, v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v9

    add-int/lit8 v10, v0, 0x5

    mul-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v0

    .line 2687
    if-eqz v0, :cond_78

    .line 2688
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v9

    int-to-long v10, v0

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v2, v8

    .line 2690
    :cond_78
    new-instance v7, Ljava/math/BigDecimal;

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 2692
    .local v7, "tempBD":Ljava/math/BigDecimal;
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    if-le v8, v3, :cond_95

    .line 2693
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v2, v9

    sget-object v10, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aput-object v9, v2, v8

    .line 2694
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 2698
    .end local v0    # "compRem":I
    .end local v7    # "tempBD":Ljava/math/BigDecimal;
    :cond_95
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v8

    iput v8, p0, Ljava/math/BigDecimal;->scale:I

    .line 2699
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 2700
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_c

    .line 2684
    .restart local v0    # "compRem":I
    :cond_a5
    const/4 v8, 0x0

    goto :goto_55
.end method

.method private isZero()Z
    .registers 5

    .prologue
    .line 1760
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v0, :cond_e

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static longCompareTo(JJ)I
    .registers 6
    .param p0, "value1"    # J
    .param p2, "value2"    # J

    .prologue
    .line 2704
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private movePoint(J)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "newScale"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/16 v4, 0x40

    const/4 v6, 0x0

    .line 1957
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1958
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1974
    :goto_13
    return-object v0

    .line 1964
    :cond_14
    cmp-long v0, p1, v2

    if-ltz v0, :cond_35

    .line 1965
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_27

    .line 1966
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    .line 1968
    :cond_27
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13

    .line 1970
    :cond_35
    neg-long v0, p1

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_57

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, p1

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_57

    .line 1972
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v4, p1

    long-to-int v3, v4

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v6}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    .line 1974
    :cond_57
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    neg-long v2, p1

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 2874
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2876
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 2877
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_19

    .line 2878
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 2880
    :cond_19
    return-void
.end method

.method private static roundingBehavior(IILjava/math/RoundingMode;)I
    .registers 8
    .param p0, "parityBit"    # I
    .param p1, "fraction"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2760
    const/4 v0, 0x0

    .line 2762
    .local v0, "increment":I
    sget-object v1, Ljava/math/BigDecimal$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_52

    .line 2795
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 2764
    :pswitch_f
    if-eqz p1, :cond_e

    .line 2765
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2769
    :pswitch_19
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    .line 2770
    goto :goto_e

    .line 2774
    :pswitch_1e
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2775
    goto :goto_e

    .line 2777
    :pswitch_27
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2778
    goto :goto_e

    .line 2780
    :pswitch_30
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v3, :cond_e

    .line 2781
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2785
    :pswitch_3b
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_e

    .line 2786
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2790
    :pswitch_46
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, p0

    if-le v1, v3, :cond_e

    .line 2791
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2762
    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_f
        :pswitch_19
        :pswitch_e
        :pswitch_1e
        :pswitch_27
        :pswitch_30
        :pswitch_3b
        :pswitch_46
    .end packed-switch
.end method

.method private static safeLongToInt(J)I
    .registers 6
    .param p0, "longValue"    # J

    .prologue
    .line 2838
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-ltz v0, :cond_e

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_27

    .line 2839
    :cond_e
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out of int range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2841
    :cond_27
    long-to-int v0, p0

    return v0
.end method

.method private setUnscaledValue(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "unscaledValue"    # Ljava/math/BigInteger;

    .prologue
    .line 2899
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2900
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 2901
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_14

    .line 2902
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 2904
    :cond_14
    return-void
.end method

.method private smallRound(Ljava/math/MathContext;I)V
    .registers 21
    .param p1, "mc"    # Ljava/math/MathContext;
    .param p2, "discardedPrecision"    # I

    .prologue
    .line 2717
    sget-object v3, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v10, v3, p2

    .line 2718
    .local v10, "sizeOfFraction":J
    move-object/from16 v0, p0

    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v3

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 2719
    .local v8, "newScale":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/math/BigDecimal;->smallValue:J

    .line 2721
    .local v12, "unscaledVal":J
    div-long v6, v12, v10

    .line 2722
    .local v6, "integer":J
    rem-long v4, v12, v10

    .line 2725
    .local v4, "fraction":J
    const-wide/16 v14, 0x0

    cmp-long v3, v4, v14

    if-eqz v3, :cond_58

    .line 2727
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const-wide/16 v16, 0x2

    mul-long v14, v14, v16

    invoke-static {v14, v15, v10, v11}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v2

    .line 2729
    .local v2, "compRem":I
    long-to-int v3, v6

    and-int/lit8 v3, v3, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result v14

    add-int/lit8 v15, v2, 0x5

    mul-int/2addr v14, v15

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v15

    invoke-static {v3, v14, v15}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v3

    int-to-long v14, v3

    add-long/2addr v6, v14

    .line 2733
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v16, v0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_58

    .line 2734
    const-wide/16 v14, 0xa

    div-long/2addr v6, v14

    .line 2735
    const-wide/16 v14, 0x1

    sub-long/2addr v8, v14

    .line 2739
    .end local v2    # "compRem":I
    :cond_58
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Ljava/math/BigDecimal;->scale:I

    .line 2740
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Ljava/math/BigDecimal;->precision:I

    .line 2741
    move-object/from16 v0, p0

    iput-wide v6, v0, Ljava/math/BigDecimal;->smallValue:J

    .line 2742
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Ljava/math/BigDecimal;->bitLength:I

    .line 2743
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2744
    return-void
.end method

.method private valueExact(I)J
    .registers 6
    .param p1, "bitLengthOfType"    # I

    .prologue
    .line 2814
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 2816
    .local v0, "bigInteger":Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ge v1, p1, :cond_f

    .line 2818
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    return-wide v2

    .line 2820
    :cond_f
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(D)Ljava/math/BigDecimal;
    .registers 6
    .param p0, "val"    # D

    .prologue
    .line 715
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 716
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Infinity or NaN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_25
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Ljava/math/BigDecimal;
    .registers 4
    .param p0, "unscaledVal"    # J

    .prologue
    .line 690
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_12

    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 691
    sget-object v0, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    .line 693
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_11
.end method

.method public static valueOf(JI)Ljava/math/BigDecimal;
    .registers 5
    .param p0, "unscaledVal"    # J
    .param p2, "scale"    # I

    .prologue
    .line 670
    if-nez p2, :cond_7

    .line 671
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 677
    :goto_6
    return-object v0

    .line 673
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_19

    if-ltz p2, :cond_19

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge p2, v0, :cond_19

    .line 675
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    aget-object v0, v0, p2

    goto :goto_6

    .line 677
    :cond_19
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_6
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2887
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    .line 2888
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 2889
    return-void
.end method

.method private static zeroScaledBy(J)Ljava/math/BigDecimal;
    .registers 8
    .param p0, "longScale"    # J

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 2858
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    .line 2859
    long-to-int v0, p0

    invoke-static {v4, v5, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2864
    :goto_e
    return-object v0

    .line 2861
    :cond_f
    cmp-long v0, p0, v4

    if-ltz v0, :cond_1c

    .line 2862
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_e

    .line 2864
    :cond_1c
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_e
.end method


# virtual methods
.method public abs()Ljava/math/BigDecimal;
    .registers 2

    .prologue
    .line 1681
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_a

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    .end local p0    # "this":Ljava/math/BigDecimal;
    :cond_a
    return-object p0
.end method

.method public abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1690
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    if-gez v1, :cond_e

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1691
    .local v0, "result":Ljava/math/BigDecimal;
    :goto_a
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1692
    return-object v0

    .line 1690
    .end local v0    # "result":Ljava/math/BigDecimal;
    :cond_e
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_a
.end method

.method public add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 8
    .param p1, "augend"    # Ljava/math/BigDecimal;

    .prologue
    .line 733
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 735
    .local v0, "diffScale":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 736
    if-gtz v0, :cond_10

    move-object p0, p1

    .line 758
    .end local p0    # "this":Ljava/math/BigDecimal;
    :cond_f
    :goto_f
    return-object p0

    .line 739
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_10
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-nez v1, :cond_f

    .line 748
    :cond_16
    if-nez v0, :cond_50

    .line 750
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_3b

    .line 751
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    add-long/2addr v2, v4

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_f

    .line 742
    :cond_32
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 743
    if-ltz v0, :cond_16

    goto :goto_f

    .line 753
    :cond_3b
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto :goto_f

    .line 754
    :cond_50
    if-lez v0, :cond_57

    .line 756
    invoke-static {p0, p1, v0}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_f

    .line 758
    :cond_57
    neg-int v1, v0

    invoke-static {p1, p0, v1}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_f
.end method

.method public add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 19
    .param p1, "augend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 789
    move-object/from16 v0, p0

    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v9

    move-object/from16 v0, p1

    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v9

    sub-long v2, v10, v12

    .line 792
    .local v2, "diffScale":J
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v9

    if-nez v9, :cond_29

    .line 794
    :cond_1e
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    .line 823
    :goto_28
    return-object v9

    .line 797
    :cond_29
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v9

    int-to-long v10, v9

    const-wide/16 v12, 0x1

    sub-long v12, v2, v12

    cmp-long v9, v10, v12

    if-gez v9, :cond_4f

    .line 798
    move-object/from16 v4, p1

    .line 799
    .local v4, "larger":Ljava/math/BigDecimal;
    move-object/from16 v7, p0

    .line 806
    .local v7, "smaller":Ljava/math/BigDecimal;
    :goto_3a
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v9

    invoke-direct {v4}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v10

    if-lt v9, v10, :cond_6c

    .line 808
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    goto :goto_28

    .line 800
    .end local v4    # "larger":Ljava/math/BigDecimal;
    .end local v7    # "smaller":Ljava/math/BigDecimal;
    :cond_4f
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v9

    int-to-long v10, v9

    neg-long v12, v2

    const-wide/16 v14, 0x1

    sub-long/2addr v12, v14

    cmp-long v9, v10, v12

    if-gez v9, :cond_61

    .line 801
    move-object/from16 v4, p0

    .line 802
    .restart local v4    # "larger":Ljava/math/BigDecimal;
    move-object/from16 v7, p1

    .restart local v7    # "smaller":Ljava/math/BigDecimal;
    goto :goto_3a

    .line 804
    .end local v4    # "larger":Ljava/math/BigDecimal;
    .end local v7    # "smaller":Ljava/math/BigDecimal;
    :cond_61
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v9

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    goto :goto_28

    .line 811
    .restart local v4    # "larger":Ljava/math/BigDecimal;
    .restart local v7    # "smaller":Ljava/math/BigDecimal;
    :cond_6c
    invoke-virtual {v4}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    .line 812
    .local v6, "largerSignum":I
    invoke-virtual {v7}, Ljava/math/BigDecimal;->signum()I

    move-result v9

    if-ne v6, v9, :cond_99

    .line 813
    invoke-direct {v4}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    const/16 v10, 0xa

    invoke-static {v9, v10}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 822
    .local v8, "tempBI":Ljava/math/BigInteger;
    :goto_89
    new-instance v5, Ljava/math/BigDecimal;

    iget v9, v4, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v5, v8, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 823
    .end local v4    # "larger":Ljava/math/BigDecimal;
    .local v5, "larger":Ljava/math/BigDecimal;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v9

    goto :goto_28

    .line 816
    .end local v5    # "larger":Ljava/math/BigDecimal;
    .end local v8    # "tempBI":Ljava/math/BigInteger;
    .restart local v4    # "larger":Ljava/math/BigDecimal;
    :cond_99
    invoke-direct {v4}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    int-to-long v10, v6

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 818
    .restart local v8    # "tempBI":Ljava/math/BigInteger;
    const/16 v9, 0xa

    invoke-static {v8, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v9

    mul-int/lit8 v10, v6, 0x9

    int-to-long v10, v10

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_89
.end method

.method public byteValueExact()B
    .registers 3

    .prologue
    .line 2470
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigDecimal;)I
    .registers 14
    .param p1, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 2078
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    .line 2079
    .local v1, "thisSign":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    .line 2081
    .local v6, "valueSign":I
    if-ne v1, v6, :cond_84

    .line 2082
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v8, p1, Ljava/math/BigDecimal;->scale:I

    if-ne v7, v8, :cond_32

    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_32

    iget v7, p1, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_32

    .line 2083
    iget-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v10, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_26

    const/4 v7, -0x1

    .line 2105
    :goto_25
    return v7

    .line 2083
    :cond_26
    iget-wide v8, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v10, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_30

    const/4 v7, 0x1

    goto :goto_25

    :cond_30
    const/4 v7, 0x0

    goto :goto_25

    .line 2085
    :cond_32
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v7

    iget v7, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v7

    sub-long v2, v8, v10

    .line 2086
    .local v2, "diffScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v7

    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v8

    sub-int v0, v7, v8

    .line 2087
    .local v0, "diffPrecision":I
    int-to-long v8, v0

    const-wide/16 v10, 0x1

    add-long/2addr v10, v2

    cmp-long v7, v8, v10

    if-lez v7, :cond_4e

    move v7, v1

    .line 2088
    goto :goto_25

    .line 2089
    :cond_4e
    int-to-long v8, v0

    const-wide/16 v10, 0x1

    sub-long v10, v2, v10

    cmp-long v7, v8, v10

    if-gez v7, :cond_59

    .line 2090
    neg-int v7, v1

    goto :goto_25

    .line 2092
    :cond_59
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 2093
    .local v4, "thisUnscaled":Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2095
    .local v5, "valUnscaled":Ljava/math/BigInteger;
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-gez v7, :cond_75

    .line 2096
    neg-long v8, v2

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 2100
    :cond_70
    :goto_70
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_25

    .line 2097
    :cond_75
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_70

    .line 2098
    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_70

    .line 2102
    .end local v0    # "diffPrecision":I
    .end local v2    # "diffScale":J
    .end local v4    # "thisUnscaled":Ljava/math/BigInteger;
    .end local v5    # "valUnscaled":Ljava/math/BigInteger;
    :cond_84
    if-ge v1, v6, :cond_88

    .line 2103
    const/4 v7, -0x1

    goto :goto_25

    .line 2105
    :cond_88
    const/4 v7, 0x1

    goto :goto_25
.end method

.method public divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 20
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .prologue
    .line 1195
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    .line 1196
    .local v10, "p":Ljava/math/BigInteger;
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    .line 1199
    .local v11, "q":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v13, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v13

    move-object/from16 v0, p1

    iget v13, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    sub-long v2, v14, v16

    .line 1202
    .local v2, "diffScale":J
    const/4 v7, 0x0

    .line 1203
    .local v7, "l":I
    const/4 v5, 0x1

    .line 1204
    .local v5, "i":I
    sget-object v13, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    array-length v13, v13

    add-int/lit8 v8, v13, -0x1

    .line 1206
    .local v8, "lastPow":I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v13

    if-eqz v13, :cond_2b

    .line 1207
    new-instance v13, Ljava/lang/ArithmeticException;

    const-string v14, "Division by zero"

    invoke-direct {v13, v14}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1209
    :cond_2b
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-nez v13, :cond_36

    .line 1210
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v13

    .line 1250
    :goto_35
    return-object v13

    .line 1213
    :cond_36
    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 1214
    .local v4, "gcd":Ljava/math/BigInteger;
    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1215
    invoke-virtual {v11, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 1217
    invoke-virtual {v11}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v6

    .line 1218
    .local v6, "k":I
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    .line 1221
    :goto_4a
    sget-object v13, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    aget-object v13, v13, v5

    invoke-virtual {v11, v13}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v12

    .line 1222
    .local v12, "quotAndRem":[Ljava/math/BigInteger;
    const/4 v13, 0x1

    aget-object v13, v12, v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-nez v13, :cond_64

    .line 1223
    add-int/2addr v7, v5

    .line 1224
    if-ge v5, v8, :cond_60

    .line 1225
    add-int/lit8 v5, v5, 0x1

    .line 1227
    :cond_60
    const/4 v13, 0x0

    aget-object v11, v12, v13

    goto :goto_4a

    .line 1229
    :cond_64
    const/4 v13, 0x1

    if-ne v5, v13, :cond_7b

    .line 1236
    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v13

    sget-object v14, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7d

    .line 1237
    new-instance v13, Ljava/lang/ArithmeticException;

    const-string v14, "Non-terminating decimal expansion; no exact representable decimal result"

    invoke-direct {v13, v14}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1232
    :cond_7b
    const/4 v5, 0x1

    .line 1234
    goto :goto_4a

    .line 1240
    :cond_7d
    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_87

    .line 1241
    invoke-virtual {v10}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v10

    .line 1244
    :cond_87
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-long v14, v13

    add-long/2addr v14, v2

    invoke-static {v14, v15}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v9

    .line 1246
    .local v9, "newScale":I
    sub-int v5, v6, v7

    .line 1248
    if-lez v5, :cond_9f

    invoke-static {v10, v5}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v10

    .line 1250
    :goto_99
    new-instance v13, Ljava/math/BigDecimal;

    invoke-direct {v13, v10, v9}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_35

    .line 1248
    :cond_9f
    neg-int v13, v5

    invoke-virtual {v10, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    goto :goto_99
.end method

.method public divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # I

    .prologue
    .line 1150
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    .prologue
    .line 992
    invoke-static {p3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 16
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    const-wide/16 v10, 0x0

    const/16 v4, 0x40

    .line 1020
    if-nez p3, :cond_e

    .line 1021
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "roundingMode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_e
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1024
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Division by zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_1c
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    int-to-long v2, p2

    sub-long v6, v0, v2

    .line 1030
    .local v6, "diffScale":J
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_4d

    .line 1031
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to perform divisor / dividend scaling: the difference in scale is too big ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1036
    :cond_4d
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_b1

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_b1

    .line 1037
    cmp-long v0, v6, v10

    if-nez v0, :cond_64

    .line 1038
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1071
    :goto_63
    return-object v0

    .line 1042
    :cond_64
    cmp-long v0, v6, v10

    if-lez v0, :cond_8b

    .line 1043
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_b1

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_b1

    .line 1045
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v4, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v5, v6

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_63

    .line 1051
    :cond_8b
    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_b1

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    neg-long v2, v6

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_b1

    .line 1053
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v4, v6

    long-to-int v3, v4

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_63

    .line 1061
    :cond_b1
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    .line 1062
    .local v8, "scaledDividend":Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1064
    .local v9, "scaledDivisor":Ljava/math/BigInteger;
    cmp-long v0, v6, v10

    if-lez v0, :cond_c8

    .line 1066
    long-to-int v0, v6

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1071
    :cond_c3
    :goto_c3
    invoke-static {v8, v9, p2, p3}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_63

    .line 1067
    :cond_c8
    cmp-long v0, v6, v10

    if-gez v0, :cond_c3

    .line 1069
    neg-long v0, v6

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v8, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_c3
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 21
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1275
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v11

    int-to-long v14, v11

    const-wide/16 v16, 0x2

    add-long v14, v14, v16

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v11

    int-to-long v0, v11

    move-wide/from16 v16, v0

    sub-long v12, v14, v16

    .line 1277
    .local v12, "trailingZeros":J
    move-object/from16 v0, p0

    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v11

    move-object/from16 v0, p1

    iget v11, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v11

    move-wide/from16 v16, v0

    sub-long v4, v14, v16

    .line 1278
    .local v4, "diffScale":J
    move-wide v8, v4

    .line 1280
    .local v8, "newScale":J
    const/4 v3, 0x1

    .line 1281
    .local v3, "i":I
    sget-object v11, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v11, v11

    add-int/lit8 v7, v11, -0x1

    .line 1283
    .local v7, "lastPow":I
    const/4 v11, 0x1

    new-array v10, v11, [Ljava/math/BigInteger;

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v14

    aput-object v14, v10, v11

    .line 1285
    .local v10, "quotAndRem":[Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v11

    if-eqz v11, :cond_4c

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v11

    if-nez v11, :cond_4c

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v11

    if-eqz v11, :cond_51

    .line 1287
    :cond_4c
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v11

    .line 1324
    :goto_50
    return-object v11

    .line 1289
    :cond_51
    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-lez v11, :cond_67

    .line 1291
    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v14

    invoke-static {v12, v13}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    aput-object v14, v10, v11

    .line 1292
    add-long/2addr v8, v12

    .line 1294
    :cond_67
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v10

    .line 1295
    const/4 v11, 0x0

    aget-object v6, v10, v11

    .line 1297
    .local v6, "integerQuot":Ljava/math/BigInteger;
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-eqz v11, :cond_b5

    .line 1299
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    .line 1301
    .local v2, "compRem":I
    sget-object v11, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    const/4 v14, 0x0

    aget-object v14, v10, v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->signum()I

    move-result v14

    add-int/lit8 v15, v2, 0x5

    mul-int/2addr v14, v15

    int-to-long v14, v14

    invoke-static {v14, v15}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 1303
    const-wide/16 v14, 0x1

    add-long/2addr v8, v14

    .line 1324
    .end local v2    # "compRem":I
    :cond_a9
    new-instance v11, Ljava/math/BigDecimal;

    invoke-static {v8, v9}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v14

    move-object/from16 v0, p2

    invoke-direct {v11, v6, v14, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    goto :goto_50

    .line 1306
    :cond_b5
    :goto_b5
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v11

    if-nez v11, :cond_a9

    .line 1307
    sget-object v11, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v11, v11, v3

    invoke-virtual {v6, v11}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v10

    .line 1308
    const/4 v11, 0x1

    aget-object v11, v10, v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-nez v11, :cond_de

    int-to-long v14, v3

    sub-long v14, v8, v14

    cmp-long v11, v14, v4

    if-ltz v11, :cond_de

    .line 1310
    int-to-long v14, v3

    sub-long/2addr v8, v14

    .line 1311
    if-ge v3, v7, :cond_da

    .line 1312
    add-int/lit8 v3, v3, 0x1

    .line 1314
    :cond_da
    const/4 v11, 0x0

    aget-object v6, v10, v11

    goto :goto_b5

    .line 1316
    :cond_de
    const/4 v11, 0x1

    if-eq v3, v11, :cond_a9

    .line 1319
    const/4 v3, 0x1

    goto :goto_b5
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    .line 1174
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .prologue
    const/4 v2, 0x0

    .line 1561
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1563
    .local v0, "quotAndRem":[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1564
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1565
    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 6
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    const/4 v2, 0x0

    .line 1591
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1593
    .local v0, "quotAndRem":[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1594
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1595
    return-object v0
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 20
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .prologue
    .line 1343
    const/4 v9, 0x1

    new-array v8, v9, [Ljava/math/BigInteger;

    const/4 v9, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v12

    aput-object v12, v8, v9

    .line 1344
    .local v8, "quotAndRem":[Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v12, v9

    move-object/from16 v0, p1

    iget v9, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v14, v9

    sub-long v6, v12, v14

    .line 1345
    .local v6, "newScale":J
    const-wide/16 v10, 0x0

    .line 1346
    .local v10, "tempScale":J
    const/4 v2, 0x1

    .line 1347
    .local v2, "i":I
    sget-object v9, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v9, v9

    add-int/lit8 v4, v9, -0x1

    .line 1349
    .local v4, "lastPow":I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1350
    new-instance v9, Ljava/lang/ArithmeticException;

    const-string v12, "Division by zero"

    invoke-direct {v9, v12}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1352
    :cond_2c
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v9

    int-to-long v12, v9

    add-long/2addr v12, v6

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v9

    int-to-long v14, v9

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    cmp-long v9, v12, v14

    if-gtz v9, :cond_45

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v9

    if-eqz v9, :cond_52

    .line 1356
    :cond_45
    sget-object v3, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1385
    .local v3, "integralValue":Ljava/math/BigInteger;
    :goto_47
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-nez v9, :cond_c9

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v9

    :goto_51
    return-object v9

    .line 1357
    .end local v3    # "integralValue":Ljava/math/BigInteger;
    :cond_52
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-nez v9, :cond_65

    .line 1358
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .restart local v3    # "integralValue":Ljava/math/BigInteger;
    goto :goto_47

    .line 1359
    .end local v3    # "integralValue":Ljava/math/BigInteger;
    :cond_65
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-lez v9, :cond_84

    .line 1360
    invoke-static {v6, v7}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 1361
    .local v5, "powerOfTen":Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1362
    .restart local v3    # "integralValue":Ljava/math/BigInteger;
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_47

    .line 1364
    .end local v3    # "integralValue":Ljava/math/BigInteger;
    .end local v5    # "powerOfTen":Ljava/math/BigInteger;
    :cond_84
    neg-long v12, v6

    invoke-static {v12, v13}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v5

    .line 1365
    .restart local v5    # "powerOfTen":Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1367
    .restart local v3    # "integralValue":Ljava/math/BigInteger;
    :goto_99
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-nez v9, :cond_c5

    .line 1368
    sget-object v9, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v9, v9, v2

    invoke-virtual {v3, v9}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v8

    .line 1369
    const/4 v9, 0x1

    aget-object v9, v8, v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v9

    if-nez v9, :cond_c2

    int-to-long v12, v2

    sub-long v12, v10, v12

    cmp-long v9, v12, v6

    if-ltz v9, :cond_c2

    .line 1371
    int-to-long v12, v2

    sub-long/2addr v10, v12

    .line 1372
    if-ge v2, v4, :cond_be

    .line 1373
    add-int/lit8 v2, v2, 0x1

    .line 1375
    :cond_be
    const/4 v9, 0x0

    aget-object v3, v8, v9

    goto :goto_99

    .line 1377
    :cond_c2
    const/4 v9, 0x1

    if-ne v2, v9, :cond_c7

    .line 1383
    :cond_c5
    move-wide v6, v10

    goto :goto_47

    .line 1380
    :cond_c7
    const/4 v2, 0x1

    goto :goto_99

    .line 1385
    .end local v5    # "powerOfTen":Ljava/math/BigInteger;
    :cond_c9
    new-instance v9, Ljava/math/BigDecimal;

    invoke-static {v6, v7}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v12

    invoke-direct {v9, v3, v12}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_51
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 31
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1412
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v12

    .line 1413
    .local v12, "mcPrecision":I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v22

    sub-int v4, v21, v22

    .line 1414
    .local v4, "diffPrecision":I
    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    add-int/lit8 v11, v21, -0x1

    .line 1415
    .local v11, "lastPow":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v6, v22, v24

    .line 1416
    .local v6, "diffScale":J
    move-wide v14, v6

    .line 1417
    .local v14, "newScale":J
    int-to-long v0, v4

    move-wide/from16 v22, v0

    sub-long v22, v22, v6

    const-wide/16 v24, 0x1

    add-long v16, v22, v24

    .line 1418
    .local v16, "quotPrecision":J
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v13, v0, [Ljava/math/BigInteger;

    .line 1420
    .local v13, "quotAndRem":[Ljava/math/BigInteger;
    if-eqz v12, :cond_4d

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v21

    if-nez v21, :cond_4d

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v21

    if-eqz v21, :cond_52

    .line 1421
    :cond_4d
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v10

    .line 1496
    :goto_51
    return-object v10

    .line 1424
    :cond_52
    const-wide/16 v22, 0x0

    cmp-long v21, v16, v22

    if-gtz v21, :cond_6d

    .line 1425
    const/16 v21, 0x0

    sget-object v22, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v22, v13, v21

    .line 1464
    :cond_5e
    :goto_5e
    const/16 v21, 0x0

    aget-object v21, v13, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-nez v21, :cond_15d

    .line 1465
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    goto :goto_51

    .line 1426
    :cond_6d
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-nez v21, :cond_84

    .line 1428
    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v13, v21

    goto :goto_5e

    .line 1429
    :cond_84
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-lez v21, :cond_c8

    .line 1431
    const/16 v21, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-static {v6, v7}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v13, v21

    .line 1434
    int-to-long v0, v12

    move-wide/from16 v22, v0

    sub-long v22, v22, v16

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    const-wide/16 v24, 0x0

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    .line 1436
    const/16 v21, 0x0

    const/16 v22, 0x0

    aget-object v22, v13, v22

    invoke-static {v14, v15}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v13, v21

    goto :goto_5e

    .line 1440
    :cond_c8
    neg-long v0, v6

    move-wide/from16 v22, v0

    int-to-long v0, v12

    move-wide/from16 v24, v0

    int-to-long v0, v4

    move-wide/from16 v26, v0

    sub-long v24, v24, v26

    const-wide/16 v26, 0x0

    invoke-static/range {v24 .. v27}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 1443
    .local v8, "exp":J
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v21

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    .line 1445
    add-long/2addr v14, v8

    .line 1446
    neg-long v8, v14

    .line 1448
    const/16 v21, 0x1

    aget-object v21, v13, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-eqz v21, :cond_5e

    const-wide/16 v22, 0x0

    cmp-long v21, v8, v22

    if-lez v21, :cond_5e

    .line 1450
    new-instance v21, Ljava/math/BigDecimal;

    const/16 v22, 0x1

    aget-object v22, v13, v22

    invoke-direct/range {v21 .. v22}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v22, v22, v8

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v2, v22, v24

    .line 1452
    .local v2, "compRemDiv":J
    const-wide/16 v22, 0x0

    cmp-long v21, v2, v22

    if-nez v21, :cond_14f

    .line 1454
    const/16 v21, 0x1

    const/16 v22, 0x1

    aget-object v22, v13, v22

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    aput-object v22, v13, v21

    .line 1456
    const/16 v21, 0x1

    aget-object v21, v13, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v21

    int-to-long v2, v0

    .line 1458
    :cond_14f
    const-wide/16 v22, 0x0

    cmp-long v21, v2, v22

    if-lez v21, :cond_5e

    .line 1459
    new-instance v21, Ljava/lang/ArithmeticException;

    const-string v22, "Division impossible"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1467
    .end local v2    # "compRemDiv":J
    .end local v8    # "exp":J
    :cond_15d
    const/16 v21, 0x0

    aget-object v20, v13, v21

    .line 1468
    .local v20, "strippedBI":Ljava/math/BigInteger;
    new-instance v10, Ljava/math/BigDecimal;

    const/16 v21, 0x0

    aget-object v21, v13, v21

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 1469
    .local v10, "integralValue":Ljava/math/BigDecimal;
    invoke-virtual {v10}, Ljava/math/BigDecimal;->precision()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 1470
    .local v18, "resultPrecision":J
    const/4 v5, 0x1

    .line 1472
    .local v5, "i":I
    :goto_176
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v21

    if-nez v21, :cond_1be

    .line 1473
    sget-object v21, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v21, v21, v5

    invoke-virtual/range {v20 .. v21}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    .line 1474
    const/16 v21, 0x1

    aget-object v21, v13, v21

    invoke-virtual/range {v21 .. v21}, Ljava/math/BigInteger;->signum()I

    move-result v21

    if-nez v21, :cond_1b8

    int-to-long v0, v5

    move-wide/from16 v22, v0

    sub-long v22, v18, v22

    int-to-long v0, v12

    move-wide/from16 v24, v0

    cmp-long v21, v22, v24

    if-gez v21, :cond_1a5

    int-to-long v0, v5

    move-wide/from16 v22, v0

    sub-long v22, v14, v22

    cmp-long v21, v22, v6

    if-ltz v21, :cond_1b8

    .line 1477
    :cond_1a5
    int-to-long v0, v5

    move-wide/from16 v22, v0

    sub-long v18, v18, v22

    .line 1478
    int-to-long v0, v5

    move-wide/from16 v22, v0

    sub-long v14, v14, v22

    .line 1479
    if-ge v5, v11, :cond_1b3

    .line 1480
    add-int/lit8 v5, v5, 0x1

    .line 1482
    :cond_1b3
    const/16 v21, 0x0

    aget-object v20, v13, v21

    goto :goto_176

    .line 1484
    :cond_1b8
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v5, v0, :cond_1cd

    .line 1491
    :cond_1be
    int-to-long v0, v12

    move-wide/from16 v22, v0

    cmp-long v21, v18, v22

    if-lez v21, :cond_1cf

    .line 1492
    new-instance v21, Ljava/lang/ArithmeticException;

    const-string v22, "Division impossible"

    invoke-direct/range {v21 .. v22}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 1487
    :cond_1cd
    const/4 v5, 0x1

    goto :goto_176

    .line 1494
    :cond_1cf
    invoke-static {v14, v15}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v21

    move/from16 v0, v21

    iput v0, v10, Ljava/math/BigDecimal;->scale:I

    .line 1495
    move-object/from16 v0, v20

    invoke-direct {v10, v0}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_51
.end method

.method public doubleValue()D
    .registers 25

    .prologue
    .line 2530
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    .line 2531
    .local v14, "sign":I
    const/16 v6, 0x434

    .line 2534
    .local v6, "exponent":I
    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigDecimal;->bitLength:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    int-to-double v0, v15

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd34413509f79ffL    # 0.3010299956639812

    div-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-long v0, v0

    move-wide/from16 v20, v0

    sub-long v12, v18, v20

    .line 2539
    .local v12, "powerOfTwo":J
    const-wide/16 v18, -0x432

    cmp-long v15, v12, v18

    if-ltz v15, :cond_2a

    if-nez v14, :cond_32

    .line 2541
    :cond_2a
    int-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    mul-double v18, v18, v20

    .line 2626
    :goto_31
    return-wide v18

    .line 2542
    :cond_32
    const-wide/16 v18, 0x401

    cmp-long v15, v12, v18

    if-lez v15, :cond_40

    .line 2544
    int-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double v18, v18, v20

    goto :goto_31

    .line 2546
    :cond_40
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 2548
    .local v9, "mantissa":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    if-gtz v15, :cond_a7

    .line 2550
    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    neg-int v15, v15

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2572
    :goto_5e
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    .line 2573
    .local v8, "lowestSetBit":I
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    add-int/lit8 v5, v15, -0x36

    .line 2574
    .local v5, "discardedSize":I
    if-lez v5, :cond_f1

    .line 2576
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 2577
    .local v2, "bits":J
    move-wide/from16 v16, v2

    .line 2579
    .local v16, "tempBits":J
    const-wide/16 v18, 0x1

    and-long v18, v18, v2

    const-wide/16 v20, 0x1

    cmp-long v15, v18, v20

    if-nez v15, :cond_80

    if-lt v8, v5, :cond_8a

    :cond_80
    const-wide/16 v18, 0x3

    and-long v18, v18, v2

    const-wide/16 v20, 0x3

    cmp-long v15, v18, v20

    if-nez v15, :cond_8e

    .line 2581
    :cond_8a
    const-wide/16 v18, 0x2

    add-long v2, v2, v18

    .line 2593
    :cond_8e
    :goto_8e
    const-wide/high16 v18, 0x40000000000000L

    and-long v18, v18, v2

    const-wide/16 v20, 0x0

    cmp-long v15, v18, v20

    if-nez v15, :cond_109

    .line 2595
    const/4 v15, 0x1

    shr-long/2addr v2, v15

    .line 2597
    add-int/2addr v6, v5

    .line 2603
    :goto_9b
    const/16 v15, 0x7fe

    if-le v6, v15, :cond_10f

    .line 2604
    int-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    mul-double v18, v18, v20

    goto :goto_31

    .line 2553
    .end local v2    # "bits":J
    .end local v5    # "discardedSize":I
    .end local v8    # "lowestSetBit":I
    .end local v16    # "tempBits":J
    :cond_a7
    move-object/from16 v0, p0

    iget v15, v0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v15

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 2554
    .local v10, "powerOfTen":Ljava/math/BigInteger;
    long-to-int v15, v12

    rsub-int/lit8 v7, v15, 0x64

    .line 2557
    .local v7, "k":I
    if-lez v7, :cond_bc

    .line 2560
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 2561
    sub-int/2addr v6, v7

    .line 2564
    :cond_bc
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v11

    .line 2566
    .local v11, "quotAndRem":[Ljava/math/BigInteger;
    const/4 v15, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->shiftLeftOneBit()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 2568
    .local v4, "compRem":I
    const/4 v15, 0x0

    aget-object v15, v11, v15

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    add-int/lit8 v18, v4, 0x3

    mul-int v18, v18, v4

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2570
    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_5e

    .line 2585
    .end local v4    # "compRem":I
    .end local v7    # "k":I
    .end local v10    # "powerOfTen":Ljava/math/BigInteger;
    .end local v11    # "quotAndRem":[Ljava/math/BigInteger;
    .restart local v5    # "discardedSize":I
    .restart local v8    # "lowestSetBit":I
    :cond_f1
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v18

    neg-int v15, v5

    shl-long v2, v18, v15

    .line 2586
    .restart local v2    # "bits":J
    move-wide/from16 v16, v2

    .line 2588
    .restart local v16    # "tempBits":J
    const-wide/16 v18, 0x3

    and-long v18, v18, v2

    const-wide/16 v20, 0x3

    cmp-long v15, v18, v20

    if-nez v15, :cond_8e

    .line 2589
    const-wide/16 v18, 0x2

    add-long v2, v2, v18

    goto :goto_8e

    .line 2599
    :cond_109
    const/4 v15, 0x2

    shr-long/2addr v2, v15

    .line 2600
    add-int/lit8 v15, v5, 0x1

    add-int/2addr v6, v15

    goto :goto_9b

    .line 2605
    :cond_10f
    if-gtz v6, :cond_14e

    .line 2607
    const/16 v15, -0x35

    if-ge v6, v15, :cond_11e

    .line 2608
    int-to-double v0, v14

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    mul-double v18, v18, v20

    goto/16 :goto_31

    .line 2612
    :cond_11e
    const/4 v15, 0x1

    shr-long v2, v16, v15

    .line 2613
    const-wide/16 v18, -0x1

    add-int/lit8 v15, v6, 0x3f

    ushr-long v18, v18, v15

    and-long v16, v2, v18

    .line 2614
    neg-int v15, v6

    shr-long/2addr v2, v15

    .line 2616
    const-wide/16 v18, 0x3

    and-long v18, v18, v2

    const-wide/16 v20, 0x3

    cmp-long v15, v18, v20

    if-eqz v15, :cond_147

    const-wide/16 v18, 0x1

    and-long v18, v18, v2

    const-wide/16 v20, 0x1

    cmp-long v15, v18, v20

    if-nez v15, :cond_14b

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_14b

    if-ge v8, v5, :cond_14b

    .line 2618
    :cond_147
    const-wide/16 v18, 0x1

    add-long v2, v2, v18

    .line 2620
    :cond_14b
    const/4 v6, 0x0

    .line 2621
    const/4 v15, 0x1

    shr-long/2addr v2, v15

    .line 2624
    :cond_14e
    int-to-long v0, v14

    move-wide/from16 v18, v0

    const-wide/high16 v20, -0x8000000000000000L

    and-long v18, v18, v20

    int-to-long v0, v6

    move-wide/from16 v20, v0

    const/16 v15, 0x34

    shl-long v20, v20, v15

    or-long v18, v18, v20

    const-wide v20, 0xfffffffffffffL

    and-long v20, v20, v2

    or-long v2, v18, v20

    .line 2626
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    goto/16 :goto_31
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2118
    if-ne p0, p1, :cond_5

    .line 2127
    :cond_4
    :goto_4
    return v1

    .line 2121
    :cond_5
    instance-of v3, p1, Ljava/math/BigDecimal;

    if-eqz v3, :cond_2d

    move-object v0, p1

    .line 2122
    check-cast v0, Ljava/math/BigDecimal;

    .line 2123
    .local v0, "x1":Ljava/math/BigDecimal;
    iget v3, v0, Ljava/math/BigDecimal;->scale:I

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-ne v3, v4, :cond_20

    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v4, 0x40

    if-ge v3, v4, :cond_22

    iget-wide v4, v0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    :cond_20
    move v1, v2

    goto :goto_4

    :cond_22
    iget-object v3, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v4, v0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_4

    .end local v0    # "x1":Ljava/math/BigDecimal;
    :cond_2d
    move v1, v2

    .line 2127
    goto :goto_4
.end method

.method public floatValue()F
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 2495
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v1

    int-to-float v0, v1

    .line 2496
    .local v0, "floatResult":F
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    int-to-long v4, v1

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-double v6, v1

    const-wide v8, 0x3fd34413509f79ffL    # 0.3010299956639812

    div-double/2addr v6, v8

    double-to-long v6, v6

    sub-long v2, v4, v6

    .line 2497
    .local v2, "powerOfTwo":J
    const-wide/16 v4, -0x95

    cmp-long v1, v2, v4

    if-ltz v1, :cond_1f

    cmpl-float v1, v0, v10

    if-nez v1, :cond_21

    .line 2499
    :cond_1f
    mul-float/2addr v0, v10

    .line 2506
    :goto_20
    return v0

    .line 2500
    :cond_21
    const-wide/16 v4, 0x81

    cmp-long v1, v2, v4

    if-lez v1, :cond_2b

    .line 2502
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    mul-float/2addr v0, v1

    goto :goto_20

    .line 2504
    :cond_2b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    double-to-float v0, v4

    goto :goto_20
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 2163
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    if-eqz v0, :cond_9

    .line 2164
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2173
    :goto_8
    return v0

    .line 2166
    :cond_9
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2f

    .line 2167
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2168
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x21

    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2169
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2170
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_8

    .line 2172
    :cond_2f
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2173
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_8
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 2434
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x20

    if-le v0, v1, :cond_e

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method public intValueExact()I
    .registers 3

    .prologue
    .line 2446
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 2407
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-le v0, v1, :cond_e

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v1

    if-le v0, v1, :cond_11

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0

    :cond_11
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_10
.end method

.method public longValueExact()J
    .registers 3

    .prologue
    .line 2419
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 2153
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_7

    .end local p0    # "this":Ljava/math/BigDecimal;
    :goto_6
    return-object p0

    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method public min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "val"    # Ljava/math/BigDecimal;

    .prologue
    .line 2140
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_7

    .end local p0    # "this":Ljava/math/BigDecimal;
    :goto_6
    return-object p0

    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_7
    move-object p0, p1

    goto :goto_6
.end method

.method public movePointLeft(I)Ljava/math/BigDecimal;
    .registers 6
    .param p1, "n"    # I

    .prologue
    .line 1953
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public movePointRight(I)Ljava/math/BigDecimal;
    .registers 6
    .param p1, "n"    # I

    .prologue
    .line 1991
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 8
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;

    .prologue
    .line 933
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 935
    .local v0, "newScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 936
    :cond_14
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 943
    :goto_18
    return-object v2

    .line 940
    :cond_19
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v3, p1, Ljava/math/BigDecimal;->bitLength:I

    add-int/2addr v2, v3

    const/16 v3, 0x40

    if-ge v2, v3, :cond_30

    .line 941
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_18

    .line 943
    :cond_30
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18
.end method

.method public multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "multiplicand"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 961
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 963
    .local v0, "result":Ljava/math/BigDecimal;
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 964
    return-object v0
.end method

.method public negate()Ljava/math/BigDecimal;
    .registers 5

    .prologue
    const/16 v1, 0x3f

    .line 1702
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-lt v0, v1, :cond_12

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1703
    :cond_12
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1705
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_1b
.end method

.method public negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1717
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1718
    .local v0, "result":Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1719
    return-object v0
.end method

.method public plus()Ljava/math/BigDecimal;
    .registers 1

    .prologue
    .line 1729
    return-object p0
.end method

.method public plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1741
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigDecimal;
    .registers 8
    .param p1, "n"    # I

    .prologue
    .line 1611
    if-nez p1, :cond_5

    .line 1612
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1619
    :goto_4
    return-object v2

    .line 1614
    :cond_5
    if-ltz p1, :cond_c

    const v2, 0x3b9ac9ff

    if-le p1, v2, :cond_14

    .line 1615
    :cond_c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Invalid operation"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1617
    :cond_14
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 1619
    .local v0, "newScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_4

    :cond_25
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_4
.end method

.method public pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .param p1, "n"    # I
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1637
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1638
    .local v2, "m":I
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 1639
    .local v3, "mcPrecision":I
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x1

    .line 1642
    .local v1, "elength":I
    move-object v4, p2

    .line 1645
    .local v4, "newPrecision":Ljava/math/MathContext;
    if-eqz p1, :cond_1b

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_20

    if-lez p1, :cond_20

    .line 1646
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1673
    :goto_1f
    return-object v0

    .line 1648
    :cond_20
    const v6, 0x3b9ac9ff

    if-gt v2, v6, :cond_2d

    if-nez v3, :cond_29

    if-ltz p1, :cond_2d

    :cond_29
    if-lez v3, :cond_35

    if-le v1, v3, :cond_35

    .line 1650
    :cond_2d
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "Invalid operation"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1652
    :cond_35
    if-lez v3, :cond_44

    .line 1653
    new-instance v4, Ljava/math/MathContext;

    .end local v4    # "newPrecision":Ljava/math/MathContext;
    add-int v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1657
    .restart local v4    # "newPrecision":Ljava/math/MathContext;
    :cond_44
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1658
    .local v0, "accum":Ljava/math/BigDecimal;
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1660
    .local v5, "oneBitMask":I
    :goto_4e
    if-lez v5, :cond_5f

    .line 1661
    invoke-virtual {v0, v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1662
    and-int v6, v2, v5

    if-ne v6, v5, :cond_5c

    .line 1663
    invoke-virtual {v0, p0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1665
    :cond_5c
    shr-int/lit8 v5, v5, 0x1

    goto :goto_4e

    .line 1668
    :cond_5f
    if-gez p1, :cond_67

    .line 1669
    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v6, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1672
    :cond_67
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    goto :goto_1f
.end method

.method public precision()I
    .registers 7

    .prologue
    .line 1785
    iget v1, p0, Ljava/math/BigDecimal;->precision:I

    if-eqz v1, :cond_7

    .line 1786
    iget v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 1801
    :goto_6
    return v1

    .line 1789
    :cond_7
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v1, :cond_11

    .line 1790
    const/4 v1, 0x1

    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 1801
    :goto_e
    iget v1, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_6

    .line 1791
    :cond_11
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_20

    .line 1792
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-direct {p0, v2, v3}, Ljava/math/BigDecimal;->decimalDigitsInLong(J)I

    move-result v1

    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_e

    .line 1794
    :cond_20
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    add-int/lit8 v1, v1, -0x1

    int-to-double v2, v1

    const-wide v4, 0x3fd34413509f79ffL    # 0.3010299956639812

    mul-double/2addr v2, v4

    double-to-int v1, v2

    add-int/lit8 v0, v1, 0x1

    .line 1796
    .local v0, "decimalDigits":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_43

    .line 1797
    add-int/lit8 v0, v0, 0x1

    .line 1799
    :cond_43
    iput v0, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_e
.end method

.method public remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "divisor"    # Ljava/math/BigDecimal;

    .prologue
    .line 1514
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "divisor"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1540
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .param p1, "mc"    # Ljava/math/MathContext;

    .prologue
    .line 1841
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1843
    .local v0, "thisBD":Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1844
    return-object v0
.end method

.method public scale()I
    .registers 2

    .prologue
    .line 1772
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .registers 8
    .param p1, "n"    # I

    .prologue
    .line 2003
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2004
    .local v0, "newScale":J
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_24

    .line 2006
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 2007
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2011
    :goto_18
    return-object v2

    .line 2009
    :cond_19
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_18

    .line 2011
    :cond_24
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18
.end method

.method public setScale(I)Ljava/math/BigDecimal;
    .registers 3
    .param p1, "newScale"    # I

    .prologue
    .line 1937
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(II)Ljava/math/BigDecimal;
    .registers 4
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # I

    .prologue
    .line 1917
    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 13
    .param p1, "newScale"    # I
    .param p2, "roundingMode"    # Ljava/math/RoundingMode;

    .prologue
    const-wide/16 v8, 0x0

    const/16 v4, 0x40

    .line 1870
    if-nez p2, :cond_e

    .line 1871
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "roundingMode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1873
    :cond_e
    int-to-long v0, p1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    .line 1875
    .local v6, "diffScale":J
    cmp-long v0, v6, v8

    if-nez v0, :cond_19

    .line 1891
    .end local p0    # "this":Ljava/math/BigDecimal;
    :goto_18
    return-object p0

    .line 1878
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_19
    cmp-long v0, v6, v8

    if-lez v0, :cond_4d

    .line 1880
    sget-object v0, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_3c

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_3c

    .line 1882
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    long-to-int v3, v6

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_18

    .line 1884
    :cond_3c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    long-to-int v2, v6

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v0

    goto :goto_18

    .line 1888
    :cond_4d
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_69

    neg-long v0, v6

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_69

    .line 1889
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    neg-long v4, v6

    long-to-int v3, v4

    aget-wide v2, v2, v3

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_18

    .line 1891
    :cond_69
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    neg-long v2, v6

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_18
.end method

.method public shortValueExact()S
    .registers 3

    .prologue
    .line 2458
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public signum()I
    .registers 3

    .prologue
    .line 1752
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_d

    .line 1753
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 1755
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    goto :goto_c
.end method

.method public stripTrailingZeros()Ljava/math/BigDecimal;
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2024
    const/4 v0, 0x1

    .line 2025
    .local v0, "i":I
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .line 2026
    .local v1, "lastPow":I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v6

    .line 2028
    .local v2, "newScale":J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2058
    .end local p0    # "this":Ljava/math/BigDecimal;
    :goto_11
    return-object p0

    .line 2033
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_12
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2037
    .local v5, "strippedBI":Ljava/math/BigInteger;
    :goto_16
    invoke-virtual {v5, v8}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_37

    .line 2039
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 2041
    .local v4, "quotAndRem":[Ljava/math/BigInteger;
    aget-object v6, v4, v9

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_35

    .line 2043
    int-to-long v6, v0

    sub-long/2addr v2, v6

    .line 2044
    if-ge v0, v1, :cond_32

    .line 2046
    add-int/lit8 v0, v0, 0x1

    .line 2048
    :cond_32
    aget-object v5, v4, v8

    goto :goto_16

    .line 2050
    :cond_35
    if-ne v0, v9, :cond_41

    .line 2058
    .end local v4    # "quotAndRem":[Ljava/math/BigInteger;
    :cond_37
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0    # "this":Ljava/math/BigDecimal;
    invoke-static {v2, v3}, Ljava/math/BigDecimal;->safeLongToInt(J)I

    move-result v6

    invoke-direct {p0, v5, v6}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_11

    .line 2055
    .restart local v4    # "quotAndRem":[Ljava/math/BigInteger;
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_41
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 10
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;

    .prologue
    const/16 v4, 0x40

    .line 837
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 839
    .local v0, "diffScale":I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 840
    if-gtz v0, :cond_15

    .line 841
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object p0

    .line 872
    .end local p0    # "this":Ljava/math/BigDecimal;
    :cond_14
    :goto_14
    return-object p0

    .line 843
    .restart local p0    # "this":Ljava/math/BigDecimal;
    :cond_15
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-nez v1, :cond_14

    .line 852
    :cond_1b
    if-nez v0, :cond_53

    .line 854
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_3e

    .line 855
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v2, v4

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_14

    .line 846
    :cond_35
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 847
    if-ltz v0, :cond_1b

    goto :goto_14

    .line 857
    :cond_3e
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto :goto_14

    .line 858
    :cond_53
    if-lez v0, :cond_97

    .line 860
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_7c

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_7c

    .line 862
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v6, v1, v0

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto :goto_14

    .line 864
    :cond_7c
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto/16 :goto_14

    .line 867
    :cond_97
    neg-int v0, v0

    .line 868
    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    array-length v1, v1

    if-ge v0, v1, :cond_c0

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v2, Ljava/math/BigDecimal;->LONG_POWERS_OF_TEN_BIT_LENGTH:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_c0

    .line 870
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v1, Llibcore/math/MathUtils;->LONG_POWERS_OF_TEN:[J

    aget-wide v4, v1, v0

    mul-long/2addr v2, v4

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v2, v4

    iget v1, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v2, v3, v1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_14

    .line 872
    :cond_c0
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p0, v1

    goto/16 :goto_14
.end method

.method public subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 14
    .param p1, "subtrahend"    # Ljava/math/BigDecimal;
    .param p2, "mc"    # Ljava/math/MathContext;

    .prologue
    const/16 v10, 0xa

    .line 890
    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v6, v5

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v5

    sub-long v0, v6, v8

    .line 895
    .local v0, "diffScale":J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    if-nez v5, :cond_25

    .line 897
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 918
    :goto_24
    return-object v5

    .line 900
    :cond_25
    invoke-direct {p1}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v5

    int-to-long v6, v5

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    cmp-long v5, v6, v8

    if-gez v5, :cond_82

    .line 902
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v6

    if-ge v5, v6, :cond_82

    .line 903
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 904
    .local v4, "thisSignum":I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-eq v4, v5, :cond_65

    .line 905
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v10}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 913
    .local v3, "tempBI":Ljava/math/BigInteger;
    :goto_57
    new-instance v2, Ljava/math/BigDecimal;

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 914
    .local v2, "leftOperand":Ljava/math/BigDecimal;
    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_24

    .line 908
    .end local v2    # "leftOperand":Ljava/math/BigDecimal;
    .end local v3    # "tempBI":Ljava/math/BigInteger;
    :cond_65
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 909
    .restart local v3    # "tempBI":Ljava/math/BigInteger;
    invoke-static {v3, v10}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v4, 0x9

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_57

    .line 918
    .end local v3    # "tempBI":Ljava/math/BigInteger;
    .end local v4    # "thisSignum":I
    :cond_82
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_24
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 2357
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v0, :cond_a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2358
    :cond_a
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 2362
    :goto_e
    return-object v0

    .line 2359
    :cond_f
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_24

    .line 2360
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v1

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e

    .line 2362
    :cond_24
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 2376
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v1, :cond_a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2377
    :cond_a
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 2391
    :goto_e
    return-object v1

    .line 2378
    :cond_f
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v1, :cond_24

    .line 2379
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_e

    .line 2383
    :cond_24
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->approxPrecision()I

    move-result v2

    if-gt v1, v2, :cond_38

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-le v1, v2, :cond_40

    .line 2384
    :cond_38
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2386
    :cond_40
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 2387
    .local v0, "integerAndFraction":[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_60

    .line 2389
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Rounding necessary"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2391
    :cond_60
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_e
.end method

.method public toEngineeringString()Ljava/lang/String;
    .registers 15

    .prologue
    .line 2241
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2242
    .local v7, "intString":Ljava/lang/String;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v10, :cond_d

    .line 2291
    .end local v7    # "intString":Ljava/lang/String;
    :goto_c
    return-object v7

    .line 2245
    .restart local v7    # "intString":Ljava/lang/String;
    :cond_d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gez v10, :cond_48

    const/4 v0, 0x2

    .line 2246
    .local v0, "begin":I
    :goto_18
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2247
    .local v2, "end":I
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    neg-long v10, v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    int-to-long v12, v0

    sub-long v4, v10, v12

    .line 2248
    .local v4, "exponent":J
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2250
    .local v9, "result":Ljava/lang/StringBuilder;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v10, :cond_5e

    const-wide/16 v10, -0x6

    cmp-long v10, v4, v10

    if-ltz v10, :cond_5e

    .line 2251
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_4a

    .line 2252
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v10, v2, v10

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2291
    :cond_43
    :goto_43
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    .line 2245
    .end local v0    # "begin":I
    .end local v2    # "end":I
    .end local v4    # "exponent":J
    .end local v9    # "result":Ljava/lang/StringBuilder;
    :cond_48
    const/4 v0, 0x1

    goto :goto_18

    .line 2254
    .restart local v0    # "begin":I
    .restart local v2    # "end":I
    .restart local v4    # "exponent":J
    .restart local v9    # "result":Ljava/lang/StringBuilder;
    :cond_4a
    add-int/lit8 v10, v0, -0x1

    const-string v11, "0."

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    add-int/lit8 v10, v0, 0x1

    sget-object v11, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v12, 0x0

    long-to-int v13, v4

    neg-int v13, v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 2258
    :cond_5e
    sub-int v1, v2, v0

    .line 2259
    .local v1, "delta":I
    const-wide/16 v10, 0x3

    rem-long v10, v4, v10

    long-to-int v8, v10

    .line 2261
    .local v8, "rem":I
    if-eqz v8, :cond_95

    .line 2263
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_8c

    .line 2265
    if-gez v8, :cond_89

    neg-int v8, v8

    .line 2266
    :goto_74
    int-to-long v10, v8

    add-long/2addr v4, v10

    .line 2273
    :goto_76
    const/4 v10, 0x3

    if-ge v1, v10, :cond_95

    .line 2274
    sub-int v6, v8, v1

    .local v6, "i":I
    move v3, v2

    .end local v2    # "end":I
    .local v3, "end":I
    :goto_7c
    if-lez v6, :cond_94

    .line 2275
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "end":I
    .restart local v2    # "end":I
    const/16 v10, 0x30

    invoke-virtual {v9, v3, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2274
    add-int/lit8 v6, v6, -0x1

    move v3, v2

    .end local v2    # "end":I
    .restart local v3    # "end":I
    goto :goto_7c

    .line 2265
    .end local v3    # "end":I
    .end local v6    # "i":I
    .restart local v2    # "end":I
    :cond_89
    rsub-int/lit8 v8, v8, 0x3

    goto :goto_74

    .line 2269
    :cond_8c
    if-gez v8, :cond_90

    add-int/lit8 v8, v8, 0x3

    .line 2270
    :cond_90
    int-to-long v10, v8

    sub-long/2addr v4, v10

    .line 2271
    add-int/2addr v0, v8

    goto :goto_76

    .end local v2    # "end":I
    .restart local v3    # "end":I
    .restart local v6    # "i":I
    :cond_94
    move v2, v3

    .line 2279
    .end local v3    # "end":I
    .end local v6    # "i":I
    .restart local v2    # "end":I
    :cond_95
    sub-int v10, v2, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_a1

    .line 2280
    const/16 v10, 0x2e

    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2281
    add-int/lit8 v2, v2, 0x1

    .line 2283
    :cond_a1
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_43

    .line 2284
    const/16 v10, 0x45

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2285
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_b9

    .line 2286
    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x2b

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2288
    :cond_b9
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43
.end method

.method public toPlainString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2310
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2311
    .local v2, "intStr":Ljava/lang/String;
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v6, :cond_18

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_19

    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v6, :cond_19

    .line 2347
    .end local v2    # "intStr":Ljava/lang/String;
    :cond_18
    :goto_18
    return-object v2

    .line 2314
    .restart local v2    # "intStr":Ljava/lang/String;
    :cond_19
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    if-gez v6, :cond_5b

    move v0, v4

    .line 2315
    .local v0, "begin":I
    :goto_20
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    .line 2317
    .local v1, "delta":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2319
    .local v3, "result":Ljava/lang/StringBuilder;
    if-ne v0, v4, :cond_3b

    .line 2321
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2323
    :cond_3b
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_84

    .line 2324
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v1, v4

    .line 2325
    if-ltz v1, :cond_6e

    .line 2326
    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2328
    :goto_4c
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    if-le v1, v4, :cond_5d

    .line 2329
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2328
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    sub-int/2addr v1, v4

    goto :goto_4c

    .end local v0    # "begin":I
    .end local v1    # "delta":I
    .end local v3    # "result":Ljava/lang/StringBuilder;
    :cond_5b
    move v0, v5

    .line 2314
    goto :goto_20

    .line 2331
    .restart local v0    # "begin":I
    .restart local v1    # "delta":I
    .restart local v3    # "result":Ljava/lang/StringBuilder;
    :cond_5d
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4, v5, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 2332
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    :goto_69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_18

    .line 2334
    :cond_6e
    sub-int v1, v0, v1

    .line 2335
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2336
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2337
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_69

    .line 2340
    :cond_84
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2342
    :goto_8b
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    neg-int v4, v4

    if-ge v1, v4, :cond_9b

    .line 2343
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 2342
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    add-int/2addr v1, v4

    goto :goto_8b

    .line 2345
    :cond_9b
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    neg-int v6, v1

    invoke-virtual {v3, v4, v5, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_69
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 2189
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    if-eqz v6, :cond_7

    .line 2190
    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2225
    :cond_6
    :goto_6
    return-object v4

    .line 2192
    :cond_7
    iget v6, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v7, 0x20

    if-ge v6, v7, :cond_1a

    .line 2193
    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v6, v7, v8}, Ljava/math/Conversion;->toDecimalScaledString(JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2194
    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_6

    .line 2196
    :cond_1a
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2197
    .local v4, "intString":Ljava/lang/String;
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v6, :cond_6

    .line 2200
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gez v6, :cond_68

    const/4 v0, 0x2

    .line 2201
    .local v0, "begin":I
    :goto_31
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2202
    .local v1, "end":I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v6, v6

    neg-long v6, v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    int-to-long v8, v0

    sub-long v2, v6, v8

    .line 2203
    .local v2, "exponent":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 2205
    .local v5, "result":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2206
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v6, :cond_7e

    const-wide/16 v6, -0x6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_7e

    .line 2207
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_6a

    .line 2208
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v6, v1, v6

    const/16 v7, 0x2e

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2224
    :goto_5f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2225
    iget-object v4, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_6

    .line 2200
    .end local v0    # "begin":I
    .end local v1    # "end":I
    .end local v2    # "exponent":J
    .end local v5    # "result":Ljava/lang/StringBuilder;
    :cond_68
    const/4 v0, 0x1

    goto :goto_31

    .line 2210
    .restart local v0    # "begin":I
    .restart local v1    # "end":I
    .restart local v2    # "exponent":J
    .restart local v5    # "result":Ljava/lang/StringBuilder;
    :cond_6a
    add-int/lit8 v6, v0, -0x1

    const-string v7, "0."

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2211
    add-int/lit8 v6, v0, 0x1

    sget-object v7, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v8, 0x0

    long-to-int v9, v2

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/StringBuilder;->insert(I[CII)Ljava/lang/StringBuilder;

    goto :goto_5f

    .line 2214
    :cond_7e
    sub-int v6, v1, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_8a

    .line 2215
    const/16 v6, 0x2e

    invoke-virtual {v5, v0, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2216
    add-int/lit8 v1, v1, 0x1

    .line 2218
    :cond_8a
    const/16 v6, 0x45

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2219
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_9c

    .line 2220
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x2b

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 2222
    :cond_9c
    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5f
.end method

.method public ulp()Ljava/math/BigDecimal;
    .registers 4

    .prologue
    .line 2644
    const-wide/16 v0, 0x1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1819
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
