.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation build Ljava/lang/FindBugsSuppressWarnings;
    value = {
        "DM_NUMBER_CTOR"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field private static final SMALL_VALUES:[Ljava/lang/Long;

.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    .line 56
    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 768
    const/16 v1, 0x100

    new-array v1, v1, [Ljava/lang/Long;

    sput-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    .line 771
    const/16 v0, -0x80

    .local v0, "i":I
    :goto_10
    const/16 v1, 0x80

    if-ge v0, v1, :cond_23

    .line 772
    sget-object v1, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    add-int/lit16 v2, v0, 0x80

    new-instance v3, Ljava/lang/Long;

    int-to-long v4, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/Long;-><init>(J)V

    aput-object v3, v1, v2

    .line 771
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 774
    :cond_23
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 76
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 90
    return-void
.end method

.method public static bitCount(J)I
    .registers 12
    .param p0, "v"    # J

    .prologue
    const-wide v8, 0x3333333333333333L    # 4.667261458395856E-62

    const v6, 0xf0f0f0f

    .line 642
    const/4 v1, 0x1

    ushr-long v2, p0, v1

    const-wide v4, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, v4

    sub-long/2addr p0, v2

    .line 643
    and-long v2, p0, v8

    const/4 v1, 0x2

    ushr-long v4, p0, v1

    and-long/2addr v4, v8

    add-long p0, v2, v4

    .line 644
    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    long-to-int v2, p0

    add-int v0, v1, v2

    .line 645
    .local v0, "i":I
    and-int v1, v0, v6

    ushr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v6

    add-int v0, v1, v2

    .line 646
    ushr-int/lit8 v1, v0, 0x8

    add-int/2addr v0, v1

    .line 647
    ushr-int/lit8 v1, v0, 0x10

    add-int/2addr v0, v1

    .line 648
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method public static compare(JJ)I
    .registers 6
    .param p0, "lhs"    # J
    .param p2, "rhs"    # J

    .prologue
    .line 120
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-nez v0, :cond_c

    const/4 v0, 0x0

    goto :goto_5

    :cond_c
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 141
    .local v3, "length":I
    if-nez v3, :cond_c

    .line 142
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 145
    :cond_c
    const/4 v2, 0x0

    .line 146
    .local v2, "i":I
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 147
    .local v1, "firstDigit":C
    const/16 v8, 0x2d

    if-ne v1, v8, :cond_23

    move v4, v5

    .line 148
    .local v4, "negative":Z
    :goto_16
    if-nez v4, :cond_1c

    const/16 v8, 0x2b

    if-ne v1, v8, :cond_2b

    .line 149
    :cond_1c
    if-ne v3, v5, :cond_25

    .line 150
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 147
    .end local v4    # "negative":Z
    :cond_23
    const/4 v4, 0x0

    goto :goto_16

    .line 152
    .restart local v4    # "negative":Z
    :cond_25
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 155
    :cond_2b
    const/16 v0, 0xa

    .line 156
    .local v0, "base":I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_5f

    .line 157
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_3c

    .line 158
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 178
    :goto_3b
    return-object v5

    .line 160
    :cond_3c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x78

    if-eq v1, v5, :cond_48

    const/16 v5, 0x58

    if-ne v1, v5, :cond_5c

    .line 161
    :cond_48
    if-ne v2, v3, :cond_4f

    .line 162
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 164
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    .line 165
    const/16 v0, 0x10

    .line 177
    :cond_53
    :goto_53
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v6

    .line 178
    .local v6, "result":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_3b

    .line 167
    .end local v6    # "result":J
    :cond_5c
    const/16 v0, 0x8

    goto :goto_53

    .line 169
    :cond_5f
    const/16 v5, 0x23

    if-ne v1, v5, :cond_53

    .line 170
    if-ne v2, v3, :cond_6a

    .line 171
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v5

    throw v5

    .line 173
    :cond_6a
    add-int/lit8 v2, v2, 0x1

    .line 174
    const/16 v0, 0x10

    goto :goto_53
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 217
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    .line 227
    :cond_9
    :goto_9
    return-object v2

    .line 220
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_9

    .line 225
    :try_start_10
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v2

    goto :goto_9

    .line 226
    :catch_15
    move-exception v0

    .line 227
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_9
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 6
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 246
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 247
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 256
    :goto_c
    return-object v2

    .line 249
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "prop":Ljava/lang/String;
    if-nez v1, :cond_18

    .line 251
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c

    .line 254
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 255
    :catch_1d
    move-exception v0

    .line 256
    .local v0, "ex":Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/Long;

    .prologue
    .line 275
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    .line 285
    .end local p1    # "defaultValue":Ljava/lang/Long;
    :cond_8
    :goto_8
    return-object p1

    .line 278
    .restart local p1    # "defaultValue":Ljava/lang/Long;
    :cond_9
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, "prop":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 283
    :try_start_f
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object p1

    goto :goto_8

    .line 284
    :catch_14
    move-exception v0

    .line 285
    .local v0, "ex":Ljava/lang/NumberFormatException;
    goto :goto_8
.end method

.method public static highestOneBit(J)J
    .registers 6
    .param p0, "v"    # J

    .prologue
    const/4 v2, 0x1

    .line 547
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    .line 548
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 549
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 550
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 551
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 552
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 553
    ushr-long v0, p0, v2

    sub-long v0, p0, v0

    return-wide v0
.end method

.method private static invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid long: \""

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

.method public static lowestOneBit(J)J
    .registers 4
    .param p0, "v"    # J

    .prologue
    .line 568
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .registers 8
    .param p0, "v"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 582
    cmp-long v2, p0, v4

    if-gez v2, :cond_8

    .line 583
    const/4 v2, 0x0

    .line 613
    :goto_7
    return v2

    .line 585
    :cond_8
    cmp-long v2, p0, v4

    if-nez v2, :cond_f

    .line 586
    const/16 v2, 0x40

    goto :goto_7

    .line 591
    :cond_f
    const/4 v1, 0x1

    .line 592
    .local v1, "n":I
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    long-to-int v0, v2

    .line 593
    .local v0, "i":I
    if-nez v0, :cond_1a

    .line 594
    add-int/lit8 v1, v1, 0x20

    .line 595
    long-to-int v0, p0

    .line 597
    :cond_1a
    ushr-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_22

    .line 598
    add-int/lit8 v1, v1, 0x10

    .line 599
    shl-int/lit8 v0, v0, 0x10

    .line 601
    :cond_22
    ushr-int/lit8 v2, v0, 0x18

    if-nez v2, :cond_2a

    .line 602
    add-int/lit8 v1, v1, 0x8

    .line 603
    shl-int/lit8 v0, v0, 0x8

    .line 605
    :cond_2a
    ushr-int/lit8 v2, v0, 0x1c

    if-nez v2, :cond_32

    .line 606
    add-int/lit8 v1, v1, 0x4

    .line 607
    shl-int/lit8 v0, v0, 0x4

    .line 609
    :cond_32
    ushr-int/lit8 v2, v0, 0x1e

    if-nez v2, :cond_3a

    .line 610
    add-int/lit8 v1, v1, 0x2

    .line 611
    shl-int/lit8 v0, v0, 0x2

    .line 613
    :cond_3a
    ushr-int/lit8 v2, v0, 0x1f

    sub-int v2, v1, v2

    goto :goto_7
.end method

.method public static numberOfTrailingZeros(J)I
    .registers 6
    .param p0, "v"    # J

    .prologue
    .line 626
    long-to-int v0, p0

    .line 627
    .local v0, "low":I
    if-eqz v0, :cond_8

    invoke-static {v0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    :goto_7
    return v1

    :cond_8
    const/16 v1, 0x20

    ushr-long v2, p0, v1

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x20

    goto :goto_7
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .registers 20
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "radix"    # I
    .param p3, "negative"    # Z

    .prologue
    .line 357
    const-wide/high16 v12, -0x8000000000000000L

    move/from16 v0, p2

    int-to-long v14, v0

    div-long v4, v12, v14

    .line 358
    .local v4, "max":J
    const-wide/16 v10, 0x0

    .line 359
    .local v10, "result":J
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "length":I
    move/from16 v8, p1

    .line 360
    .end local p1    # "offset":I
    .local v8, "offset":I
    :goto_f
    if-ge v8, v3, :cond_44

    .line 361
    add-int/lit8 p1, v8, 0x1

    .end local v8    # "offset":I
    .restart local p1    # "offset":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    move/from16 v0, p2

    invoke-static {v9, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 362
    .local v2, "digit":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_27

    .line 363
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 365
    :cond_27
    cmp-long v9, v4, v10

    if-lez v9, :cond_30

    .line 366
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 368
    :cond_30
    move/from16 v0, p2

    int-to-long v12, v0

    mul-long/2addr v12, v10

    int-to-long v14, v2

    sub-long v6, v12, v14

    .line 369
    .local v6, "next":J
    cmp-long v9, v6, v10

    if-lez v9, :cond_40

    .line 370
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 372
    :cond_40
    move-wide v10, v6

    move/from16 v8, p1

    .line 373
    .end local p1    # "offset":I
    .restart local v8    # "offset":I
    goto :goto_f

    .line 374
    .end local v2    # "digit":I
    .end local v6    # "next":J
    :cond_44
    if-nez p3, :cond_52

    .line 375
    neg-long v10, v10

    .line 376
    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_52

    .line 377
    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v9

    throw v9

    .line 380
    :cond_52
    return-wide v10
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 321
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
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

    .line 341
    const/4 v4, 0x2

    if-lt p1, v4, :cond_b

    const/16 v4, 0x24

    if-le p1, v4, :cond_24

    .line 342
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

    .line 344
    :cond_24
    if-eqz p0, :cond_2c

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_31

    .line 345
    :cond_2c
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .line 347
    :cond_31
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 348
    .local v0, "firstChar":C
    if-eq v0, v5, :cond_3b

    const/16 v4, 0x2b

    if-ne v0, v4, :cond_47

    :cond_3b
    move v1, v3

    .line 349
    .local v1, "firstDigitIndex":I
    :goto_3c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_49

    .line 350
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v2

    throw v2

    .end local v1    # "firstDigitIndex":I
    :cond_47
    move v1, v2

    .line 348
    goto :goto_3c

    .line 353
    .restart local v1    # "firstDigitIndex":I
    :cond_49
    if-ne v0, v5, :cond_50

    :goto_4b
    invoke-static {p0, v1, p1, v3}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v2

    return-wide v2

    :cond_50
    move v3, v2

    goto :goto_4b
.end method

.method public static parsePositiveLong(Ljava/lang/String;)J
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 391
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parsePositiveLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parsePositiveLong(Ljava/lang/String;I)J
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

    .line 407
    const/4 v0, 0x2

    if-lt p1, v0, :cond_8

    const/16 v0, 0x24

    if-le p1, v0, :cond_21

    .line 408
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

    .line 410
    :cond_21
    if-eqz p0, :cond_29

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    .line 411
    :cond_29
    invoke-static {p0}, Ljava/lang/Long;->invalidLong(Ljava/lang/String;)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    .line 413
    :cond_2e
    invoke-static {p0, v1, p1, v1}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static reverse(J)J
    .registers 12
    .param p0, "v"    # J

    .prologue
    const/16 v8, 0x10

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 727
    ushr-long v0, p0, v4

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 728
    ushr-long v0, p0, v5

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 729
    ushr-long v0, p0, v6

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, p0

    shl-long/2addr v2, v6

    or-long p0, v0, v2

    .line 730
    ushr-long v0, p0, v7

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v7

    or-long p0, v0, v2

    .line 731
    ushr-long v0, p0, v8

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v2, p0

    shl-long/2addr v2, v8

    or-long p0, v0, v2

    .line 732
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    const/16 v2, 0x20

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .registers 12
    .param p0, "v"    # J

    .prologue
    const-wide v2, 0xff00ff00ff00ffL

    const-wide v8, 0xffff0000ffffL

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/16 v4, 0x8

    .line 711
    ushr-long v0, p0, v4

    and-long/2addr v0, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    or-long p0, v0, v2

    .line 712
    ushr-long v0, p0, v5

    and-long/2addr v0, v8

    and-long v2, p0, v8

    shl-long/2addr v2, v5

    or-long p0, v0, v2

    .line 713
    ushr-long v0, p0, v6

    shl-long v2, p0, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .registers 7
    .param p0, "v"    # J
    .param p2, "distance"    # I

    .prologue
    .line 681
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .registers 7
    .param p0, "v"    # J
    .param p2, "distance"    # I

    .prologue
    .line 697
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static signum(J)I
    .registers 6
    .param p0, "v"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 746
    cmp-long v0, p0, v2

    if-gez v0, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    cmp-long v0, p0, v2

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .registers 4
    .param p0, "v"    # J

    .prologue
    .line 430
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString(J)Ljava/lang/String;
    .registers 4
    .param p0, "v"    # J

    .prologue
    .line 443
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToHexString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .registers 4
    .param p0, "v"    # J

    .prologue
    .line 455
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToOctalString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 4
    .param p0, "n"    # J

    .prologue
    .line 473
    invoke-static {p0, p1}, Ljava/lang/IntegralToString;->longToString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 5
    .param p0, "v"    # J
    .param p2, "radix"    # I

    .prologue
    .line 496
    invoke-static {p0, p1, p2}, Ljava/lang/IntegralToString;->longToString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .registers 4
    .param p0, "v"    # J

    .prologue
    .line 762
    const-wide/16 v0, 0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_c

    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    :cond_c
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Long;->SMALL_VALUES:[Ljava/lang/Long;

    long-to-int v1, p0

    add-int/lit16 v1, v1, 0x80

    aget-object v0, v0, v1

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 511
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 531
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 94
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .registers 6
    .param p1, "object"    # Ljava/lang/Long;

    .prologue
    .line 111
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 183
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 198
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v0, p1, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 203
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 291
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 306
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 418
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 460
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
