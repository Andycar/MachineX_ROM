.class public Ljava/math/BigInteger;
.super Ljava/lang/Number;
.source "BigInteger.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigInteger;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final MINUS_ONE:Ljava/math/BigInteger;

.field public static final ONE:Ljava/math/BigInteger;

.field static final SMALL_VALUES:[Ljava/math/BigInteger;

.field public static final TEN:Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigInteger;

.field private static final serialVersionUID:J = -0x730360e056c404e3L


# instance fields
.field private transient bigInt:Ljava/math/BigInt;

.field transient digits:[I

.field private transient firstNonzeroDigit:I

.field private transient hashCode:I

.field private transient javaIsValid:Z

.field private magnitude:[B

.field private transient nativeIsValid:Z

.field transient numberLength:I

.field transient sign:I

.field private signum:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const-wide/16 v8, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 66
    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v4, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 69
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v6, v8, v9}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    .line 72
    new-instance v0, Ljava/math/BigInteger;

    const-wide/16 v2, 0xa

    invoke-direct {v0, v6, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    .line 75
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v8, v9}, Ljava/math/BigInteger;-><init>(IJ)V

    sput-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    .line 78
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v1, v0, v4

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x2

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x3

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x4

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x5

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x6

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x7

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x8

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Ljava/math/BigInteger;

    const-wide/16 v4, 0x9

    invoke-direct {v2, v6, v4, v5}, Ljava/math/BigInteger;-><init>(IJ)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    sput-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(IILjava/util/Random;)V
    .registers 11
    .param p1, "bitLength"    # I
    .param p2, "certainty"    # I
    .param p3, "random"    # Ljava/util/Random;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 163
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v4, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v4, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v2, -0x2

    iput v2, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v4, p0, Ljava/math/BigInteger;->hashCode:I

    .line 164
    if-ge p1, v6, :cond_2a

    .line 165
    new-instance v2, Ljava/lang/ArithmeticException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitLength < 2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 167
    :cond_2a
    const/16 v2, 0x10

    if-ge p1, v2, :cond_54

    .line 171
    :cond_2e
    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v2

    shl-int v3, v5, p1

    add-int/lit8 v3, v3, -0x1

    and-int v0, v2, v3

    .line 172
    .local v0, "candidate":I
    add-int/lit8 v2, p1, -0x1

    shl-int v2, v5, v2

    or-int/2addr v0, v2

    .line 173
    if-le p1, v6, :cond_41

    .line 174
    or-int/lit8 v0, v0, 0x1

    .line 176
    :cond_41
    invoke-static {v0}, Ljava/math/BigInteger;->isSmallPrime(I)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 177
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    .line 178
    .local v1, "prime":Ljava/math/BigInt;
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigInt;->putULongInt(JZ)V

    .line 179
    invoke-direct {p0, v1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 186
    .end local v0    # "candidate":I
    .end local v1    # "prime":Ljava/math/BigInt;
    :goto_53
    return-void

    .line 183
    :cond_54
    invoke-static {p1}, Ljava/math/BigInt;->generatePrimeDefault(I)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 184
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    if-ne v2, p1, :cond_54

    goto :goto_53
.end method

.method constructor <init>(II[I)V
    .registers 6
    .param p1, "sign"    # I
    .param p2, "numberLength"    # I
    .param p3, "digits"    # [I

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 116
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 117
    return-void
.end method

.method constructor <init>(IJ)V
    .registers 8
    .param p1, "sign"    # I
    .param p2, "value"    # J

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v2, -0x2

    iput v2, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 102
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 103
    .local v0, "bigInt":Ljava/math/BigInt;
    if-gez p1, :cond_15

    const/4 v1, 0x1

    :cond_15
    invoke-virtual {v0, p2, p3, v1}, Ljava/math/BigInt;->putULongInt(JZ)V

    .line 104
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 105
    return-void
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .registers 11
    .param p1, "numBits"    # I
    .param p2, "random"    # Ljava/util/Random;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v5, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v5, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v4, -0x2

    iput v4, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v5, p0, Ljava/math/BigInteger;->hashCode:I

    .line 128
    if-gez p1, :cond_29

    .line 129
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numBits < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 131
    :cond_29
    if-nez p1, :cond_35

    .line 132
    new-array v4, v7, [I

    aput v5, v4, v5

    invoke-direct {p0, v5, v7, v4}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 144
    :goto_32
    iput-boolean v7, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 145
    return-void

    .line 134
    :cond_35
    const/4 v3, 0x1

    .line 135
    .local v3, "sign":I
    add-int/lit8 v4, p1, 0x1f

    shr-int/lit8 v2, v4, 0x5

    .line 136
    .local v2, "numberLength":I
    new-array v0, v2, [I

    .line 137
    .local v0, "digits":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3d
    if-ge v1, v2, :cond_48

    .line 138
    invoke-virtual {p2}, Ljava/util/Random;->nextInt()I

    move-result v4

    aput v4, v0, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_3d

    .line 141
    :cond_48
    add-int/lit8 v4, v2, -0x1

    aget v5, v0, v4

    neg-int v6, p1

    and-int/lit8 v6, v6, 0x1f

    ushr-int/2addr v5, v6

    aput v5, v0, v4

    .line 142
    invoke-direct {p0, v3, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    goto :goto_32
.end method

.method public constructor <init>(I[B)V
    .registers 11
    .param p1, "signum"    # I
    .param p2, "magnitude"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 269
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v6, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v6, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v7, -0x2

    iput v7, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v6, p0, Ljava/math/BigInteger;->hashCode:I

    .line 270
    if-nez p2, :cond_18

    .line 271
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "magnitude == null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 273
    :cond_18
    const/4 v7, -0x1

    if-lt p1, v7, :cond_1d

    if-le p1, v5, :cond_36

    .line 274
    :cond_1d
    new-instance v5, Ljava/lang/NumberFormatException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid signum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_36
    if-nez p1, :cond_4c

    .line 277
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3b
    if-ge v3, v4, :cond_4c

    aget-byte v2, v0, v3

    .line 278
    .local v2, "element":B
    if-eqz v2, :cond_49

    .line 279
    new-instance v5, Ljava/lang/NumberFormatException;

    const-string v6, "signum-magnitude mismatch"

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 283
    .end local v0    # "arr$":[B
    .end local v2    # "element":B
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_4c
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    .line 284
    .local v1, "bigInt":Ljava/math/BigInt;
    if-gez p1, :cond_5a

    :goto_53
    invoke-virtual {v1, p2, v5}, Ljava/math/BigInt;->putBigEndian([BZ)V

    .line 285
    invoke-direct {p0, v1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 286
    return-void

    :cond_5a
    move v5, v6

    .line 284
    goto :goto_53
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 215
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 216
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 217
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 219
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 235
    if-nez p1, :cond_17

    .line 236
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "value == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 238
    :cond_17
    const/16 v1, 0xa

    if-ne p2, v1, :cond_27

    .line 239
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 240
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putDecString(Ljava/lang/String;)V

    .line 241
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 255
    .end local v0    # "bigInt":Ljava/math/BigInt;
    :goto_26
    return-void

    .line 242
    :cond_27
    const/16 v1, 0x10

    if-ne p2, v1, :cond_37

    .line 243
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 244
    .restart local v0    # "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putHexString(Ljava/lang/String;)V

    .line 245
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    goto :goto_26

    .line 247
    .end local v0    # "bigInt":Ljava/math/BigInt;
    :cond_37
    const/4 v1, 0x2

    if-lt p2, v1, :cond_3e

    const/16 v1, 0x24

    if-le p2, v1, :cond_57

    .line 248
    :cond_3e
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid radix: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_57
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 251
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value.isEmpty()"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_65
    invoke-static {p0, p1, p2}, Ljava/math/BigInteger;->parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V

    goto :goto_26
.end method

.method constructor <init>(Ljava/math/BigInt;)V
    .registers 6
    .param p1, "bigInt"    # Ljava/math/BigInt;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v0, -0x2

    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 95
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/math/BigInt;->getNativeBIGNUM()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    .line 96
    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_1f
    invoke-direct {p0, p1}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 99
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .param p1, "value"    # [B

    .prologue
    const/4 v2, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 49
    iput-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 51
    iput-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 83
    const/4 v1, -0x2

    iput v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 92
    iput v2, p0, Ljava/math/BigInteger;->hashCode:I

    .line 300
    array-length v1, p1

    if-nez v1, :cond_18

    .line 301
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "value.length == 0"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_18
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 304
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0, p1}, Ljava/math/BigInt;->putBigEndianTwosComplement([B)V

    .line 305
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 306
    return-void
.end method

.method static inplaceAdd([III)I
    .registers 11
    .param p0, "a"    # [I
    .param p1, "aSize"    # I
    .param p2, "addend"    # I

    .prologue
    const-wide v6, 0xffffffffL

    .line 1147
    int-to-long v4, p2

    and-long v0, v4, v6

    .line 1149
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-eqz v3, :cond_1f

    if-ge v2, p1, :cond_1f

    .line 1150
    aget v3, p0, v2

    int-to-long v4, v3

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1151
    long-to-int v3, v0

    aput v3, p0, v2

    .line 1152
    const/16 v3, 0x20

    shr-long/2addr v0, v3

    .line 1149
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1154
    :cond_1f
    long-to-int v3, v0

    return v3
.end method

.method private static isSmallPrime(I)Z
    .registers 7
    .param p0, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 189
    const/4 v4, 0x2

    if-ne p0, v4, :cond_6

    .line 201
    :cond_5
    :goto_5
    return v2

    .line 192
    :cond_6
    rem-int/lit8 v4, p0, 0x2

    if-nez v4, :cond_c

    move v2, v3

    .line 193
    goto :goto_5

    .line 195
    :cond_c
    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 196
    .local v1, "max":I
    const/4 v0, 0x3

    .local v0, "i":I
    :goto_13
    if-gt v0, v1, :cond_5

    .line 197
    rem-int v4, p0, v0

    if-nez v4, :cond_1b

    move v2, v3

    .line 198
    goto :goto_5

    .line 196
    :cond_1b
    add-int/lit8 v0, v0, 0x2

    goto :goto_13
.end method

.method static multiplyByInt([I[III)I
    .registers 14
    .param p0, "res"    # [I
    .param p1, "a"    # [I
    .param p2, "aSize"    # I
    .param p3, "factor"    # I

    .prologue
    const-wide v8, 0xffffffffL

    .line 1136
    const-wide/16 v0, 0x0

    .line 1138
    .local v0, "carry":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, p2, :cond_1b

    .line 1139
    aget v3, p1, v2

    int-to-long v4, v3

    and-long/2addr v4, v8

    int-to-long v6, p3

    and-long/2addr v6, v8

    mul-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 1140
    long-to-int v3, v0

    aput v3, p0, v2

    .line 1141
    const/16 v3, 0x20

    ushr-long/2addr v0, v3

    .line 1138
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1143
    :cond_1b
    long-to-int v3, v0

    return v3
.end method

.method private static parseFromString(Ljava/math/BigInteger;Ljava/lang/String;I)V
    .registers 23
    .param p0, "bi"    # Ljava/math/BigInteger;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "radix"    # I

    .prologue
    .line 1159
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v14

    .line 1160
    .local v14, "stringLength":I
    move v9, v14

    .line 1164
    .local v9, "endChar":I
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    const/16 v19, 0x2d

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_61

    .line 1165
    const/4 v12, -0x1

    .line 1166
    .local v12, "sign":I
    const/4 v13, 0x1

    .line 1167
    .local v13, "startChar":I
    add-int/lit8 v14, v14, -0x1

    .line 1181
    :goto_1b
    sget-object v18, Ljava/math/Conversion;->digitFitInInt:[I

    aget v5, v18, p2

    .line 1182
    .local v5, "charsPerInt":I
    div-int v4, v14, v5

    .line 1183
    .local v4, "bigRadixDigitsLength":I
    rem-int v17, v14, v5

    .line 1185
    .local v17, "topChars":I
    if-eqz v17, :cond_27

    .line 1186
    add-int/lit8 v4, v4, 0x1

    .line 1188
    :cond_27
    new-array v8, v4, [I

    .line 1190
    .local v8, "digits":[I
    sget-object v18, Ljava/math/Conversion;->bigRadices:[I

    add-int/lit8 v19, p2, -0x2

    aget v2, v18, v19

    .line 1192
    .local v2, "bigRadix":I
    const/4 v6, 0x0

    .line 1193
    .local v6, "digitIndex":I
    if-nez v17, :cond_34

    move/from16 v17, v5

    .end local v17    # "topChars":I
    :cond_34
    add-int v15, v13, v17

    .line 1195
    .local v15, "substrEnd":I
    move/from16 v16, v13

    .local v16, "substrStart":I
    move v7, v6

    .end local v6    # "digitIndex":I
    .local v7, "digitIndex":I
    :goto_39
    move/from16 v0, v16

    if-ge v0, v9, :cond_64

    .line 1197
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 1198
    .local v3, "bigRadixDigit":I
    invoke-static {v8, v8, v7, v2}, Ljava/math/BigInteger;->multiplyByInt([I[III)I

    move-result v10

    .line 1199
    .local v10, "newDigit":I
    invoke-static {v8, v7, v3}, Ljava/math/BigInteger;->inplaceAdd([III)I

    move-result v18

    add-int v10, v10, v18

    .line 1200
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "digitIndex":I
    .restart local v6    # "digitIndex":I
    aput v10, v8, v7

    .line 1196
    move/from16 v16, v15

    add-int v15, v16, v5

    move v7, v6

    .end local v6    # "digitIndex":I
    .restart local v7    # "digitIndex":I
    goto :goto_39

    .line 1169
    .end local v2    # "bigRadix":I
    .end local v3    # "bigRadixDigit":I
    .end local v4    # "bigRadixDigitsLength":I
    .end local v5    # "charsPerInt":I
    .end local v7    # "digitIndex":I
    .end local v8    # "digits":[I
    .end local v10    # "newDigit":I
    .end local v12    # "sign":I
    .end local v13    # "startChar":I
    .end local v15    # "substrEnd":I
    .end local v16    # "substrStart":I
    :cond_61
    const/4 v12, 0x1

    .line 1170
    .restart local v12    # "sign":I
    const/4 v13, 0x0

    .restart local v13    # "startChar":I
    goto :goto_1b

    .line 1202
    .restart local v2    # "bigRadix":I
    .restart local v4    # "bigRadixDigitsLength":I
    .restart local v5    # "charsPerInt":I
    .restart local v7    # "digitIndex":I
    .restart local v8    # "digits":[I
    .restart local v15    # "substrEnd":I
    .restart local v16    # "substrStart":I
    :cond_64
    move v11, v7

    .line 1203
    .local v11, "numberLength":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11, v8}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 1204
    return-void
.end method

.method public static probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;
    .registers 4
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 1062
    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    return-object v0
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
    .line 1237
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1238
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 1239
    .local v0, "bigInt":Ljava/math/BigInt;
    iget-object v2, p0, Ljava/math/BigInteger;->magnitude:[B

    iget v1, p0, Ljava/math/BigInteger;->signum:I

    if-gez v1, :cond_16

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInt;->putBigEndian([BZ)V

    .line 1240
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 1241
    return-void

    .line 1239
    :cond_16
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private setBigInt(Ljava/math/BigInt;)V
    .registers 3
    .param p1, "bigInt"    # Ljava/math/BigInt;

    .prologue
    .line 329
    iput-object p1, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    .line 331
    return-void
.end method

.method private setJavaRepresentation(II[I)V
    .registers 6
    .param p1, "sign"    # I
    .param p2, "numberLength"    # I
    .param p3, "digits"    # [I

    .prologue
    .line 335
    :cond_0
    if-lez p2, :cond_8

    add-int/lit8 p2, p2, -0x1

    aget v1, p3, p2

    if-eqz v1, :cond_0

    .line 339
    :cond_8
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "numberLength":I
    .local v0, "numberLength":I
    aget v1, p3, p2

    if-nez v1, :cond_f

    .line 340
    const/4 p1, 0x0

    .line 342
    :cond_f
    iput p1, p0, Ljava/math/BigInteger;->sign:I

    .line 343
    iput-object p3, p0, Ljava/math/BigInteger;->digits:[I

    .line 344
    iput v0, p0, Ljava/math/BigInteger;->numberLength:I

    .line 345
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/math/BigInteger;->javaIsValid:Z

    .line 346
    return-void
.end method

.method private twosComplement()[B
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 1072
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 1073
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-nez v12, :cond_e

    .line 1074
    new-array v1, v14, [B

    aput-byte v13, v1, v13

    .line 1131
    :cond_d
    return-object v1

    .line 1076
    :cond_e
    move-object v11, p0

    .line 1077
    .local v11, "temp":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 1078
    .local v0, "bitLen":I
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v10

    .line 1079
    .local v10, "iThis":I
    shr-int/lit8 v12, v0, 0x3

    add-int/lit8 v3, v12, 0x1

    .line 1082
    .local v3, "bytesLen":I
    new-array v1, v3, [B

    .line 1083
    .local v1, "bytes":[B
    const/4 v6, 0x0

    .line 1085
    .local v6, "firstByteNumber":I
    const/4 v2, 0x4

    .line 1088
    .local v2, "bytesInInteger":I
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    shl-int/lit8 v12, v12, 0x2

    sub-int v12, v3, v12

    if-ne v12, v14, :cond_55

    .line 1089
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_53

    const/4 v12, -0x1

    :goto_2c
    int-to-byte v12, v12

    aput-byte v12, v1, v13

    .line 1090
    const/4 v8, 0x4

    .line 1091
    .local v8, "highBytes":I
    add-int/lit8 v6, v6, 0x1

    .line 1097
    :goto_32
    move v5, v10

    .line 1098
    .local v5, "digitIndex":I
    shl-int/lit8 v12, v10, 0x2

    sub-int/2addr v3, v12

    .line 1100
    iget v12, p0, Ljava/math/BigInteger;->sign:I

    if-gez v12, :cond_79

    .line 1101
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    neg-int v4, v12

    .line 1102
    .local v4, "digit":I
    add-int/lit8 v5, v5, 0x1

    .line 1103
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_46

    .line 1104
    move v2, v8

    .line 1106
    :cond_46
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_47
    if-ge v9, v2, :cond_5d

    .line 1107
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1106
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_47

    .end local v4    # "digit":I
    .end local v5    # "digitIndex":I
    .end local v8    # "highBytes":I
    .end local v9    # "i":I
    :cond_53
    move v12, v13

    .line 1089
    goto :goto_2c

    .line 1093
    :cond_55
    and-int/lit8 v7, v3, 0x3

    .line 1094
    .local v7, "hB":I
    if-nez v7, :cond_5b

    const/4 v8, 0x4

    .restart local v8    # "highBytes":I
    :goto_5a
    goto :goto_32

    .end local v8    # "highBytes":I
    :cond_5b
    move v8, v7

    goto :goto_5a

    .line 1109
    .end local v7    # "hB":I
    .restart local v4    # "digit":I
    .restart local v5    # "digitIndex":I
    .restart local v8    # "highBytes":I
    .restart local v9    # "i":I
    :cond_5d
    if-le v3, v6, :cond_d

    .line 1110
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v12, v12, v5

    xor-int/lit8 v4, v12, -0x1

    .line 1111
    add-int/lit8 v5, v5, 0x1

    .line 1112
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_6c

    .line 1113
    move v2, v8

    .line 1115
    :cond_6c
    const/4 v9, 0x0

    :goto_6d
    if-ge v9, v2, :cond_5d

    .line 1116
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1115
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_6d

    .line 1120
    .end local v4    # "digit":I
    .end local v9    # "i":I
    :cond_79
    if-le v3, v6, :cond_d

    .line 1121
    iget-object v12, v11, Ljava/math/BigInteger;->digits:[I

    aget v4, v12, v5

    .line 1122
    .restart local v4    # "digit":I
    add-int/lit8 v5, v5, 0x1

    .line 1123
    iget v12, p0, Ljava/math/BigInteger;->numberLength:I

    if-ne v5, v12, :cond_86

    .line 1124
    move v2, v8

    .line 1126
    :cond_86
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_87
    if-ge v9, v2, :cond_79

    .line 1127
    add-int/lit8 v3, v3, -0x1

    int-to-byte v12, v4

    aput-byte v12, v1, v3

    .line 1126
    add-int/lit8 v9, v9, 0x1

    shr-int/lit8 v4, v4, 0x8

    goto :goto_87
.end method

.method public static valueOf(J)Ljava/math/BigInteger;
    .registers 6
    .param p0, "value"    # J

    .prologue
    .line 365
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_17

    .line 366
    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-eqz v0, :cond_14

    .line 367
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, -0x1

    neg-long v2, p0

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigInteger;-><init>(IJ)V

    .line 373
    :goto_13
    return-object v0

    .line 369
    :cond_14
    sget-object v0, Ljava/math/BigInteger;->MINUS_ONE:Ljava/math/BigInteger;

    goto :goto_13

    .line 370
    :cond_17
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-gez v0, :cond_25

    .line 371
    sget-object v0, Ljava/math/BigInteger;->SMALL_VALUES:[Ljava/math/BigInteger;

    long-to-int v1, p0

    aget-object v0, v0, v1

    goto :goto_13

    .line 373
    :cond_25
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Ljava/math/BigInteger;-><init>(IJ)V

    goto :goto_13
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1248
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 1249
    .local v0, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v1

    iput v1, p0, Ljava/math/BigInteger;->signum:I

    .line 1250
    invoke-virtual {v0}, Ljava/math/BigInt;->bigEndianMagnitude()[B

    move-result-object v1

    iput-object v1, p0, Ljava/math/BigInteger;->magnitude:[B

    .line 1251
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1252
    return-void
.end method


# virtual methods
.method public abs()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 390
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 391
    .local v1, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-ltz v2, :cond_b

    .line 396
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_a
    return-object p0

    .line 394
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_b
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 395
    .local v0, "a":Ljava/math/BigInt;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/math/BigInt;->setSign(I)V

    .line 396
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "this":Ljava/math/BigInteger;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_a
.end method

.method public add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 417
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 418
    .local v0, "lhs":Ljava/math/BigInt;
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 419
    .local v1, "rhs":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_f

    .line 425
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_e
    return-object p0

    .line 422
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_f
    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_17

    move-object p0, p1

    .line 423
    goto :goto_e

    .line 425
    :cond_17
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "this":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Ljava/math/BigInt;->addition(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_e
.end method

.method public and(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 687
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 688
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 689
    invoke-static {p0, p1}, Ljava/math/Logical;->and(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public andNot(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 734
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 735
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 736
    invoke-static {p0, p1}, Ljava/math/Logical;->andNot(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bitCount()I
    .registers 2

    .prologue
    .line 661
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 662
    invoke-static {p0}, Ljava/math/BitLevel;->bitCount(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public bitLength()I
    .registers 2

    .prologue
    .line 520
    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v0, :cond_d

    .line 521
    invoke-static {p0}, Ljava/math/BitLevel;->bitLength(Ljava/math/BigInteger;)I

    move-result v0

    .line 523
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->bitLength()I

    move-result v0

    goto :goto_c
.end method

.method public clearBit(I)Ljava/math/BigInteger;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 603
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 604
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 605
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 607
    .end local p0    # "this":Ljava/math/BigInteger;
    :cond_d
    return-object p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 803
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/math/BigInt;->cmp(Ljava/math/BigInt;Ljava/math/BigInt;)I

    move-result v0

    return v0
.end method

.method copy()Ljava/math/BigInteger;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1225
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 1226
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    new-array v0, v1, [I

    .line 1227
    .local v0, "copyDigits":[I
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1228
    new-instance v1, Ljava/math/BigInteger;

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    iget v3, p0, Ljava/math/BigInteger;->numberLength:I

    invoke-direct {v1, v2, v3, v0}, Ljava/math/BigInteger;-><init>(II[I)V

    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "divisor"    # Ljava/math/BigInteger;

    .prologue
    .line 937
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 938
    .local v0, "quotient":Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 939
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 8
    .param p1, "divisor"    # Ljava/math/BigInteger;

    .prologue
    .line 921
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 922
    .local v0, "divisorBigInt":Ljava/math/BigInt;
    new-instance v1, Ljava/math/BigInt;

    invoke-direct {v1}, Ljava/math/BigInt;-><init>()V

    .line 923
    .local v1, "quotient":Ljava/math/BigInt;
    new-instance v2, Ljava/math/BigInt;

    invoke-direct {v2}, Ljava/math/BigInt;-><init>()V

    .line 924
    .local v2, "remainder":Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v3

    invoke-static {v3, v0, v1, v2}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 925
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    aput-object v5, v3, v4

    return-object v3
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 791
    invoke-static {p0}, Ljava/math/Conversion;->bigInteger2Double(Ljava/math/BigInteger;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "x"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 841
    if-ne p0, p1, :cond_5

    .line 847
    .end local p1    # "x":Ljava/lang/Object;
    :cond_4
    :goto_4
    return v0

    .line 844
    .restart local p1    # "x":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, Ljava/math/BigInteger;

    if-eqz v2, :cond_13

    .line 845
    check-cast p1, Ljava/math/BigInteger;

    .end local p1    # "x":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    .restart local p1    # "x":Ljava/lang/Object;
    :cond_13
    move v0, v1

    .line 847
    goto :goto_4
.end method

.method public flipBit(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # I

    .prologue
    .line 623
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 624
    if-gez p1, :cond_1e

    .line 625
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 627
    :cond_1e
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 779
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 886
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->gcd(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method getBigInt()Ljava/math/BigInt;
    .registers 4

    .prologue
    .line 313
    iget-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v1, :cond_7

    .line 314
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 324
    :goto_6
    return-object v0

    .line 317
    :cond_7
    monitor-enter p0

    .line 318
    :try_start_8
    iget-boolean v1, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v1, :cond_13

    .line 319
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    monitor-exit p0

    goto :goto_6

    .line 325
    :catchall_10
    move-exception v1

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_10

    throw v1

    .line 321
    :cond_13
    :try_start_13
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 322
    .local v0, "bigInt":Ljava/math/BigInt;
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-gez v1, :cond_27

    const/4 v1, 0x1

    :goto_1f
    invoke-virtual {v0, v2, v1}, Ljava/math/BigInt;->putLittleEndianInts([IZ)V

    .line 323
    invoke-direct {p0, v0}, Ljava/math/BigInteger;->setBigInt(Ljava/math/BigInt;)V

    .line 324
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_10

    goto :goto_6

    .line 322
    :cond_27
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method getFirstNonzeroDigit()I
    .registers 4

    .prologue
    .line 1207
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    .line 1209
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_f

    .line 1210
    const/4 v0, -0x1

    .line 1216
    .local v0, "i":I
    :cond_a
    iput v0, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    .line 1218
    .end local v0    # "i":I
    :cond_c
    iget v1, p0, Ljava/math/BigInteger;->firstNonzeroDigit:I

    return v1

    .line 1212
    :cond_f
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10
    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    aget v1, v1, v0

    if-nez v1, :cond_a

    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method

.method public getLowestSetBit()I
    .registers 4

    .prologue
    .line 639
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 640
    iget v1, p0, Ljava/math/BigInteger;->sign:I

    if-nez v1, :cond_9

    .line 641
    const/4 v1, -0x1

    .line 645
    :goto_8
    return v1

    .line 644
    :cond_9
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v0

    .line 645
    .local v0, "i":I
    shl-int/lit8 v1, v0, 0x5

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_8
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 828
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    if-eqz v1, :cond_7

    .line 829
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 836
    :goto_6
    return v1

    .line 831
    :cond_7
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 832
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget v1, p0, Ljava/math/BigInteger;->numberLength:I

    if-ge v0, v1, :cond_1d

    .line 833
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    mul-int/lit8 v1, v1, 0x21

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 835
    :cond_1d
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    iget v2, p0, Ljava/math/BigInteger;->sign:I

    mul-int/2addr v1, v2

    iput v1, p0, Ljava/math/BigInteger;->hashCode:I

    .line 836
    iget v1, p0, Ljava/math/BigInteger;->hashCode:I

    goto :goto_6
.end method

.method public intValue()I
    .registers 4

    .prologue
    .line 746
    iget-boolean v0, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 747
    iget-object v0, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0}, Ljava/math/BigInt;->longInt()J

    move-result-wide v0

    long-to-int v0, v0

    .line 750
    :goto_14
    return v0

    .line 749
    :cond_15
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 750
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    iget-object v1, p0, Ljava/math/BigInteger;->digits:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    mul-int/2addr v0, v1

    goto :goto_14
.end method

.method public isProbablePrime(I)Z
    .registers 3
    .param p1, "certainty"    # I

    .prologue
    .line 1031
    if-gtz p1, :cond_4

    .line 1032
    const/4 v0, 0x1

    .line 1034
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInt;->isPrime(I)Z

    move-result v0

    goto :goto_3
.end method

.method public longValue()J
    .registers 9

    .prologue
    const-wide v6, 0xffffffffL

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 760
    iget-boolean v2, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v2, :cond_1c

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Ljava/math/BigInt;->twosCompFitsIntoBytes(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 761
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->longInt()J

    move-result-wide v2

    .line 767
    :goto_1b
    return-wide v2

    .line 763
    :cond_1c
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 764
    iget v2, p0, Ljava/math/BigInteger;->numberLength:I

    if-le v2, v4, :cond_38

    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v4

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    iget-object v4, p0, Ljava/math/BigInteger;->digits:[I

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v6

    or-long v0, v2, v4

    .line 767
    .local v0, "value":J
    :goto_33
    iget v2, p0, Ljava/math/BigInteger;->sign:I

    int-to-long v2, v2

    mul-long/2addr v2, v0

    goto :goto_1b

    .line 764
    .end local v0    # "value":J
    :cond_38
    iget-object v2, p0, Ljava/math/BigInteger;->digits:[I

    aget v2, v2, v5

    int-to-long v2, v2

    and-long v0, v2, v6

    goto :goto_33
.end method

.method public max(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 823
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_7
    return-object p0

    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_8
    move-object p0, p1

    goto :goto_7
.end method

.method public min(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 4
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 813
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_7
    return-object p0

    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_8
    move-object p0, p1

    goto :goto_7
.end method

.method public mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "m"    # Ljava/math/BigInteger;

    .prologue
    .line 1013
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_e

    .line 1014
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "m.signum() <= 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1016
    :cond_e
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->modulus(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "m"    # Ljava/math/BigInteger;

    .prologue
    .line 969
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gtz v0, :cond_e

    .line 970
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "modulus not positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 972
    :cond_e
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->modInverse(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 9
    .param p1, "exponent"    # Ljava/math/BigInteger;
    .param p2, "modulus"    # Ljava/math/BigInteger;

    .prologue
    .line 989
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-gtz v2, :cond_e

    .line 990
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "modulus.signum() <= 0"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 992
    :cond_e
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    .line 993
    .local v1, "exponentSignum":I
    if-nez v1, :cond_1b

    .line 994
    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 997
    :goto_1a
    return-object v2

    .line 996
    :cond_1b
    if-gez v1, :cond_37

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 997
    .local v0, "base":Ljava/math/BigInteger;
    :goto_21
    new-instance v2, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v3

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v4

    invoke-virtual {p2}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/math/BigInt;->modExp(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_1a

    .end local v0    # "base":Ljava/math/BigInteger;
    :cond_37
    move-object v0, p0

    .line 996
    goto :goto_21
.end method

.method public multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 895
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/math/BigInt;->product(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method public negate()Ljava/math/BigInteger;
    .registers 5

    .prologue
    .line 403
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 404
    .local v1, "bigInt":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    .line 405
    .local v2, "sign":I
    if-nez v2, :cond_b

    .line 410
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_a
    return-object p0

    .line 408
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_b
    invoke-virtual {v1}, Ljava/math/BigInt;->copy()Ljava/math/BigInt;

    move-result-object v0

    .line 409
    .local v0, "a":Ljava/math/BigInt;
    neg-int v3, v2

    invoke-virtual {v0, v3}, Ljava/math/BigInt;->setSign(I)V

    .line 410
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "this":Ljava/math/BigInteger;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_a
.end method

.method public nextProbablePrime()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 1046
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    if-gez v0, :cond_c

    .line 1047
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "sign < 0"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :cond_c
    invoke-static {p0}, Ljava/math/Primality;->nextProbablePrime(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public not()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 673
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 674
    invoke-static {p0}, Ljava/math/Logical;->not(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public or(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 702
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 703
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 704
    invoke-static {p0, p1}, Ljava/math/Logical;->or(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "exp"    # I

    .prologue
    .line 904
    if-gez p1, :cond_1b

    .line 905
    new-instance v0, Ljava/lang/ArithmeticException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exp < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_1b
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/math/BigInt;->exp(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v0
.end method

.method prepareJavaRepresentation()V
    .registers 5

    .prologue
    .line 349
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v2, :cond_5

    .line 361
    :goto_4
    return-void

    .line 353
    :cond_5
    monitor-enter p0

    .line 354
    :try_start_6
    iget-boolean v2, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v2, :cond_f

    .line 355
    monitor-exit p0

    goto :goto_4

    .line 360
    :catchall_c
    move-exception v2

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_6 .. :try_end_e} :catchall_c

    throw v2

    .line 357
    :cond_f
    :try_start_f
    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->sign()I

    move-result v1

    .line 358
    .local v1, "sign":I
    if-eqz v1, :cond_23

    iget-object v2, p0, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v2}, Ljava/math/BigInt;->littleEndianIntsMagnitude()[I

    move-result-object v0

    .line 359
    .local v0, "digits":[I
    :goto_1d
    array-length v2, v0

    invoke-direct {p0, v1, v2, v0}, Ljava/math/BigInteger;->setJavaRepresentation(II[I)V

    .line 360
    monitor-exit p0

    goto :goto_4

    .line 358
    .end local v0    # "digits":[I
    :cond_23
    const/4 v2, 0x1

    new-array v0, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2
    :try_end_2a
    .catchall {:try_start_f .. :try_end_2a} :catchall_c

    goto :goto_1d
.end method

.method public remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 6
    .param p1, "divisor"    # Ljava/math/BigInteger;

    .prologue
    .line 952
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 953
    .local v0, "remainder":Ljava/math/BigInt;
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Ljava/math/BigInt;->division(Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;Ljava/math/BigInt;)V

    .line 954
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    return-object v1
.end method

.method public setBit(I)Ljava/math/BigInteger;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 583
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 584
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 585
    invoke-static {p0, p1}, Ljava/math/BitLevel;->flipBit(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    .line 587
    .end local p0    # "this":Ljava/math/BigInteger;
    :cond_d
    return-object p0
.end method

.method public shiftLeft(I)Ljava/math/BigInteger;
    .registers 5
    .param p1, "n"    # I

    .prologue
    .line 483
    if-nez p1, :cond_3

    .line 496
    .end local p0    # "this":Ljava/math/BigInteger;
    :cond_2
    :goto_2
    return-object p0

    .line 486
    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_3
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    .line 487
    .local v0, "sign":I
    if-eqz v0, :cond_2

    .line 490
    if-gtz v0, :cond_d

    if-ltz p1, :cond_1c

    .line 491
    :cond_d
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/math/BigInt;->shift(Ljava/math/BigInt;I)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    move-object p0, v1

    goto :goto_2

    .line 496
    :cond_1c
    neg-int v1, p1

    invoke-static {p0, v1}, Ljava/math/BitLevel;->shiftRight(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_2
.end method

.method shiftLeftOneBit()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 501
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_7

    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_6
    return-object p0

    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_7
    invoke-static {p0}, Ljava/math/BitLevel;->shiftLeftOneBit(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_6
.end method

.method public shiftRight(I)Ljava/math/BigInteger;
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 466
    neg-int v0, p1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public signum()I
    .registers 2

    .prologue
    .line 447
    iget-boolean v0, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-eqz v0, :cond_7

    .line 448
    iget v0, p0, Ljava/math/BigInteger;->sign:I

    .line 450
    :goto_6
    return v0

    :cond_7
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->sign()I

    move-result v0

    goto :goto_6
.end method

.method public subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 432
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    .line 433
    .local v0, "lhs":Ljava/math/BigInt;
    invoke-virtual {p1}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v1

    .line 434
    .local v1, "rhs":Ljava/math/BigInt;
    invoke-virtual {v1}, Ljava/math/BigInt;->sign()I

    move-result v2

    if-nez v2, :cond_f

    .line 437
    .end local p0    # "this":Ljava/math/BigInteger;
    :goto_e
    return-object p0

    .restart local p0    # "this":Ljava/math/BigInteger;
    :cond_f
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "this":Ljava/math/BigInteger;
    invoke-static {v0, v1}, Ljava/math/BigInt;->subtraction(Ljava/math/BigInt;Ljava/math/BigInt;)Ljava/math/BigInt;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    goto :goto_e
.end method

.method public testBit(I)Z
    .registers 9
    .param p1, "n"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 537
    if-gez p1, :cond_1d

    .line 538
    new-instance v4, Ljava/lang/ArithmeticException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "n < 0: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 540
    :cond_1d
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v3

    .line 541
    .local v3, "sign":I
    if-lez v3, :cond_34

    iget-boolean v6, p0, Ljava/math/BigInteger;->nativeIsValid:Z

    if-eqz v6, :cond_34

    iget-boolean v6, p0, Ljava/math/BigInteger;->javaIsValid:Z

    if-nez v6, :cond_34

    .line 542
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/math/BigInt;->isBitSet(I)Z

    move-result v4

    .line 567
    :cond_33
    :goto_33
    return v4

    .line 547
    :cond_34
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 548
    if-nez p1, :cond_43

    .line 549
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v6, v6, v5

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_33

    move v4, v5

    goto :goto_33

    .line 551
    :cond_43
    shr-int/lit8 v2, p1, 0x5

    .line 552
    .local v2, "intCount":I
    iget v6, p0, Ljava/math/BigInteger;->numberLength:I

    if-lt v2, v6, :cond_4d

    .line 553
    if-ltz v3, :cond_33

    move v4, v5

    goto :goto_33

    .line 555
    :cond_4d
    iget-object v6, p0, Ljava/math/BigInteger;->digits:[I

    aget v0, v6, v2

    .line 556
    .local v0, "digit":I
    and-int/lit8 v6, p1, 0x1f

    shl-int p1, v4, v6

    .line 557
    if-gez v3, :cond_62

    .line 558
    invoke-virtual {p0}, Ljava/math/BigInteger;->getFirstNonzeroDigit()I

    move-result v1

    .line 559
    .local v1, "firstNonZeroDigit":I
    if-ge v2, v1, :cond_5f

    move v4, v5

    .line 560
    goto :goto_33

    .line 561
    :cond_5f
    if-ne v1, v2, :cond_68

    .line 562
    neg-int v0, v0

    .line 567
    .end local v1    # "firstNonZeroDigit":I
    :cond_62
    :goto_62
    and-int v6, v0, p1

    if-nez v6, :cond_33

    move v4, v5

    goto :goto_33

    .line 564
    .restart local v1    # "firstNonZeroDigit":I
    :cond_68
    xor-int/lit8 v0, v0, -0x1

    goto :goto_62
.end method

.method public toByteArray()[B
    .registers 2

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/math/BigInteger;->twosComplement()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 856
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .registers 3
    .param p1, "radix"    # I

    .prologue
    .line 869
    const/16 v0, 0xa

    if-ne p1, v0, :cond_d

    .line 870
    invoke-virtual {p0}, Ljava/math/BigInteger;->getBigInt()Ljava/math/BigInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInt;->decString()Ljava/lang/String;

    move-result-object v0

    .line 873
    :goto_c
    return-object v0

    .line 872
    :cond_d
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 873
    invoke-static {p0, p1}, Ljava/math/Conversion;->bigInteger2String(Ljava/math/BigInteger;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3
    .param p1, "value"    # Ljava/math/BigInteger;

    .prologue
    .line 717
    invoke-virtual {p0}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 718
    invoke-virtual {p1}, Ljava/math/BigInteger;->prepareJavaRepresentation()V

    .line 719
    invoke-static {p0, p1}, Ljava/math/Logical;->xor(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
