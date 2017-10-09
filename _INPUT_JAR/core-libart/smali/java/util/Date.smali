.class public Ljava/util/Date;
.super Ljava/lang/Object;
.source "Date.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field private static final CREATION_YEAR:I

.field private static final serialVersionUID:J = 0x686a81014b597419L


# instance fields
.field private transient milliseconds:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v0

    sput v0, Ljava/util/Date;->CREATION_YEAR:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 59
    return-void
.end method

.method public constructor <init>(III)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 77
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    invoke-virtual {v0, v1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 78
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 79
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 101
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 102
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 103
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 128
    .local v0, "cal":Ljava/util/GregorianCalendar;
    add-int/lit16 v1, p1, 0x76c

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 129
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 130
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Ljava/util/Date;->milliseconds:J

    .line 155
    return-void
.end method

.method public static UTC(IIIIII)J
    .registers 13
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I
    .param p3, "hour"    # I
    .param p4, "minute"    # I
    .param p5, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 757
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 758
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 759
    add-int/lit16 v1, p0, 0x76c

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 760
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    return-wide v2
.end method

.method private static appendTwoDigits(Ljava/lang/StringBuilder;I)V
    .registers 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "n"    # I

    .prologue
    .line 726
    const/16 v0, 0xa

    if-ge p1, v0, :cond_9

    .line 727
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 729
    :cond_9
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 730
    return-void
.end method

.method private static parse(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 355
    const/4 v7, 0x0

    .local v7, "i":I
    array-length v6, p1

    .local v6, "alength":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, "slength":I
    :goto_7
    if-ge v7, v6, :cond_18

    .line 356
    const/4 v1, 0x1

    aget-object v3, p1, v7

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 360
    .end local v7    # "i":I
    :goto_14
    return v7

    .line 355
    .restart local v7    # "i":I
    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 360
    :cond_18
    const/4 v7, -0x1

    goto :goto_14
.end method

.method public static parse(Ljava/lang/String;)J
    .registers 37
    .param p0, "string"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    if-nez p0, :cond_a

    .line 381
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v8, "The string argument is null"

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_a
    const/16 v27, 0x0

    .line 385
    .local v27, "sign":C
    const/16 v19, 0x0

    .line 386
    .local v19, "commentLevel":I
    const/16 v26, 0x0

    .local v26, "offset":I
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v21

    .local v21, "length":I
    const/16 v28, 0x0

    .line 387
    .local v28, "state":I
    const/16 v33, -0x1

    .local v33, "year":I
    const/4 v3, -0x1

    .local v3, "month":I
    const/4 v4, -0x1

    .line 388
    .local v4, "date":I
    const/4 v5, -0x1

    .local v5, "hour":I
    const/4 v6, -0x1

    .local v6, "minute":I
    const/4 v7, -0x1

    .local v7, "second":I
    const/16 v35, 0x0

    .local v35, "zoneOffset":I
    const/16 v22, 0x0

    .line 389
    .local v22, "minutesOffset":I
    const/16 v34, 0x0

    .line 390
    .local v34, "zone":Z
    const/16 v17, 0x0

    .local v17, "PAD":I
    const/4 v15, 0x1

    .local v15, "LETTERS":I
    const/16 v16, 0x2

    .line 391
    .local v16, "NUMBERS":I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    .local v18, "buffer":Ljava/lang/StringBuilder;
    :cond_2d
    :goto_2d
    move/from16 v0, v26

    move/from16 v1, v21

    if-gt v0, v1, :cond_2bb

    .line 394
    move/from16 v0, v26

    move/from16 v1, v21

    if-ge v0, v1, :cond_f1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v24

    .line 395
    .local v24, "next":C
    :goto_41
    add-int/lit8 v26, v26, 0x1

    .line 397
    const/16 v2, 0x28

    move/from16 v0, v24

    if-ne v0, v2, :cond_4b

    .line 398
    add-int/lit8 v19, v19, 0x1

    .line 400
    :cond_4b
    if-lez v19, :cond_59

    .line 401
    const/16 v2, 0x29

    move/from16 v0, v24

    if-ne v0, v2, :cond_55

    .line 402
    add-int/lit8 v19, v19, -0x1

    .line 404
    :cond_55
    if-nez v19, :cond_2d

    .line 405
    const/16 v24, 0x20

    .line 411
    :cond_59
    const/16 v25, 0x0

    .line 412
    .local v25, "nextState":I
    const/16 v2, 0x61

    move/from16 v0, v24

    if-gt v2, v0, :cond_67

    const/16 v2, 0x7a

    move/from16 v0, v24

    if-le v0, v2, :cond_73

    :cond_67
    const/16 v2, 0x41

    move/from16 v0, v24

    if-gt v2, v0, :cond_f5

    const/16 v2, 0x5a

    move/from16 v0, v24

    if-gt v0, v2, :cond_f5

    .line 413
    :cond_73
    const/16 v25, 0x1

    .line 420
    :cond_75
    :goto_75
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_1e5

    const/4 v2, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_1e5

    .line 421
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 422
    .local v20, "digit":I
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 423
    const/16 v2, 0x2b

    move/from16 v0, v27

    if-eq v0, v2, :cond_99

    const/16 v2, 0x2d

    move/from16 v0, v27

    if-ne v0, v2, :cond_132

    .line 424
    :cond_99
    if-nez v35, :cond_12d

    .line 425
    const/16 v34, 0x1

    .line 426
    const/16 v2, 0x3a

    move/from16 v0, v24

    if-ne v0, v2, :cond_bc

    .line 427
    const/16 v2, 0x2d

    move/from16 v0, v27

    if-ne v0, v2, :cond_11b

    add-int/lit8 v2, v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    neg-int v0, v2

    move/from16 v22, v0

    .line 432
    :goto_ba
    add-int/lit8 v26, v26, 0x2

    .line 434
    :cond_bc
    const/16 v2, 0x2d

    move/from16 v0, v27

    if-ne v0, v2, :cond_12a

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v35, v0

    .line 435
    :goto_c7
    const/16 v27, 0x0

    .line 519
    .end local v20    # "digit":I
    :cond_c9
    :goto_c9
    const/16 v2, 0x2b

    move/from16 v0, v24

    if-eq v0, v2, :cond_da

    const/4 v2, -0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_2a6

    const/16 v2, 0x2d

    move/from16 v0, v24

    if-ne v0, v2, :cond_2a6

    .line 520
    :cond_da
    move/from16 v27, v24

    .line 526
    :cond_dc
    :goto_dc
    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_e6

    const/4 v2, 0x2

    move/from16 v0, v25

    if-ne v0, v2, :cond_ed

    .line 527
    :cond_e6
    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 529
    :cond_ed
    move/from16 v28, v25

    .line 530
    goto/16 :goto_2d

    .line 394
    .end local v24    # "next":C
    .end local v25    # "nextState":I
    :cond_f1
    const/16 v24, 0xd

    goto/16 :goto_41

    .line 414
    .restart local v24    # "next":C
    .restart local v25    # "nextState":I
    :cond_f5
    const/16 v2, 0x30

    move/from16 v0, v24

    if-gt v2, v0, :cond_105

    const/16 v2, 0x39

    move/from16 v0, v24

    if-gt v0, v2, :cond_105

    .line 415
    const/16 v25, 0x2

    goto/16 :goto_75

    .line 416
    :cond_105
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_75

    const-string v2, ",+-:/"

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_75

    .line 417
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 427
    .restart local v20    # "digit":I
    :cond_11b
    add-int/lit8 v2, v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    goto :goto_ba

    :cond_12a
    move/from16 v35, v20

    .line 434
    goto :goto_c7

    .line 437
    :cond_12d
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 439
    :cond_132
    const/16 v2, 0x46

    move/from16 v0, v20

    if-lt v0, v2, :cond_15e

    .line 440
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_159

    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_155

    const/16 v2, 0x2c

    move/from16 v0, v24

    if-eq v0, v2, :cond_155

    const/16 v2, 0x2f

    move/from16 v0, v24

    if-eq v0, v2, :cond_155

    const/16 v2, 0xd

    move/from16 v0, v24

    if-ne v0, v2, :cond_159

    .line 443
    :cond_155
    move/from16 v33, v20

    goto/16 :goto_c9

    .line 445
    :cond_159
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 447
    :cond_15e
    const/16 v2, 0x3a

    move/from16 v0, v24

    if-ne v0, v2, :cond_177

    .line 448
    const/4 v2, -0x1

    if-ne v5, v2, :cond_16b

    .line 449
    move/from16 v5, v20

    goto/16 :goto_c9

    .line 450
    :cond_16b
    const/4 v2, -0x1

    if-ne v6, v2, :cond_172

    .line 451
    move/from16 v6, v20

    goto/16 :goto_c9

    .line 453
    :cond_172
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 455
    :cond_177
    const/16 v2, 0x2f

    move/from16 v0, v24

    if-ne v0, v2, :cond_190

    .line 456
    const/4 v2, -0x1

    if-ne v3, v2, :cond_184

    .line 457
    add-int/lit8 v3, v20, -0x1

    goto/16 :goto_c9

    .line 458
    :cond_184
    const/4 v2, -0x1

    if-ne v4, v2, :cond_18b

    .line 459
    move/from16 v4, v20

    goto/16 :goto_c9

    .line 461
    :cond_18b
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 463
    :cond_190
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_1a8

    const/16 v2, 0x2c

    move/from16 v0, v24

    if-eq v0, v2, :cond_1a8

    const/16 v2, 0x2d

    move/from16 v0, v24

    if-eq v0, v2, :cond_1a8

    const/16 v2, 0xd

    move/from16 v0, v24

    if-ne v0, v2, :cond_1d1

    .line 465
    :cond_1a8
    const/4 v2, -0x1

    if-eq v5, v2, :cond_1b2

    const/4 v2, -0x1

    if-ne v6, v2, :cond_1b2

    .line 466
    move/from16 v6, v20

    goto/16 :goto_c9

    .line 467
    :cond_1b2
    const/4 v2, -0x1

    if-eq v6, v2, :cond_1bc

    const/4 v2, -0x1

    if-ne v7, v2, :cond_1bc

    .line 468
    move/from16 v7, v20

    goto/16 :goto_c9

    .line 469
    :cond_1bc
    const/4 v2, -0x1

    if-ne v4, v2, :cond_1c3

    .line 470
    move/from16 v4, v20

    goto/16 :goto_c9

    .line 471
    :cond_1c3
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_1cc

    .line 472
    move/from16 v33, v20

    goto/16 :goto_c9

    .line 474
    :cond_1cc
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 476
    :cond_1d1
    const/4 v2, -0x1

    move/from16 v0, v33

    if-ne v0, v2, :cond_1e0

    const/4 v2, -0x1

    if-eq v3, v2, :cond_1e0

    const/4 v2, -0x1

    if-eq v4, v2, :cond_1e0

    .line 477
    move/from16 v33, v20

    goto/16 :goto_c9

    .line 479
    :cond_1e0
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 481
    .end local v20    # "digit":I
    :cond_1e5
    const/4 v2, 0x1

    move/from16 v0, v28

    if-ne v0, v2, :cond_c9

    const/4 v2, 0x1

    move/from16 v0, v25

    if-eq v0, v2, :cond_c9

    .line 482
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 483
    .local v30, "text":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 484
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_20b

    .line 485
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 487
    :cond_20b
    const-string v2, "AM"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_228

    .line 488
    const/16 v2, 0xc

    if-ne v5, v2, :cond_21c

    .line 489
    const/4 v5, 0x0

    goto/16 :goto_c9

    .line 490
    :cond_21c
    const/4 v2, 0x1

    if-lt v5, v2, :cond_223

    const/16 v2, 0xc

    if-le v5, v2, :cond_c9

    .line 491
    :cond_223
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 493
    :cond_228
    const-string v2, "PM"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_247

    .line 494
    const/16 v2, 0xc

    if-ne v5, v2, :cond_23b

    .line 495
    const/4 v5, 0x0

    .line 499
    :cond_237
    add-int/lit8 v5, v5, 0xc

    goto/16 :goto_c9

    .line 496
    :cond_23b
    const/4 v2, 0x1

    if-lt v5, v2, :cond_242

    const/16 v2, 0xc

    if-le v5, v2, :cond_237

    .line 497
    :cond_242
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 501
    :cond_247
    new-instance v29, Ljava/text/DateFormatSymbols;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v29

    invoke-direct {v0, v2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    .line 502
    .local v29, "symbols":Ljava/text/DateFormatSymbols;
    invoke-virtual/range {v29 .. v29}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v32

    .local v32, "weekdays":[Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v23

    .line 505
    .local v23, "months":[Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-ne v2, v8, :cond_c9

    .line 506
    const/4 v2, -0x1

    if-ne v3, v2, :cond_271

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Ljava/util/Date;->parse(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v2, -0x1

    if-ne v3, v2, :cond_c9

    .line 507
    :cond_271
    const-string v2, "GMT"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28f

    const-string v2, "UT"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28f

    const-string v2, "UTC"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_295

    .line 508
    :cond_28f
    const/16 v34, 0x1

    .line 509
    const/16 v35, 0x0

    goto/16 :goto_c9

    .line 510
    :cond_295
    invoke-static/range {v30 .. v30}, Ljava/util/Date;->zone(Ljava/lang/String;)I

    move-result v31

    .local v31, "value":I
    if-eqz v31, :cond_2a1

    .line 511
    const/16 v34, 0x1

    .line 512
    move/from16 v35, v31

    goto/16 :goto_c9

    .line 514
    :cond_2a1
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 521
    .end local v23    # "months":[Ljava/lang/String;
    .end local v29    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v30    # "text":Ljava/lang/String;
    .end local v31    # "value":I
    .end local v32    # "weekdays":[Ljava/lang/String;
    :cond_2a6
    invoke-static/range {v24 .. v24}, Ljava/lang/Character;->isSpace(C)Z

    move-result v2

    if-nez v2, :cond_dc

    const/16 v2, 0x2c

    move/from16 v0, v24

    if-eq v0, v2, :cond_dc

    const/4 v2, 0x2

    move/from16 v0, v25

    if-eq v0, v2, :cond_dc

    .line 523
    const/16 v27, 0x0

    goto/16 :goto_dc

    .line 532
    .end local v24    # "next":C
    .end local v25    # "nextState":I
    :cond_2bb
    const/4 v2, -0x1

    move/from16 v0, v33

    if-eq v0, v2, :cond_322

    const/4 v2, -0x1

    if-eq v3, v2, :cond_322

    const/4 v2, -0x1

    if-eq v4, v2, :cond_322

    .line 533
    const/4 v2, -0x1

    if-ne v5, v2, :cond_2ca

    .line 534
    const/4 v5, 0x0

    .line 536
    :cond_2ca
    const/4 v2, -0x1

    if-ne v6, v2, :cond_2ce

    .line 537
    const/4 v6, 0x0

    .line 539
    :cond_2ce
    const/4 v2, -0x1

    if-ne v7, v2, :cond_2d2

    .line 540
    const/4 v7, 0x0

    .line 542
    :cond_2d2
    sget v2, Ljava/util/Date;->CREATION_YEAR:I

    add-int/lit8 v2, v2, -0x50

    move/from16 v0, v33

    if-ge v0, v2, :cond_2ff

    .line 543
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x7d0

    move/from16 v33, v0

    .line 547
    :cond_2e0
    :goto_2e0
    sub-int v6, v6, v22

    .line 548
    if-eqz v34, :cond_30f

    .line 549
    const/16 v2, 0x18

    move/from16 v0, v35

    if-ge v0, v2, :cond_2f0

    const/16 v2, -0x18

    move/from16 v0, v35

    if-gt v0, v2, :cond_30c

    .line 550
    :cond_2f0
    div-int/lit8 v2, v35, 0x64

    sub-int/2addr v5, v2

    .line 551
    rem-int/lit8 v2, v35, 0x64

    sub-int/2addr v6, v2

    .line 555
    :goto_2f6
    move/from16 v0, v33

    add-int/lit16 v2, v0, -0x76c

    invoke-static/range {v2 .. v7}, Ljava/util/Date;->UTC(IIIIII)J

    move-result-wide v8

    .line 557
    :goto_2fe
    return-wide v8

    .line 544
    :cond_2ff
    const/16 v2, 0x64

    move/from16 v0, v33

    if-ge v0, v2, :cond_2e0

    .line 545
    move/from16 v0, v33

    add-int/lit16 v0, v0, 0x76c

    move/from16 v33, v0

    goto :goto_2e0

    .line 553
    :cond_30c
    sub-int v5, v5, v35

    goto :goto_2f6

    .line 557
    :cond_30f
    new-instance v8, Ljava/util/Date;

    move/from16 v0, v33

    add-int/lit16 v9, v0, -0x76c

    move v10, v3

    move v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct/range {v8 .. v14}, Ljava/util/Date;-><init>(IIIIII)V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    goto :goto_2fe

    .line 560
    :cond_322
    invoke-static/range {p0 .. p0}, Ljava/util/Date;->parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2
.end method

.method private static parseError(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .registers 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 364
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 798
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 799
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readLong()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 800
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 793
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/ObjectOutputStream;->writeLong(J)V

    .line 794
    return-void
.end method

.method private static zone(Ljava/lang/String;)I
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x5

    const/4 v1, -0x6

    const/4 v2, -0x7

    .line 764
    const-string v3, "EST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 788
    :cond_b
    :goto_b
    return v0

    .line 767
    :cond_c
    const-string v3, "EDT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 768
    const/4 v0, -0x4

    goto :goto_b

    .line 770
    :cond_16
    const-string v3, "CST"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move v0, v1

    .line 771
    goto :goto_b

    .line 773
    :cond_20
    const-string v3, "CDT"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 776
    const-string v0, "MST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    move v0, v2

    .line 777
    goto :goto_b

    .line 779
    :cond_32
    const-string v0, "MDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move v0, v1

    .line 780
    goto :goto_b

    .line 782
    :cond_3c
    const-string v0, "PST"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 783
    const/4 v0, -0x8

    goto :goto_b

    .line 785
    :cond_46
    const-string v0, "PDT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    move v0, v2

    .line 786
    goto :goto_b

    .line 788
    :cond_50
    const/4 v0, 0x0

    goto :goto_b
.end method


# virtual methods
.method public after(Ljava/util/Date;)Z
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 166
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public before(Ljava/util/Date;)Z
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 178
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clone()Ljava/lang/Object;
    .registers 3

    .prologue
    .line 191
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 192
    :catch_5
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Ljava/util/Date;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/util/Date;)I
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 207
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_a

    .line 208
    const/4 v0, -0x1

    .line 213
    :goto_9
    return v0

    .line 210
    :cond_a
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_14

    .line 211
    const/4 v0, 0x0

    goto :goto_9

    .line 213
    :cond_14
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 230
    if-eq p1, p0, :cond_10

    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_12

    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v2, p1, Ljava/util/Date;->milliseconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getDate()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDay()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 255
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getHours()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 267
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMinutes()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 279
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMonth()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 313
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    return-wide v0
.end method

.method public getTimezoneOffset()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 325
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 326
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    neg-int v1, v1

    const v2, 0xea60

    div-int/2addr v1, v2

    return v1
.end method

.method public getYear()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 338
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit16 v0, v0, -0x76c

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 351
    iget-wide v0, p0, Ljava/util/Date;->milliseconds:J

    const/16 v2, 0x20

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    long-to-int v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public setDate(I)V
    .registers 6
    .param p1, "day"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 574
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 575
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 576
    return-void
.end method

.method public setHours(I)V
    .registers 6
    .param p1, "hour"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 588
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 589
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 590
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 591
    return-void
.end method

.method public setMinutes(I)V
    .registers 6
    .param p1, "minute"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 603
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 604
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 605
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 606
    return-void
.end method

.method public setMonth(I)V
    .registers 6
    .param p1, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 618
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 619
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 620
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 621
    return-void
.end method

.method public setSeconds(I)V
    .registers 6
    .param p1, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 633
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 634
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1, p1}, Ljava/util/GregorianCalendar;->set(II)V

    .line 635
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 636
    return-void
.end method

.method public setTime(J)V
    .registers 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 646
    iput-wide p1, p0, Ljava/util/Date;->milliseconds:J

    .line 647
    return-void
.end method

.method public setYear(I)V
    .registers 6
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 659
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v2, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v2, v3}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 660
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/4 v1, 0x1

    add-int/lit16 v2, p1, 0x76c

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 661
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/Date;->milliseconds:J

    .line 662
    return-void
.end method

.method public toGMTString()Ljava/lang/String;
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 672
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "d MMM y HH:mm:ss \'GMT\'"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 673
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 674
    .local v1, "gmtZone":Ljava/util/TimeZone;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 675
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 676
    .local v0, "gc":Ljava/util/GregorianCalendar;
    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    invoke-virtual {v0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 677
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toLocaleString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x20

    .line 703
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v4}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    .line 704
    .local v1, "localeData":Llibcore/icu/LocaleData;
    new-instance v0, Ljava/util/GregorianCalendar;

    iget-wide v4, p0, Ljava/util/Date;->milliseconds:J

    invoke-direct {v0, v4, v5}, Ljava/util/GregorianCalendar;-><init>(J)V

    .line 705
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    .line 706
    .local v3, "tz":Ljava/util/TimeZone;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 707
    .local v2, "result":Ljava/lang/StringBuilder;
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    iget-object v4, v1, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 711
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 712
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 714
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 716
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 717
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v2, v4}, Ljava/util/Date;->appendTwoDigits(Ljava/lang/StringBuilder;I)V

    .line 718
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 719
    invoke-virtual {v3, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 721
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 722
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
