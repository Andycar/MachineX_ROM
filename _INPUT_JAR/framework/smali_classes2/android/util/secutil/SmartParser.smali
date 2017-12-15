.class public Landroid/util/secutil/SmartParser;
.super Ljava/lang/Object;
.source "SmartParser.java"


# static fields
.field static final DEBUG:Z = true

.field private static final DELIMITER:Ljava/lang/String; = "\uff03"

.field static final TAG:Ljava/lang/String; = "SmartParser"


# instance fields
.field private dayOfToday:I

.field mContext:Landroid/content/Context;

.field private mDegree:I

.field private mParsingData:Landroid/util/secutil/SmartParsingData;

.field private mWorkStr:Ljava/lang/String;

.field private mWorkStrForMillis:Ljava/lang/String;

.field private monthOfToday:I

.field private today:Ljava/util/Calendar;

.field private yearOfToday:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    .line 38
    invoke-virtual {p0, p1}, Landroid/util/secutil/SmartParser;->init(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Landroid/util/secutil/SmartParser;->doParsing()V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "degree"    # I

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    .line 44
    iput p3, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    .line 46
    invoke-virtual {p0, p1}, Landroid/util/secutil/SmartParser;->init(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Landroid/util/secutil/SmartParser;->doParsing()V

    .line 48
    return-void
.end method

.method private arrangeRemainData()V
    .registers 4

    .prologue
    .line 260
    const-string v1, "(\uff03|[[:space:]])+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 261
    .local v0, "p":Ljava/util/regex/Pattern;
    iget-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 262
    return-void
.end method

.method private convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;
    .registers 12
    .param p1, "dateStr"    # Ljava/lang/String;
    .param p2, "patternType"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 320
    new-instance v4, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 331
    .local v4, "t":Landroid/text/format/Time;
    if-ne p2, v6, :cond_ea

    .line 332
    :try_start_c
    const-string v5, "[[[:space:]]\\-\\/\\.\ub144\uc6d4\uc77c]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "separated":[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v8, :cond_a3

    .line 334
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 335
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 336
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 365
    :goto_32
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 366
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 367
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->second:I

    .line 369
    const-string v5, "SmartParser"

    const-string v6, "convertDateToMillis() completed successfully"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", minute:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", second:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->second:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 373
    .local v2, "result":J
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 377
    .end local v1    # "separated":[Ljava/lang/String;
    .end local v2    # "result":J
    :goto_a2
    return-object v5

    .line 337
    .restart local v1    # "separated":[Ljava/lang/String;
    :cond_a3
    array-length v5, v1

    if-ne v5, v7, :cond_e0

    .line 338
    iget v5, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 339
    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 340
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_be} :catch_c0

    goto/16 :goto_32

    .line 375
    .end local v1    # "separated":[Ljava/lang/String;
    :catch_c0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail convertDateToMillis() by exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    const-string v5, ""

    goto :goto_a2

    .line 342
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "separated":[Ljava/lang/String;
    :cond_e0
    :try_start_e0
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid length. (type:1)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const-string v5, ""

    goto :goto_a2

    .line 346
    .end local v1    # "separated":[Ljava/lang/String;
    :cond_ea
    if-ne p2, v7, :cond_154

    .line 347
    const-string v5, "[[[:space:]]\\,\\.]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 348
    .restart local v1    # "separated":[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v8, :cond_120

    .line 349
    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 350
    sget-object v5, Landroid/util/secutil/SmartPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 351
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/util/secutil/SmartParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_32

    .line 352
    :cond_120
    array-length v5, v1

    if-ne v5, v7, :cond_149

    .line 353
    iget v5, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 354
    sget-object v5, Landroid/util/secutil/SmartPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 355
    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/util/secutil/SmartParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_32

    .line 357
    :cond_149
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid length. (type:2)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const-string v5, ""

    goto/16 :goto_a2

    .line 361
    .end local v1    # "separated":[Ljava/lang/String;
    :cond_154
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid patternType : "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const-string v5, ""
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_15d} :catch_c0

    goto/16 :goto_a2
.end method

.method private convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p1, "timeStr"    # Ljava/lang/String;

    .prologue
    .line 396
    new-instance v13, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 399
    .local v13, "t":Landroid/text/format/Time;
    :try_start_7
    const-string v14, "((Time|time|\uc2dc\uac04)[[[:space:]]\\:\\;\\-]+)"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 400
    .local v9, "prefixPattern":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    .line 401
    .local v8, "prefixMatcher":Ljava/util/regex/Matcher;
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/String;

    .line 404
    .local v12, "separated":[Ljava/lang/String;
    const-string/jumbo v2, "\uc624\uc804"

    .line 405
    .local v2, "amOfEachCountry":Ljava/lang/String;
    const-string/jumbo v7, "\uc624\ud6c4"

    .line 407
    .local v7, "pmOfEachCountry":Ljava/lang/String;
    const-string v14, "[0-9]+"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 408
    .local v6, "p":Ljava/util/regex/Pattern;
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 410
    .local v5, "m":Ljava/util/regex/Matcher;
    const/4 v4, 0x0

    .line 411
    .local v4, "i":I
    :goto_35
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_45

    .line 412
    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v4

    .line 413
    add-int/lit8 v4, v4, 0x1

    goto :goto_35

    .line 416
    :cond_45
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v14, v13, Landroid/text/format/Time;->year:I

    .line 417
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/secutil/SmartParser;->monthOfToday:I

    iput v14, v13, Landroid/text/format/Time;->month:I

    .line 418
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/secutil/SmartParser;->dayOfToday:I

    iput v14, v13, Landroid/text/format/Time;->monthDay:I

    .line 420
    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 422
    const-string/jumbo v14, "pm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7d

    const-string v14, "PM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7d

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_109

    .line 423
    :cond_7d
    iget v14, v13, Landroid/text/format/Time;->hour:I

    const/16 v15, 0xc

    if-eq v14, v15, :cond_89

    .line 424
    iget v14, v13, Landroid/text/format/Time;->hour:I

    add-int/lit8 v14, v14, 0xc

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 434
    :cond_89
    :goto_89
    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/text/format/Time;->minute:I

    .line 435
    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    .line 437
    const-string v14, "SmartParser"

    const-string v15, "convertTimeToMillis() completed successfully"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const-string v14, "SmartParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->month:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", minute:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", second:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 441
    .local v10, "result":J
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 445
    .end local v2    # "amOfEachCountry":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .end local v7    # "pmOfEachCountry":Ljava/lang/String;
    .end local v8    # "prefixMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "prefixPattern":Ljava/util/regex/Pattern;
    .end local v10    # "result":J
    .end local v12    # "separated":[Ljava/lang/String;
    :goto_108
    return-object v14

    .line 426
    .restart local v2    # "amOfEachCountry":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "m":Ljava/util/regex/Matcher;
    .restart local v6    # "p":Ljava/util/regex/Pattern;
    .restart local v7    # "pmOfEachCountry":Ljava/lang/String;
    .restart local v8    # "prefixMatcher":Ljava/util/regex/Matcher;
    .restart local v9    # "prefixPattern":Ljava/util/regex/Pattern;
    .restart local v12    # "separated":[Ljava/lang/String;
    :cond_109
    const-string v14, "am"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_125

    const-string v14, "AM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_125

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_150

    .line 427
    :cond_125
    iget v14, v13, Landroid/text/format/Time;->hour:I

    const/16 v15, 0xc

    if-ne v14, v15, :cond_89

    .line 428
    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_12e} :catch_130

    goto/16 :goto_89

    .line 443
    .end local v2    # "amOfEachCountry":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local v6    # "p":Ljava/util/regex/Pattern;
    .end local v7    # "pmOfEachCountry":Ljava/lang/String;
    .end local v8    # "prefixMatcher":Ljava/util/regex/Matcher;
    .end local v9    # "prefixPattern":Ljava/util/regex/Pattern;
    .end local v12    # "separated":[Ljava/lang/String;
    :catch_130
    move-exception v3

    .line 444
    .local v3, "e":Ljava/lang/Exception;
    const-string v14, "SmartParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail convertTimeToMillis() by exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v14, ""

    goto :goto_108

    .line 431
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "amOfEachCountry":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "m":Ljava/util/regex/Matcher;
    .restart local v6    # "p":Ljava/util/regex/Pattern;
    .restart local v7    # "pmOfEachCountry":Ljava/lang/String;
    .restart local v8    # "prefixMatcher":Ljava/util/regex/Matcher;
    .restart local v9    # "prefixPattern":Ljava/util/regex/Pattern;
    .restart local v12    # "separated":[Ljava/lang/String;
    :cond_150
    const/4 v14, 0x0

    :try_start_151
    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/text/format/Time;->hour:I
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_151 .. :try_end_159} :catch_130

    goto/16 :goto_89
