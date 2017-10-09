.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field private static final NTZ_TABLE:[B

.field public static final SIZE:I = 0x20

.field private static final SMALL_VALUES:[Ljava/lang/Integer;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 65
    const/16 v1, 0x40

    new-array v1, v1, [B

    fill-array-data v1, :array_2c

    sput-object v1, Ljava/lang/Integer;->NTZ_TABLE:[B

    .line 76
    const-class v1, [I

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 748
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Integer;

    sput-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    .line 751
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_19
    const/16 v1, 0x80

    if-ge v0, v1, :cond_2b

    .line 752
    sget-object v1, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    .line 751
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 754
    :cond_2b
    return-void

    .line 65
    :array_2c
    .array-data 1
        0x20t
        0x0t
        0x1t
        0xct
        0x2t
        0x6t
        -0x1t
        0xdt
        0x3t
        -0x1t
        0x7t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0xet
        0xat
        0x4t
        -0x1t
        -0x1t
        0x8t
        -0x1t
        -0x1t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x15t
        0x1bt
        0xft
        0x1ft
        0xbt
        0x5t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x9t
        -0x1t
        -0x1t
        0x18t
        -0x1t
        -0x1t
        0x14t
        0x1at
        0x1et
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x17t
        -0x1t
        0x13t
        0x1dt
        -0x1t
        0x16t
        0x12t
        0x1ct
        0x11t
        0x10t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "value"    # I

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 89
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 103
    return-void
.end method

.method public static bitCount(I)I
    .registers 4
    .param p0, "i"    # I

    .prologue
    const v2, 0x33333333

    .line 642
    shr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 643
    and-int v0, p0, v2

    shr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    add-int p0, v0, v1

    .line 644
    shr-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 645
    shr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 646
    shr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 647
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static compare(II)I
    .registers 3
    .param p0, "lhs"    # I
    .param p1, "rhs"    # I

    .prologue
    .line 134
    if-ge p0, p1, :cond_4

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_4
    if-ne p0, p1, :cond_8

    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 10
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 156
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 157
    .local v3, "length":I
    if-nez v3, :cond_d

    .line 158
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 160
    :cond_d
    const/4 v2, 0x0

    .line 161
    .local v2, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 162
    .local v1, "firstDigit":C
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_24

    move v4, v6

    .line 163
    .local v4, "negative":Z
    :goto_17
    if-nez v4, :cond_1d

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_2c

    .line 164
    :cond_1d
    if-ne v3, v6, :cond_26

    .line 165
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .end local v4    # "negative":Z
    :cond_24
    move v4, v7

    .line 162
    goto :goto_17

    .line 167
    .restart local v4    # "negative":Z
    :cond_26
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 170
    :cond_2c
    const/16 v0, 0xa

    .line 171
    .local v0, "base":I
    const/16 v6, 0x30

    if-ne v1, v6, :cond_5e

    .line 172
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_3b

    .line 173
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 191
    :goto_3a
    return-object v6

    .line 175
    :cond_3b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x78

    if-eq v1, v6, :cond_47

    const/16 v6, 0x58

    if-ne v1, v6, :cond_5b

    .line 176
    :cond_47
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_50

    .line 177
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 179
    :cond_50
    const/16 v0, 0x10

    .line 190
    :cond_52
    :goto_52
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v5

    .line 191
    .local v5, "result":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_3a

    .line 181
    .end local v5    # "result":I
    :cond_5b
    const/16 v0, 0x8

    goto :goto_52

    .line 183
    :cond_5e
    const/16 v6, 0x23

    if-ne v1, v6, :cond_52

    .line 184
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6b

    .line 185
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 187
    :cond_6b
    const/16 v0, 0x10

    goto :goto_52
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 231
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 241
    :cond_9
    :goto_9
    return-object v2

    .line 234
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 239
    :try_start_10
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_9

    .line 240
    :catch_15
    move-exception v0

    .line 241
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 260
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 261
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 270
    :goto_c
    return-object v2

    .line 263
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_18

    .line 265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    .line 268
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 269
    :catch_1d
    move-exception v0

    .line 270
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Integer;

    .prologue
    .line 289
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 299
    .end local p1    # "defaultValue":Ljava/lang/Integer;
    :cond_8
    :goto_8
    return-object p1

    .line 292
    .restart local p1    # "defaultValue":Ljava/lang/Integer;
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 297
    :try_start_f
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object p1

    goto :goto_8

    .line 298
    :catch_14
    move-exception v0

    .line 299
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public static highestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 561
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 562
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 563
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 564
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 565
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 566
    ushr-int/lit8 v0, p0, 0x1

    sub-int v0, p0, v0

    return v0
.end method

.method private static invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid int: \""

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

.method public static lowestOneBit(I)I
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 581
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 595
    if-gtz p0, :cond_9

    .line 596
    xor-int/lit8 v1, p0, -0x1

    shr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v1, v1, 0x20

    .line 615
    :goto_8
    return v1

    .line 598
    :cond_9
    const/4 v0, 0x1

    .line 599
    .local v0, "n":I
    shr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_12

    .line 600
    add-int/lit8 v0, v0, 0x10

    .line 601
    shl-int/lit8 p0, p0, 0x10

    .line 603
    :cond_12
    shr-int/lit8 v1, p0, 0x18

    if-nez v1, :cond_1a

    .line 604
    add-int/lit8 v0, v0, 0x8

    .line 605
    shl-int/lit8 p0, p0, 0x8

    .line 607
    :cond_1a
    shr-int/lit8 v1, p0, 0x1c

    if-nez v1, :cond_22

    .line 608
    add-int/lit8 v0, v0, 0x4

    .line 609
    shl-int/lit8 p0, p0, 0x4

    .line 611
    :cond_22
    shr-int/lit8 v1, p0, 0x1e

    if-nez v1, :cond_2a

    .line 612
    add-int/lit8 v0, v0, 0x2

    .line 613
    shl-int/lit8 p0, p0, 0x2

    .line 615
    :cond_2a
    ushr-int/lit8 v1, p0, 0x1f

    sub-int v1, v0, v1

    goto :goto_8
.end method

.method public static numberOfTrailingZeros(I)I
    .registers 4
    .param p0, "i"    # I

    .prologue
    .line 628
    sget-object v0, Ljava/lang/Integer;->NTZ_TABLE:[B

    neg-int v1, p0

    and-int/2addr v1, p0

    const v2, 0x450fbaf

    mul-int/2addr v1, v2

    ushr-int/lit8 v1, v1, 0x1a

    aget-byte v0, v0, v1

    return v0
.end method

.method private static parse(Ljava/lang/String;IIZ)I
    .registers 11
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 404
    const/high16 v6, -0x80000000

    div-int v2, v6, p2

    .line 405
    .local v2, "max":I
    const/4 v5, 0x0

    .line 406
    .local v5, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "length":I
    move v4, p1

    .line 407
    .end local p1    # "offset":I
    .local v4, "offset":I
    :goto_a
    if-ge v4, v1, :cond_33

    .line 408
    add-int/lit8 p1, v4, 0x1

    .end local v4    # "offset":I
    .restart local p1    # "offset":I
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 409
    .local v0, "digit":I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_1e

    .line 410
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 412
    :cond_1e
    if-le v2, v5, :cond_25

    .line 413
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 415
    :cond_25
    mul-int v6, v5, p2

    sub-int v3, v6, v0

    .line 416
    .local v3, "next":I
    if-le v3, v5, :cond_30

    .line 417
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 419
    :cond_30
    move v5, v3

    move v4, p1

    .line 420
    .end local p1    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_a

    .line 421
    .end local v0    # "digit":I
    .end local v3    # "next":I
    :cond_33
    if-nez p3, :cond_3d

    .line 422
    neg-int v5, v5

    .line 423
    if-gez v5, :cond_3d

    .line 424
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v6

    throw v6

    .line 427
    :cond_3d
    return v5
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 334
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 8
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    const/4 v4, 0x2

    if-lt p1, v4, :cond_b

    const/16 v4, 0x24

    if-le p1, v4, :cond_24

    .line 355
    :cond_b
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid radix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 357
    :cond_24
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 358
    :cond_2c
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 361
    :cond_31
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 362
    .local v0, "firstChar":C
    if-eq v0, v5, :cond_3b

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_47

    :cond_3b
    move v1, v3

    .line 363
    .local v1, "firstDigitIndex":I
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_49

    .line 364
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .end local v1    # "firstDigitIndex":I
    :cond_47
    move v1, v2

    .line 362
    goto :goto_3c

    .line 367
    .restart local v1    # "firstDigitIndex":I
    :cond_49
    if-ne v0, v5, :cond_50

    :goto_4b
    invoke-static {p0, v1, p1, v3}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v2

    return v2

    :cond_50
    move v3, v2

    goto :goto_4b
.end method

.method public static parsePositiveInt(Ljava/lang/String;)I
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 378
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parsePositiveInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parsePositiveInt(Ljava/lang/String;I)I
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 394
    const/4 v0, 0x2

    if-lt p1, v0, :cond_8

    const/16 v0, 0x24

    if-le p1, v0, :cond_21

    .line 395
    :cond_8
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid radix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    :cond_21
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    .line 398
    :cond_29
    invoke-static {p0}, Ljava/lang/Integer;->invalidInt(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    .line 400
    :cond_2e
    invoke-static {p0, v1, p1, v1}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v0

    return v0
.end method

.method public static reverse(I)I
    .registers 6
    .param p0, "i"    # I

    .prologue
    const v1, 0x55555555

    const v4, 0x33333333

    const v3, 0xf0f0f0f

    const v2, 0xff00ff

    .line 708
    ushr-int/lit8 v0, p0, 0x1

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x1

    or-int p0, v0, v1

    .line 709
    ushr-int/lit8 v0, p0, 0x2

    and-int/2addr v0, v4

    and-int v1, p0, v4

    shl-int/lit8 v1, v1, 0x2

    or-int p0, v0, v1

    .line 710
    ushr-int/lit8 v0, p0, 0x4

    and-int/2addr v0, v3

    and-int v1, p0, v3

    shl-int/lit8 v1, v1, 0x4

    or-int p0, v0, v1

    .line 711
    ushr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v2

    and-int v1, p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int p0, v0, v1

    .line 712
    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static reverseBytes(I)I
    .registers 3
    .param p0, "i"    # I

    .prologue
    const v1, 0xff00ff

    .line 693
    ushr-int/lit8 v0, p0, 0x8

    and-int/2addr v0, v1

    and-int/2addr v1, p0

    shl-int/lit8 v1, v1, 0x8

    or-int p0, v0, v1

    .line 694
    ushr-int/lit8 v0, p0, 0x10

    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateLeft(II)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 663
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static rotateRight(II)I
    .registers 4
    .param p0, "i"    # I
    .param p1, "distance"    # I

    .prologue
    .line 679
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static signum(I)I
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 726
    shr-int/lit8 v0, p0, 0x1f

    neg-int v1, p0

    ushr-int/lit8 v1, v1, 0x1f

    or-int/2addr v0, v1

    return v0
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 444
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToBinaryString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 457
    invoke-static {p0, v0, v0}, Ljava/lang/IntegralToString;->intToHexString(IZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 469
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToOctalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 487
    invoke-static {p0}, Ljava/lang/IntegralToString;->intToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .registers 3
    .param p0, "i"    # I
    .param p1, "radix"    # I

    .prologue
    .line 510
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->intToString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 742
    const/16 v0, 0x80

    if-ge p0, v0, :cond_8

    const/16 v0, -0x80

    if-ge p0, v0, :cond_e

    :cond_8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Integer;->SMALL_VALUES:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 525
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .registers 4
    .param p1, "object"    # Ljava/lang/Integer;

    .prologue
    .line 124
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 196
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 211
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Ljava/lang/Integer;->value:I

    iget v1, p0, Ljava/lang/Integer;->value:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 315
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 320
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 432
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 474
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
