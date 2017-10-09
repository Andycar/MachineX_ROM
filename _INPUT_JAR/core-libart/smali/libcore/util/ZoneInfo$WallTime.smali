.class public Llibcore/util/ZoneInfo$WallTime;
.super Ljava/lang/Object;
.source "ZoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/util/ZoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WallTime"
.end annotation


# instance fields
.field private final calendar:Ljava/util/GregorianCalendar;

.field private gmtOffsetSeconds:I

.field private hour:I

.field private isDst:I

.field private minute:I

.field private month:I

.field private monthDay:I

.field private second:I

.field private weekDay:I

.field private year:I

.field private yearDay:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Z)V

    iput-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    .line 364
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 365
    return-void
.end method

.method private copyFieldsFromCalendar()V
    .registers 3

    .prologue
    .line 814
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    .line 815
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    .line 816
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    .line 817
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    .line 818
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    .line 819
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    .line 822
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    .line 824
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    .line 825
    return-void
.end method

.method private copyFieldsToCalendar()V
    .registers 4

    .prologue
    .line 805
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 806
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x2

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 807
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/4 v1, 0x5

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 808
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xb

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 809
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 810
    iget-object v0, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    const/16 v1, 0xd

    iget v2, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 811
    return-void
.end method

.method private doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;
    .registers 23
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p2, "initialTransitionIndex"    # I
    .param p3, "wallTimeSeconds"    # I
    .param p4, "mustMatchDst"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 632
    const v8, 0x15180

    .line 633
    .local v8, "MAX_SEARCH_SECONDS":I
    const/4 v10, 0x0

    .local v10, "clampTop":Z
    const/4 v9, 0x0

    .line 634
    .local v9, "clampBottom":Z
    const/4 v12, 0x0

    .line 637
    .local v12, "loop":I
    :cond_6
    add-int/lit8 v2, v12, 0x1

    div-int/lit8 v15, v2, 0x2

    .line 638
    .local v15, "transitionIndexDelta":I
    rem-int/lit8 v2, v12, 0x2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_11

    .line 639
    mul-int/lit8 v15, v15, -0x1

    .line 641
    :cond_11
    add-int/lit8 v12, v12, 0x1

    .line 644
    if-lez v15, :cond_17

    if-nez v10, :cond_1b

    :cond_17
    if-gez v15, :cond_21

    if-eqz v9, :cond_21

    .line 720
    :cond_1b
    :goto_1b
    if-eqz v10, :cond_6

    if-eqz v9, :cond_6

    .line 721
    const/4 v13, 0x0

    :cond_20
    :goto_20
    return-object v13

    .line 650
    :cond_21
    add-int v6, p2, v15

    .line 651
    .local v6, "currentTransitionIndex":I
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Llibcore/util/ZoneInfo$OffsetInterval;->create(Llibcore/util/ZoneInfo;I)Llibcore/util/ZoneInfo$OffsetInterval;

    move-result-object v5

    .line 653
    .local v5, "offsetInterval":Llibcore/util/ZoneInfo$OffsetInterval;
    if-nez v5, :cond_38

    .line 656
    if-lez v15, :cond_34

    const/4 v2, 0x1

    :goto_2e
    or-int/2addr v10, v2

    .line 657
    if-gez v15, :cond_36

    const/4 v2, 0x1

    :goto_32
    or-int/2addr v9, v2

    .line 658
    goto :goto_1b

    .line 656
    :cond_34
    const/4 v2, 0x0

    goto :goto_2e

    .line 657
    :cond_36
    const/4 v2, 0x0

    goto :goto_32

    .line 662
    :cond_38
    if-eqz p4, :cond_72

    .line 665
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v5, v2, v3}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    move-result v2

    if-eqz v2, :cond_8c

    .line 666
    move-object/from16 v0, p0

    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_54

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-ne v2, v3, :cond_8c

    .line 671
    :cond_54
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v14

    .line 672
    .local v14, "totalOffsetSeconds":I
    move/from16 v0, p3

    # invokes: Llibcore/util/ZoneInfo;->checkedSubtract(II)I
    invoke-static {v0, v14}, Llibcore/util/ZoneInfo;->access$600(II)I

    move-result v13

    .line 675
    .local v13, "returnValue":I
    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 676
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 677
    move-object/from16 v0, p0

    iput v14, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 678
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_20

    .line 690
    .end local v13    # "returnValue":I
    .end local v14    # "totalOffsetSeconds":I
    :cond_72
    move-object/from16 v0, p0

    iget v2, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v3

    if-eq v2, v3, :cond_8c

    .line 691
    move-object/from16 v0, p0

    iget v7, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .local v7, "isDstToFind":I
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p3

    .line 692
    invoke-direct/range {v2 .. v7}, Llibcore/util/ZoneInfo$WallTime;->tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;

    move-result-object v13

    .line 694
    .local v13, "returnValue":Ljava/lang/Integer;
    if-nez v13, :cond_20

    .line 701
    .end local v7    # "isDstToFind":I
    .end local v13    # "returnValue":Ljava/lang/Integer;
    :cond_8c
    if-lez v15, :cond_a8

    .line 705
    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getEndWallTimeSeconds()J

    move-result-wide v2

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v2, v2, v16

    const-wide/32 v16, 0x15180

    cmp-long v2, v2, v16

    if-lez v2, :cond_a6

    const/4 v11, 0x1

    .line 707
    .local v11, "endSearch":Z
    :goto_a1
    if-eqz v11, :cond_1b

    .line 708
    const/4 v10, 0x1

    goto/16 :goto_1b

    .line 705
    .end local v11    # "endSearch":Z
    :cond_a6
    const/4 v11, 0x0

    goto :goto_a1

    .line 710
    :cond_a8
    if-gez v15, :cond_1b

    .line 711
    move/from16 v0, p3

    int-to-long v2, v0

    invoke-virtual {v5}, Llibcore/util/ZoneInfo$OffsetInterval;->getStartWallTimeSeconds()J

    move-result-wide v16

    sub-long v2, v2, v16

    const-wide/32 v16, 0x15180

    cmp-long v2, v2, v16

    if-ltz v2, :cond_c0

    const/4 v11, 0x1

    .line 713
    .restart local v11    # "endSearch":Z
    :goto_bb
    if-eqz v11, :cond_1b

    .line 717
    const/4 v9, 0x1

    goto/16 :goto_1b

    .line 711
    .end local v11    # "endSearch":Z
    :cond_c0
    const/4 v11, 0x0

    goto :goto_bb