.end method

.method private parsingDateInfo()V
    .registers 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 134
    const-string v9, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 135
    .local v5, "p1":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 136
    .local v1, "m1":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 138
    :goto_1d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_49

    .line 139
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 142
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 146
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_49
    const-string v9, "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 147
    .local v6, "p2":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 148
    .local v2, "m2":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 150
    :goto_64
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_90

    .line 151
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 154
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 158
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_90
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/util/secutil/SmartPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_f5

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_f5

    .line 160
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "countryDateString":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 164
    .local v7, "p3":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 165
    .local v3, "m3":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 167
    :goto_c9
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_f5

    .line 168
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 171
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c9

    .line 174
    .end local v0    # "countryDateString":Ljava/lang/String;
    .end local v3    # "m3":Ljava/util/regex/Matcher;
    .end local v4    # "matchString":Ljava/lang/String;
    .end local v7    # "p3":Ljava/util/regex/Pattern;
    :cond_f5
    return-void
.end method

.method private parsingDateMillisInfo()V
    .registers 16

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x6

    const/4 v12, 0x0

    .line 77
    const-string v9, "((((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 79
    .local v5, "p1":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 80
    .local v1, "m1":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 82
    :goto_1e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_4e

    .line 83
    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v4, v14}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 85
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 89
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_4e
    const-string v9, "((((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 91
    .local v6, "p2":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 92
    .local v2, "m2":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 94
    :goto_69
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 95
    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v10, 0x2

    invoke-direct {p0, v4, v10}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 97
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_69

    .line 101
    .end local v4    # "matchString":Ljava/lang/String;
    :cond_9a
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/util/secutil/SmartPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "countryDateString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_11c

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_11c

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .local v8, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 108
    .local v7, "p3":Ljava/util/regex/Pattern;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 109
    .local v3, "m3":Ljava/util/regex/Matcher;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 111
    :goto_ec
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 112
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 113
    .restart local v4    # "matchString":Ljava/lang/String;
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v4, v14}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 114
    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ec

    .line 117
    .end local v3    # "m3":Ljava/util/regex/Matcher;
    .end local v4    # "matchString":Ljava/lang/String;
    .end local v7    # "p3":Ljava/util/regex/Pattern;
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_11c
    return-void
