.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "WebVttRenderer.java"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x0

    .line 416
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 417
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 419
    iput v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 420
    const-string v0, ""

    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 422
    iput-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 423
    const/16 v0, 0x32

    iput v0, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 424
    iput v2, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 425
    const/16 v0, 0xc8

    iput v0, p0, Landroid/media/TextTrackCue;->mAlignment:I

    move-object v0, v1

    .line 426
    check-cast v0, [[Landroid/media/TextTrackCueSpan;

    iput-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 427
    iput-object v1, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 428
    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 20
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 490
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    if-nez v14, :cond_f

    .line 491
    const-string/jumbo v14, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :goto_e
    return-object p1

    .line 493
    :cond_f
    const-string v14, "["

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const/4 v4, 0x1

    .line 495
    .local v4, "first":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .local v2, "arr$":[[Landroid/media/TextTrackCueSpan;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[[Landroid/media/TextTrackCueSpan;
    .end local v5    # "i$":I
    .end local v10    # "len$":I
    .local v6, "i$":I
    :goto_1e
    if-ge v6, v10, :cond_88

    aget-object v13, v2, v6

    .line 496
    .local v13, "spans":[Landroid/media/TextTrackCueSpan;
    if-nez v4, :cond_2b

    .line 497
    const-string v14, ", "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    :cond_2b
    if-nez v13, :cond_3a

    .line 500
    const-string/jumbo v14, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .end local v6    # "i$":I
    :goto_35
    const/4 v4, 0x0

    .line 495
    add-int/lit8 v5, v6, 0x1

    .restart local v5    # "i$":I
    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1e

    .line 502
    :cond_3a
    const-string v14, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const/4 v7, 0x1

    .line 504
    .local v7, "innerFirst":Z
    const-wide/16 v8, -0x1

    .line 505
    .local v8, "lastTimestamp":J
    move-object v3, v13

    .local v3, "arr$":[Landroid/media/TextTrackCueSpan;
    array-length v11, v3

    .local v11, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_47
    if-ge v5, v11, :cond_80

    aget-object v12, v3, v5

    .line 506
    .local v12, "span":Landroid/media/TextTrackCueSpan;
    if-nez v7, :cond_54

    .line 507
    const-string v14, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_54
    iget-wide v14, v12, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v14, v14, v8

    if-eqz v14, :cond_75

    .line 510
    const-string v14, "<"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v12, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    iget-wide v8, v12, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 516
    :cond_75
    iget-object v14, v12, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    const/4 v7, 0x0

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    .line 519
    .end local v12    # "span":Landroid/media/TextTrackCueSpan;
    :cond_80
    const-string v14, "\""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 523
    .end local v3    # "arr$":[Landroid/media/TextTrackCueSpan;
    .end local v5    # "i$":I
    .end local v7    # "innerFirst":Z
    .end local v8    # "lastTimestamp":J
    .end local v11    # "len$":I
    .end local v13    # "spans":[Landroid/media/TextTrackCueSpan;
    .restart local v6    # "i$":I
    :cond_88
    const-string v14, "]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .registers 8
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 466
    iget-object v5, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    if-nez v5, :cond_b

    .line 467
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    :goto_a
    return-object p1

    .line 469
    :cond_b
    const-string v5, "["

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    const/4 v1, 0x1

    .line 471
    .local v1, "first":Z
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_15
    if-ge v2, v3, :cond_3a

    aget-object v4, v0, v2

    .line 472
    .local v4, "s":Ljava/lang/String;
    if-nez v1, :cond_20

    .line 473
    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :cond_20
    if-nez v4, :cond_2c

    .line 476
    const-string/jumbo v5, "null"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    :goto_28
    const/4 v1, 0x0

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 478
    :cond_2c
    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 484
    .end local v4    # "s":Ljava/lang/String;
    :cond_3a
    const-string v5, "]"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 432
    instance-of v7, p1, Landroid/media/TextTrackCue;

    if-nez v7, :cond_8

    move v4, v5

    .line 461
    :cond_7
    :goto_7
    return v4

    .line 435
    :cond_8
    if-ne p0, p1, :cond_c

    move v4, v6

    .line 436
    goto :goto_7

    .line 440
    :cond_c
    :try_start_c
    move-object v0, p1

    check-cast v0, Landroid/media/TextTrackCue;

    move-object v1, v0

    .line 441
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v7, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v8, v1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    iget-boolean v7, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v8, v1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v7, v8, :cond_79

    iget v7, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v8, v1, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v7, v8, :cond_79

    iget-object v7, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v8, v1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_79

    iget-boolean v7, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v8, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v7, v8, :cond_79

    iget-boolean v7, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v8, v1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v7, v8, :cond_79

    iget-boolean v7, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-nez v7, :cond_46

    iget-object v7, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v8, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-ne v7, v8, :cond_79

    :cond_46
    iget v7, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v8, v1, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v7, v8, :cond_79

    iget v7, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v8, v1, Landroid/media/TextTrackCue;->mSize:I

    if-ne v7, v8, :cond_79

    iget v7, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v8, v1, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v7, v8, :cond_79

    iget-object v7, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v7, v7

    iget-object v8, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v8, v8

    if-ne v7, v8, :cond_79

    move v4, v6

    .line 452
    .local v4, "res":Z
    :goto_61
    if-ne v4, v6, :cond_7

    .line 453
    const/4 v3, 0x0

    .local v3, "line":I
    :goto_64
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v6, v6

    if-ge v3, v6, :cond_7

    .line 454
    iget-object v6, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v6, v6, v3

    iget-object v7, v1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v7, v7, v3

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
    :try_end_74
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_c .. :try_end_74} :catch_7e

    move-result v6

    if-nez v6, :cond_7b

    move v4, v5

    .line 455
    goto :goto_7

    .end local v3    # "line":I
    .end local v4    # "res":Z
    :cond_79
    move v4, v5

    .line 441
    goto :goto_61

    .line 453
    .restart local v3    # "line":I
    .restart local v4    # "res":Z
    :cond_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 460
    .end local v1    # "cue":Landroid/media/TextTrackCue;
    .end local v3    # "line":I
    .end local v4    # "res":Z
    :catch_7e
    move-exception v2

    .local v2, "e":Ljava/lang/IncompatibleClassChangeError;
    move v4, v5

    .line 461
    goto :goto_7
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 559
    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTime(J)V
    .registers 14
    .param p1, "timeMs"    # J

    .prologue
    .line 564
    iget-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .local v0, "arr$":[[Landroid/media/TextTrackCueSpan;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[[Landroid/media/TextTrackCueSpan;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_22

    aget-object v6, v0, v3

    .line 565
    .local v6, "line":[Landroid/media/TextTrackCueSpan;
    move-object v1, v6

    .local v1, "arr$":[Landroid/media/TextTrackCueSpan;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_c
    if-ge v2, v5, :cond_1e

    aget-object v7, v1, v2

    .line 566
    .local v7, "span":Landroid/media/TextTrackCueSpan;
    iget-wide v8, v7, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v8, p1, v8

    if-ltz v8, :cond_1c

    const/4 v8, 0x1

    :goto_17
    iput-boolean v8, v7, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 565
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 566
    :cond_1c
    const/4 v8, 0x0

    goto :goto_17

    .line 564
    .end local v7    # "span":Landroid/media/TextTrackCueSpan;
    :cond_1e
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_5

    .line 569
    .end local v1    # "arr$":[Landroid/media/TextTrackCueSpan;
    .end local v5    # "len$":I
    .end local v6    # "line":[Landroid/media/TextTrackCueSpan;
    :cond_22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 531
    .local v0, "res":Ljava/lang/StringBuilder;
    iget-wide v2, p0, Landroid/media/TextTrackCue;->mStartTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/TextTrackCue;->mEndTimeMs:J

    invoke-static {v2, v3}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " {id:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", pauseOnExit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", direction:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x64

    if-ne v1, v3, :cond_af

    const-string v1, "horizontal"

    :goto_45
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", regionId:\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", snapToLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", linePosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_c6

    const-string v1, "auto"

    :goto_6d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", textPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alignment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xca

    if-ne v1, v3, :cond_c9

    const-string v1, "end"

    :goto_97
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 531
    :cond_af
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x66

    if-ne v1, v3, :cond_b9

    const-string/jumbo v1, "vertical_lr"

    goto :goto_45

    :cond_b9
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const/16 v3, 0x65

    if-ne v1, v3, :cond_c3

    const-string/jumbo v1, "vertical_rl"

    goto :goto_45

    :cond_c3
    const-string v1, "INVALID"

    goto :goto_45

    :cond_c6
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    goto :goto_6d

    :cond_c9
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcb

    if-ne v1, v3, :cond_d2

    const-string v1, "left"

    goto :goto_97

    :cond_d2
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_dc

    const-string/jumbo v1, "middle"

    goto :goto_97

    :cond_dc
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xcc

    if-ne v1, v3, :cond_e6

    const-string/jumbo v1, "right"

    goto :goto_97

    :cond_e6
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xc9

    if-ne v1, v3, :cond_f0

    const-string/jumbo v1, "start"

    goto :goto_97

    :cond_f0
    const-string v1, "INVALID"

    goto :goto_97
.end method