.end method

.method private static findTransitionIndex(Llibcore/util/ZoneInfo;I)I
    .registers 4
    .param p0, "timeZone"    # Llibcore/util/ZoneInfo;
    .param p1, "timeSeconds"    # I

    .prologue
    .line 835
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 836
    .local v0, "matchingRawTransition":I
    if-gez v0, :cond_e

    .line 837
    xor-int/lit8 v1, v0, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 839
    :cond_e
    return v0
.end method

.method private static getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I
    .registers 16
    .param p0, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p1, "startIndex"    # I
    .param p2, "isDst"    # I

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x0

    .line 559
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    array-length v10, v10

    add-int/lit8 v10, v10, 0x1

    new-array v5, v10, [I

    .line 560
    .local v5, "offsets":[I
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    array-length v10, v10

    new-array v6, v10, [Z

    .line 561
    .local v6, "seen":[Z
    const/4 v3, 0x0

    .line 563
    .local v3, "numFound":I
    const/4 v2, 0x0

    .line 564
    .local v2, "delta":I
    const/4 v1, 0x0

    .line 565
    .local v1, "clampTop":Z
    const/4 v0, 0x0

    .local v0, "clampBottom":Z
    move v4, v3

    .line 568
    .end local v3    # "numFound":I
    .local v4, "numFound":I
    :goto_17
    mul-int/lit8 v2, v2, -0x1

    .line 569
    if-ltz v2, :cond_1d

    .line 570
    add-int/lit8 v2, v2, 0x1

    .line 573
    :cond_1d
    add-int v8, p1, v2

    .line 574
    .local v8, "transitionIndex":I
    if-gez v2, :cond_2f

    if-ge v8, v12, :cond_2f

    .line 575
    const/4 v0, 0x1

    move v3, v4

    .line 597
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    :goto_25
    if-eqz v1, :cond_64

    if-eqz v0, :cond_64

    .line 599
    new-array v7, v3, [I

    .line 600
    .local v7, "toReturn":[I
    invoke-static {v5, v11, v7, v11, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 601
    return-object v7

    .line 577
    .end local v3    # "numFound":I
    .end local v7    # "toReturn":[I
    .restart local v4    # "numFound":I
    :cond_2f
    if-lez v2, :cond_3b

    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    array-length v10, v10

    if-lt v8, v10, :cond_3b

    .line 578
    const/4 v1, 0x1

    move v3, v4

    .line 579
    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_25

    .line 582
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    :cond_3b
    if-ne v8, v12, :cond_44

    .line 583
    if-nez p2, :cond_68

    .line 586
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    aput v11, v5, v4

    goto :goto_25

    .line 590
    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    :cond_44
    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    aget-byte v9, v10, v8

    .line 591
    .local v9, "type":B
    aget-boolean v10, v6, v9

    if-nez v10, :cond_68

    .line 592
    # getter for: Llibcore/util/ZoneInfo;->mIsDsts:[B
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$400(Llibcore/util/ZoneInfo;)[B

    move-result-object v10

    aget-byte v10, v10, v9

    if-ne v10, p2, :cond_66

    .line 593
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p0}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v10

    aget v10, v10, v9

    aput v10, v5, v4

    .line 595
    :goto_60
    const/4 v10, 0x1

    aput-boolean v10, v6, v9

    goto :goto_25

    .end local v9    # "type":B
    :cond_64
    move v4, v3

    .end local v3    # "numFound":I
    .restart local v4    # "numFound":I
    goto :goto_17

    .restart local v9    # "type":B
    :cond_66
    move v3, v4

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_60

    .end local v3    # "numFound":I
    .end local v9    # "type":B
    .restart local v4    # "numFound":I
    :cond_68
    move v3, v4

    .end local v4    # "numFound":I
    .restart local v3    # "numFound":I
    goto :goto_25
.end method

.method private tryOffsetAdjustments(Llibcore/util/ZoneInfo;ILlibcore/util/ZoneInfo$OffsetInterval;II)Ljava/lang/Integer;
    .registers 24
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;
    .param p2, "oldWallTimeSeconds"    # I
    .param p3, "targetInterval"    # Llibcore/util/ZoneInfo$OffsetInterval;
    .param p4, "transitionIndex"    # I
    .param p5, "isDstToFind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Llibcore/util/ZoneInfo$CheckedArithmeticException;
        }
    .end annotation

    .prologue
    .line 529
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-static {v0, v1, v2}, Llibcore/util/ZoneInfo$WallTime;->getOffsetsOfType(Llibcore/util/ZoneInfo;II)[I

    move-result-object v8

    .line 530
    .local v8, "offsetsToTry":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_b
    array-length v12, v8

    if-ge v6, v12, :cond_54

    .line 531
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static/range {p1 .. p1}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v12

    div-int/lit16 v9, v12, 0x3e8

    .line 532
    .local v9, "rawOffsetSeconds":I
    aget v12, v8, v6

    add-int v7, v9, v12

    .line 533
    .local v7, "jOffsetSeconds":I
    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getTotalOffsetSeconds()I

    move-result v11

    .line 534
    .local v11, "targetIntervalOffsetSeconds":I
    sub-int v5, v11, v7

    .line 535
    .local v5, "adjustmentSeconds":I
    move/from16 v0, p2

    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {v0, v5}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v4

    .line 536
    .local v4, "adjustedWallTimeSeconds":I
    int-to-long v12, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Llibcore/util/ZoneInfo$OffsetInterval;->containsWallTime(J)Z

    move-result v12

    if-eqz v12, :cond_51

    .line 538
    # invokes: Llibcore/util/ZoneInfo;->checkedSubtract(II)I
    invoke-static {v4, v11}, Llibcore/util/ZoneInfo;->access$600(II)I

    move-result v10

    .line 542
    .local v10, "returnValue":I
    move-object/from16 v0, p0

    iget-object v12, v0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v14, v4

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    invoke-virtual {v12, v14, v15}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 543
    invoke-direct/range {p0 .. p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 544
    invoke-virtual/range {p3 .. p3}, Llibcore/util/ZoneInfo$OffsetInterval;->getIsDst()I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 545
    move-object/from16 v0, p0

    iput v11, v0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 546
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 549
    .end local v4    # "adjustedWallTimeSeconds":I
    .end local v5    # "adjustmentSeconds":I
    .end local v7    # "jOffsetSeconds":I
    .end local v9    # "rawOffsetSeconds":I
    .end local v10    # "returnValue":I
    .end local v11    # "targetIntervalOffsetSeconds":I
    :goto_50
    return-object v12

    .line 530
    .restart local v4    # "adjustedWallTimeSeconds":I
    .restart local v5    # "adjustmentSeconds":I
    .restart local v7    # "jOffsetSeconds":I
    .restart local v9    # "rawOffsetSeconds":I
    .restart local v11    # "targetIntervalOffsetSeconds":I
    :cond_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 549
    .end local v4    # "adjustedWallTimeSeconds":I
    .end local v5    # "adjustmentSeconds":I
    .end local v7    # "jOffsetSeconds":I
    .end local v9    # "rawOffsetSeconds":I
    .end local v11    # "targetIntervalOffsetSeconds":I
    :cond_54
    const/4 v12, 0x0

    goto :goto_50
.end method


# virtual methods
.method public getGmtOffset()I
    .registers 2

    .prologue
    .line 797
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    return v0
.end method

.method public getHour()I
    .registers 2

    .prologue
    .line 777
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    return v0
.end method

.method public getIsDst()I
    .registers 2

    .prologue
    .line 801
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    return v0
.end method

.method public getMinute()I
    .registers 2

    .prologue
    .line 781
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    return v0
.end method

.method public getMonth()I
    .registers 2

    .prologue
    .line 769
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    return v0
.end method

.method public getMonthDay()I
    .registers 2

    .prologue
    .line 773
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    return v0
.end method

.method public getSecond()I
    .registers 2

    .prologue
    .line 785
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    return v0
.end method

.method public getWeekDay()I
    .registers 2

    .prologue
    .line 789
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    return v0
.end method

.method public getYear()I
    .registers 2

    .prologue
    .line 765
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    return v0
.end method

.method public getYearDay()I
    .registers 2

    .prologue
    .line 793
    iget v0, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    return v0
.end method

.method public localtime(ILlibcore/util/ZoneInfo;)V
    .registers 13
    .param p1, "timeSeconds"    # I
    .param p2, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 376
    :try_start_0
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v5

    div-int/lit16 v1, v5, 0x3e8

    .line 380
    .local v1, "offsetSeconds":I
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_23

    .line 381
    const/4 v0, 0x0

    .line 398
    .local v0, "isDst":B
    :goto_e
    # invokes: Llibcore/util/ZoneInfo;->checkedAdd(II)I
    invoke-static {p1, v1}, Llibcore/util/ZoneInfo;->access$500(II)I

    move-result v4

    .line 401
    .local v4, "wallTimeSeconds":I
    iget-object v5, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    int-to-long v6, v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 402
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 403
    iput v0, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 404
    iput v1, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 408
    .end local v0    # "isDst":B
    .end local v1    # "offsetSeconds":I
    .end local v4    # "wallTimeSeconds":I
    :goto_22
    return-void

    .line 384
    .restart local v1    # "offsetSeconds":I
    :cond_23
    invoke-static {p2, p1}, Llibcore/util/ZoneInfo$WallTime;->findTransitionIndex(Llibcore/util/ZoneInfo;I)I

    move-result v2

    .line 385
    .local v2, "transitionIndex":I
    if-gez v2, :cond_2b

    .line 389
    const/4 v0, 0x0

    .restart local v0    # "isDst":B
    goto :goto_e

    .line 391
    .end local v0    # "isDst":B
    :cond_2b
    # getter for: Llibcore/util/ZoneInfo;->mTypes:[B
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$200(Llibcore/util/ZoneInfo;)[B

    move-result-object v5

    aget-byte v3, v5, v2

    .line 392
    .local v3, "transitionType":B
    # getter for: Llibcore/util/ZoneInfo;->mOffsets:[I
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$300(Llibcore/util/ZoneInfo;)[I

    move-result-object v5

    aget v5, v5, v3

    add-int/2addr v1, v5

    .line 393
    # getter for: Llibcore/util/ZoneInfo;->mIsDsts:[B
    invoke-static {p2}, Llibcore/util/ZoneInfo;->access$400(Llibcore/util/ZoneInfo;)[B

    move-result-object v5

    aget-byte v0, v5, v3
    :try_end_3e
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_0 .. :try_end_3e} :catch_3f

    .restart local v0    # "isDst":B
    goto :goto_e

    .line 405
    .end local v0    # "isDst":B
    .end local v1    # "offsetSeconds":I
    .end local v2    # "transitionIndex":I
    .end local v3    # "transitionType":B
    :catch_3f
    move-exception v5

    goto :goto_22
.end method

.method public mktime(Llibcore/util/ZoneInfo;)I
    .registers 16
    .param p1, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 436
    iget v11, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-lez v11, :cond_27

    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    :goto_9
    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 438
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsToCalendar()V

    .line 439
    iget-object v8, p0, Llibcore/util/ZoneInfo$WallTime;->calendar:Ljava/util/GregorianCalendar;

    invoke-virtual {v8}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long v2, v10, v12

    .line 440
    .local v2, "longWallTimeSeconds":J
    const-wide/32 v10, -0x80000000

    cmp-long v8, v10, v2

    if-gtz v8, :cond_26

    const-wide/32 v10, 0x7fffffff

    cmp-long v8, v2, v10

    if-lez v8, :cond_31

    .line 501
    :cond_26
    :goto_26
    return v9

    .line 436
    .end local v2    # "longWallTimeSeconds":J
    :cond_27
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gez v8, :cond_2f

    iput v9, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    move v8, v9

    goto :goto_9

    :cond_2f
    move v8, v10

    goto :goto_9

    .line 448
    .restart local v2    # "longWallTimeSeconds":J
    :cond_31
    long-to-int v7, v2

    .line 449
    .local v7, "wallTimeSeconds":I
    :try_start_32
    # getter for: Llibcore/util/ZoneInfo;->mRawOffset:I
    invoke-static {p1}, Llibcore/util/ZoneInfo;->access$000(Llibcore/util/ZoneInfo;)I

    move-result v8

    div-int/lit16 v4, v8, 0x3e8

    .line 450
    .local v4, "rawOffsetSeconds":I
    # invokes: Llibcore/util/ZoneInfo;->checkedSubtract(II)I
    invoke-static {v7, v4}, Llibcore/util/ZoneInfo;->access$600(II)I

    move-result v5

    .line 452
    .local v5, "rawTimeSeconds":I
    # getter for: Llibcore/util/ZoneInfo;->mTransitions:[I
    invoke-static {p1}, Llibcore/util/ZoneInfo;->access$100(Llibcore/util/ZoneInfo;)[I

    move-result-object v8

    array-length v8, v8

    if-nez v8, :cond_51

    .line 454
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gtz v8, :cond_26

    .line 458
    invoke-direct {p0}, Llibcore/util/ZoneInfo$WallTime;->copyFieldsFromCalendar()V

    .line 459
    const/4 v8, 0x0

    iput v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 460
    iput v4, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    move v9, v5

    .line 461
    goto :goto_26

    .line 472
    :cond_51
    invoke-static {p1, v5}, Llibcore/util/ZoneInfo$WallTime;->findTransitionIndex(Llibcore/util/ZoneInfo;I)I

    move-result v1

    .line 474
    .local v1, "initialTransitionIndex":I
    iget v8, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    if-gez v8, :cond_65

    .line 480
    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    .line 482
    .local v6, "result":Ljava/lang/Integer;
    if-eqz v6, :cond_26

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_26

    .line 490
    .end local v6    # "result":Ljava/lang/Integer;
    :cond_65
    const/4 v8, 0x1

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    .line 492
    .restart local v6    # "result":Ljava/lang/Integer;
    if-nez v6, :cond_71

    .line 493
    const/4 v8, 0x0

    invoke-direct {p0, p1, v1, v7, v8}, Llibcore/util/ZoneInfo$WallTime;->doWallTimeSearch(Llibcore/util/ZoneInfo;IIZ)Ljava/lang/Integer;

    move-result-object v6

    .line 496
    :cond_71
    if-nez v6, :cond_78

    .line 497
    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 499
    :cond_78
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_7b
    .catch Llibcore/util/ZoneInfo$CheckedArithmeticException; {:try_start_32 .. :try_end_7b} :catch_7d

    move-result v9

    goto :goto_26

    .line 500
    .end local v1    # "initialTransitionIndex":I
    .end local v4    # "rawOffsetSeconds":I
    .end local v5    # "rawTimeSeconds":I
    .end local v6    # "result":Ljava/lang/Integer;
    :catch_7d
    move-exception v0

    .line 501
    .local v0, "e":Llibcore/util/ZoneInfo$CheckedArithmeticException;
    goto :goto_26
.end method

.method public setGmtOffset(I)V
    .registers 2
    .param p1, "gmtoff"    # I

    .prologue
    .line 761
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->gmtOffsetSeconds:I

    .line 762
    return-void
.end method

.method public setHour(I)V
    .registers 2
    .param p1, "hour"    # I

    .prologue
    .line 737
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->hour:I

    .line 738
    return-void
.end method

.method public setIsDst(I)V
    .registers 2
    .param p1, "isDst"    # I

    .prologue
    .line 757
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->isDst:I

    .line 758
    return-void
.end method

.method public setMinute(I)V
    .registers 2
    .param p1, "minute"    # I

    .prologue
    .line 741
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->minute:I

    .line 742
    return-void
.end method

.method public setMonth(I)V
    .registers 2
    .param p1, "month"    # I

    .prologue
    .line 729
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->month:I

    .line 730
    return-void
.end method

.method public setMonthDay(I)V
    .registers 2
    .param p1, "monthDay"    # I

    .prologue
    .line 733
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->monthDay:I

    .line 734
    return-void
.end method

.method public setSecond(I)V
    .registers 2
    .param p1, "second"    # I

    .prologue
    .line 745
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->second:I

    .line 746
    return-void
.end method

.method public setWeekDay(I)V
    .registers 2
    .param p1, "weekDay"    # I

    .prologue
    .line 749
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->weekDay:I

    .line 750
    return-void
.end method

.method public setYear(I)V
    .registers 2
    .param p1, "year"    # I

    .prologue
    .line 725
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->year:I

    .line 726
    return-void
.end method

.method public setYearDay(I)V
    .registers 2
    .param p1, "yearDay"    # I

    .prologue
    .line 753
    iput p1, p0, Llibcore/util/ZoneInfo$WallTime;->yearDay:I

    .line 754
    return-void
.end method