.end method

.method private parsingEmailInfo()V
    .registers 10

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 222
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_60

    .line 223
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 227
    .local v3, "p":Ljava/util/regex/Pattern;
    :goto_8
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 229
    .local v1, "m":Ljava/util/regex/Matcher;
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-lt v4, v8, :cond_21

    .line 230
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "\uff03"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 232
    :cond_21
    sget-object v0, Landroid/util/secutil/SmartPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 234
    .local v0, "hyphen":Ljava/util/regex/Pattern;
    :goto_23
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 235
    const-string v2, ""

    .line 236
    .local v2, "matchString":Ljava/lang/String;
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-lt v4, v8, :cond_63

    .line 237
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 241
    :goto_37
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 243
    const-string v4, "SmartParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add email address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 225
    .end local v0    # "hyphen":Ljava/util/regex/Pattern;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "matchString":Ljava/lang/String;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    :cond_60
    sget-object v3, Landroid/util/secutil/SmartPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    .restart local v3    # "p":Ljava/util/regex/Pattern;
    goto :goto_8

    .line 239
    .restart local v0    # "hyphen":Ljava/util/regex/Pattern;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v2    # "matchString":Ljava/lang/String;
    :cond_63
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_37

    .line 245
    .end local v2    # "matchString":Ljava/lang/String;
    :cond_6c
    return-void
.end method

.method private parsingPhoneNumInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 191
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_63

    .line 192
    sget-object v3, Landroid/util/secutil/SmartPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 196
    .local v3, "p":Ljava/util/regex/Pattern;
    :goto_7
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 197
    .local v1, "m":Ljava/util/regex/Matcher;
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "\uff03"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 199
    sget-object v0, Landroid/util/secutil/SmartPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    .line 201
    .local v0, "hyphen":Ljava/util/regex/Pattern;
    :cond_1e
    :goto_1e
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 202
    const-string v2, ""

    .line 203
    .local v2, "matchString":Ljava/lang/String;
    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    const/4 v5, -0x1

    if-lt v4, v5, :cond_66

    .line 204
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 209
    :goto_33
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_1e

    .line 212
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 213
    const-string v4, "SmartParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add tel number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 194
    .end local v0    # "hyphen":Ljava/util/regex/Pattern;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "matchString":Ljava/lang/String;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    :cond_63
    sget-object v3, Landroid/util/secutil/SmartPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    .restart local v3    # "p":Ljava/util/regex/Pattern;
    goto :goto_7

    .line 206
    .restart local v0    # "hyphen":Ljava/util/regex/Pattern;
    .restart local v1    # "m":Ljava/util/regex/Matcher;
    .restart local v2    # "matchString":Ljava/lang/String;
    :cond_66
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_33

    .line 217
    .end local v2    # "matchString":Ljava/lang/String;
    :cond_6f
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->refactoringPhoneNumber()V

    .line 218
    return-void
.end method

.method private parsingTimeInfo()V
    .registers 7

    .prologue
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/util/secutil/SmartPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 178
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 179
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 181
    :goto_32
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 182
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "matchString":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 185
    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 187
    .end local v1    # "matchString":Ljava/lang/String;
    :cond_60
    return-void
.end method

.method private parsingTimeMillisInfo()V
    .registers 7

    .prologue
    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/util/secutil/SmartPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 122
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 123
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 125
    :goto_38
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 126
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "matchString":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v1}, Landroid/util/secutil/SmartParser;->convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 128
    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add time for millis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 130
    .end local v1    # "matchString":Ljava/lang/String;
    :cond_6a
    return-void
.end method

.method private parsingURLInfo()V
    .registers 7

    .prologue
    .line 248
    sget-object v2, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    .line 249
    .local v2, "p":Ljava/util/regex/Pattern;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 250
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 252
    :goto_17
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_45

    .line 253
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "matchString":Ljava/lang/String;
    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 255
    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 257
    .end local v1    # "matchString":Ljava/lang/String;
    :cond_45
    return-void
.end method

.method private refactoringPhoneNumber()V
    .registers 11

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 296
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v9}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_70

    .line 297
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v9}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 298
    .local v4, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 300
    .local v3, "spaceCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_19
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_2c

    .line 301
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_29

    .line 302
    add-int/lit8 v3, v3, 0x1

    .line 300
    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 306
    :cond_2c
    if-lez v3, :cond_70

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    if-le v5, v6, :cond_70

    .line 307
    sget-object v2, Landroid/util/secutil/SmartPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    .line 308
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 309
    .local v1, "m":Ljava/util/regex/Matcher;
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v8, v9}, Landroid/util/secutil/SmartParsingData;->deleteInfo(II)Z

    .line 311
    :goto_44
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 312
    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    .line 313
    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add refactoring phone number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 317
    .end local v0    # "i":I
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "p":Ljava/util/regex/Pattern;
    .end local v3    # "spaceCount":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_70
    return-void
.end method

.method private removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "onlyStartEndCheck"    # Z

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v2, ""

    .line 276
    .local v2, "result":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 277
    :cond_17
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 280
    :cond_1b
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 281
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 284
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 286
    if-nez p2, :cond_4c

    .line 287
    const-string v4, "[:space:]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 288
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 292
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_4b
    return-object v3

    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_4c
    move-object v3, v2

    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_4b
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v0}, Landroid/util/secutil/SmartParsingData;->clear()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    .line 452
    return-void
.end method

.method public convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "dayStr"    # Ljava/lang/String;

    .prologue
    .line 382
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_45

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "st"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string v1, "nd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "rd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "th"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 386
    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 389
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 391
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local p1    # "dayStr":Ljava/lang/String;
    :cond_45
    return-object p1
.end method

.method public doParsing()V
    .registers 3

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingEmailInfo()V

    .line 64
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingDateInfo()V

    .line 65
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingTimeInfo()V

    .line 66
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingPhoneNumInfo()V

    .line 67
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingURLInfo()V

    .line 68
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingDateMillisInfo()V

    .line 69
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingTimeMillisInfo()V

    .line 70
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->arrangeRemainData()V

    .line 72
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    iget-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/secutil/SmartParsingData;->setRemainData(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public getTotalData()Landroid/util/secutil/SmartParsingData;
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Landroid/util/secutil/SmartParsingData;

    invoke-direct {v0}, Landroid/util/secutil/SmartParsingData;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    .line 52
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v0, p1}, Landroid/util/secutil/SmartParsingData;->setOriginalData(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    .line 56
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    .line 57
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    .line 58
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->monthOfToday:I

    .line 59
    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->dayOfToday:I

    .line 60
    return-void
.end method
