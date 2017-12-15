.class Landroid/text/format/TimeFormatter;
.super Ljava/lang/Object;
.source "TimeFormatter.java"


# static fields
.field private static final DAYSPERLYEAR:I = 0x16e

.field private static final DAYSPERNYEAR:I = 0x16d

.field private static final DAYSPERWEEK:I = 0x7

.field private static final FORCE_LOWER_CASE:I = -0x1

.field private static final HOURSPERDAY:I = 0x18

.field private static final MINSPERHOUR:I = 0x3c

.field private static final MONSPERYEAR:I = 0xc

.field private static final SECSPERMIN:I = 0x3c

.field private static sDateOnlyFormat:Ljava/lang/String;

.field private static sDateTimeFormat:Ljava/lang/String;

.field private static sLocale:Ljava/util/Locale;

.field private static sLocaleData:Llibcore/icu/LocaleData;

.field private static sTimeOnlyFormat:Ljava/lang/String;


# instance fields
.field private final dateOnlyFormat:Ljava/lang/String;

.field private final dateTimeFormat:Ljava/lang/String;

.field private final localeData:Llibcore/icu/LocaleData;

.field private numberFormatter:Ljava/util/Formatter;

.field private outputBuilder:Ljava/lang/StringBuilder;

.field private final timeOnlyFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-class v3, Landroid/text/format/TimeFormatter;

    monitor-enter v3

    .line 68
    :try_start_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 70
    .local v0, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    if-eqz v2, :cond_16

    sget-object v2, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3d

    .line 71
    :cond_16
    sput-object v0, Landroid/text/format/TimeFormatter;->sLocale:Ljava/util/Locale;

    .line 72
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    .line 74
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 75
    .local v1, "r":Landroid/content/res/Resources;
    const v2, 0x1040062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    .line 76
    const v2, 0x1040061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    .line 77
    const v2, 0x1040063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    .line 80
    .end local v1    # "r":Landroid/content/res/Resources;
    :cond_3d
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateTimeFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    .line 81
    sget-object v2, Landroid/text/format/TimeFormatter;->sTimeOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    .line 82
    sget-object v2, Landroid/text/format/TimeFormatter;->sDateOnlyFormat:Ljava/lang/String;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    .line 83
    sget-object v2, Landroid/text/format/TimeFormatter;->sLocaleData:Llibcore/icu/LocaleData;

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    .line 84
    monitor-exit v3

    .line 85
    return-void

    .line 84
    .end local v0    # "locale":Ljava/util/Locale;
    :catchall_4f
    move-exception v2

    monitor-exit v3
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method private static brokenIsLower(C)Z
    .registers 2
    .param p0, "toCheck"    # C

    .prologue
    .line 475
    const/16 v0, 0x61

    if-lt p0, v0, :cond_a

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static brokenIsUpper(C)Z
    .registers 2
    .param p0, "toCheck"    # C

    .prologue
    .line 467
    const/16 v0, 0x41

    if-lt p0, v0, :cond_a

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static brokenToLower(C)C
    .registers 2
    .param p0, "input"    # C

    .prologue
    .line 483
    const/16 v0, 0x41

    if-lt p0, v0, :cond_d

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_d

    .line 484
    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char p0, v0

    .line 486
    .end local p0    # "input":C
    :cond_d
    return p0
.end method

.method private static brokenToUpper(C)C
    .registers 2
    .param p0, "input"    # C

    .prologue
    .line 494
    const/16 v0, 0x61

    if-lt p0, v0, :cond_d

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_d

    .line 495
    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char p0, v0

    .line 497
    .end local p0    # "input":C
    :cond_d
    return p0
.end method

.method private formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 132
    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 133
    .local v1, "formatBuffer":Ljava/nio/CharBuffer;
    :goto_4
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    if-lez v3, :cond_34

    .line 134
    const/4 v2, 0x1

    .line 135
    .local v2, "outputCurrentChar":Z
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->get(I)C

    move-result v0

    .line 136
    .local v0, "currentChar":C
    const/16 v3, 0x25

    if-ne v0, v3, :cond_1b

    .line 137
    invoke-direct {p0, v1, p2, p3}, Landroid/text/format/TimeFormatter;->handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z

    move-result v2

    .line 139
    :cond_1b
    if-eqz v2, :cond_2a

    .line 140
    iget-object v3, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/nio/CharBuffer;->get(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 142
    :cond_2a
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_4

    .line 144
    .end local v0    # "currentChar":C
    .end local v2    # "outputCurrentChar":Z
    :cond_34
    return-void
.end method

.method private static getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "modifier"    # I
    .param p1, "normal"    # Ljava/lang/String;
    .param p2, "underscore"    # Ljava/lang/String;
    .param p3, "dash"    # Ljava/lang/String;
    .param p4, "zero"    # Ljava/lang/String;

    .prologue
    .line 447
    sparse-switch p0, :sswitch_data_a

    move-object p2, p1

    .line 455
    .end local p2    # "underscore":Ljava/lang/String;
    :goto_4
    :sswitch_4
    return-object p2

    .restart local p2    # "underscore":Ljava/lang/String;
    :sswitch_5
    move-object p2, p3

    .line 451
    goto :goto_4

    :sswitch_7
    move-object p2, p4

    .line 453
    goto :goto_4

    .line 447
    nop

    :sswitch_data_a
    .sparse-switch
        0x2d -> :sswitch_5
        0x30 -> :sswitch_7
        0x5f -> :sswitch_4
    .end sparse-switch
.end method

.method private handleToken(Ljava/nio/CharBuffer;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Z
    .registers 32
    .param p1, "formatBuffer"    # Ljava/nio/CharBuffer;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    .line 150
    const/4 v11, 0x0

    .line 151
    .local v11, "modifier":I
    :goto_1
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_70c

    .line 153
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 154
    invoke-virtual/range {p1 .. p1}, Ljava/nio/CharBuffer;->position()I

    move-result v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->get(I)C

    move-result v5

    .line 155
    .local v5, "currentChar":C
    packed-switch v5, :pswitch_data_710

    .line 383
    :pswitch_29
    const/16 v22, 0x1

    .line 386
    .end local v5    # "currentChar":C
    :goto_2b
    return v22

    .line 157
    .restart local v5    # "currentChar":C
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-ltz v22, :cond_3e

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4a

    :cond_3e
    const-string v22, "?"

    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 161
    const/16 v22, 0x0

    goto :goto_2b

    .line 157
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    goto :goto_40

    .line 163
    :pswitch_5f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-ltz v22, :cond_71

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_7d

    :cond_71
    const-string v22, "?"

    :goto_73
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 167
    const/16 v22, 0x0

    goto :goto_2b

    .line 163
    :cond_7d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    aget-object v22, v22, v23

    goto :goto_73

    .line 169
    :pswitch_92
    const/16 v22, 0x2d

    move/from16 v0, v22

    if-ne v11, v0, :cond_ca

    .line 170
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_aa

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_b7

    :cond_aa
    const-string v22, "?"

    :goto_ac
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 181
    :goto_b3
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 170
    :cond_b7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_ac

    .line 176
    :cond_ca
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_dc

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e6

    :cond_dc
    const-string v22, "?"

    :goto_de
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    goto :goto_b3

    :cond_e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_de

    .line 184
    :pswitch_f9
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    if-ltz v22, :cond_10b

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_118

    :cond_10b
    const-string v22, "?"

    :goto_10d
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 187
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 184
    :cond_118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v23

    aget-object v22, v22, v23

    goto :goto_10d

    .line 189
    :pswitch_12b
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 190
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 192
    :pswitch_142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateTimeFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 193
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 195
    :pswitch_157
    const-string v22, "%m/%d/%y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 196
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 198
    :pswitch_168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 200
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 210
    :pswitch_19d
    move v11, v5

    .line 211
    goto/16 :goto_1

    .line 213
    :pswitch_1a0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%2d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 215
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 217
    :pswitch_1d5
    const-string v22, "%Y-%m-%d"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 218
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 220
    :pswitch_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 222
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 224
    :pswitch_21b
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_25a

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v8, v22, 0xc

    .line 225
    .local v8, "hour":I
    :goto_229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 226
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 224
    .end local v8    # "hour":I
    :cond_25a
    const/16 v8, 0xc

    goto :goto_229

    .line 228
    :pswitch_25d
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v22

    add-int/lit8 v21, v22, 0x1

    .line 229
    .local v21, "yearDay":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%03d"

    const-string v24, "%3d"

    const-string v25, "%d"

    const-string v26, "%03d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 231
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 233
    .end local v21    # "yearDay":I
    :pswitch_294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%2d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 235
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 237
    :pswitch_2c9
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_308

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    rem-int/lit8 v13, v22, 0xc

    .line 238
    .local v13, "n2":I
    :goto_2d7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%2d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 239
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 237
    .end local v13    # "n2":I
    :cond_308
    const/16 v13, 0xc

    goto :goto_2d7

    .line 241
    :pswitch_30b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 243
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 245
    :pswitch_340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 247
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 249
    :pswitch_377
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0xa

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 252
    :pswitch_386
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3ad

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    :goto_3a2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 254
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 252
    :cond_3ad
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    goto :goto_3a2

    .line 256
    :pswitch_3be
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v22

    const/16 v23, 0xc

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_3e9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    aget-object v22, v22, v23

    :goto_3da
    const/16 v23, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 258
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 256
    :cond_3e9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    goto :goto_3da

    .line 260
    :pswitch_3fa
    const-string v22, "%H:%M"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 261
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 263
    :pswitch_40b
    const-string v22, "%I:%M:%S %p"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 264
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 266
    :pswitch_41c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 268
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 270
    :pswitch_451
    invoke-virtual/range {p2 .. p3}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v15

    .line 271
    .local v15, "timeInSeconds":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 274
    .end local v15    # "timeInSeconds":I
    :pswitch_466
    const-string v22, "%H:%M:%S"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 275
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 277
    :pswitch_477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 280
    :pswitch_486
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v26

    add-int/lit8 v26, v26, 0x7

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v27

    sub-int v26, v26, v27

    div-int/lit8 v26, v26, 0x7

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 283
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 285
    :pswitch_4c5
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-nez v22, :cond_4eb

    const/4 v6, 0x7

    .line 286
    .local v6, "day":I
    :goto_4cc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 287
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 285
    .end local v6    # "day":I
    :cond_4eb
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v6

    goto :goto_4cc

    .line 292
    :pswitch_4f0
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v20

    .line 293
    .local v20, "year":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v19

    .line 294
    .local v19, "yday":I
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v18

    .line 297
    .local v18, "wday":I
    :goto_4fc
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v22

    if-eqz v22, :cond_55d

    const/16 v10, 0x16e

    .line 299
    .local v10, "len":I
    :goto_504
    add-int/lit8 v22, v19, 0xb

    sub-int v22, v22, v18

    rem-int/lit8 v22, v22, 0x7

    add-int/lit8 v4, v22, -0x3

    .line 301
    .local v4, "bot":I
    rem-int/lit8 v22, v10, 0x7

    sub-int v16, v4, v22

    .line 302
    .local v16, "top":I
    const/16 v22, -0x3

    move/from16 v0, v16

    move/from16 v1, v22

    if-ge v0, v1, :cond_51a

    .line 303
    add-int/lit8 v16, v16, 0x7

    .line 305
    :cond_51a
    add-int v16, v16, v10

    .line 306
    move/from16 v0, v19

    move/from16 v1, v16

    if-lt v0, v1, :cond_560

    .line 307
    add-int/lit8 v20, v20, 0x1

    .line 308
    const/16 v17, 0x1

    .line 318
    .local v17, "w":I
    :goto_526
    const/16 v22, 0x56

    move/from16 v0, v22

    if-ne v5, v0, :cond_57b

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 325
    :goto_559
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 297
    .end local v4    # "bot":I
    .end local v10    # "len":I
    .end local v16    # "top":I
    .end local v17    # "w":I
    :cond_55d
    const/16 v10, 0x16d

    goto :goto_504

    .line 311
    .restart local v4    # "bot":I
    .restart local v10    # "len":I
    .restart local v16    # "top":I
    :cond_560
    move/from16 v0, v19

    if-lt v0, v4, :cond_56b

    .line 312
    sub-int v22, v19, v4

    div-int/lit8 v22, v22, 0x7

    add-int/lit8 v17, v22, 0x1

    .line 313
    .restart local v17    # "w":I
    goto :goto_526

    .line 315
    .end local v17    # "w":I
    :cond_56b
    add-int/lit8 v20, v20, -0x1

    .line 316
    invoke-static/range {v20 .. v20}, Landroid/text/format/TimeFormatter;->isLeap(I)Z

    move-result v22

    if-eqz v22, :cond_578

    const/16 v22, 0x16e

    :goto_575
    add-int v19, v19, v22

    .line 317
    goto :goto_4fc

    .line 316
    :cond_578
    const/16 v22, 0x16d

    goto :goto_575

    .line 320
    .restart local v17    # "w":I
    :cond_57b
    const/16 v22, 0x67

    move/from16 v0, v22

    if-ne v5, v0, :cond_591

    .line 321
    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_559

    .line 323
    :cond_591
    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    goto :goto_559

    .line 328
    .end local v4    # "bot":I
    .end local v10    # "len":I
    .end local v16    # "top":I
    .end local v17    # "w":I
    .end local v18    # "wday":I
    .end local v19    # "yday":I
    .end local v20    # "year":I
    :pswitch_5a1
    const-string v22, "%e-%b-%Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 329
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 331
    :pswitch_5b2
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v22

    add-int/lit8 v23, v22, 0x7

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    if-eqz v22, :cond_5f9

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    :goto_5c4
    sub-int v22, v23, v22

    div-int/lit8 v12, v22, 0x7

    .line 334
    .local v12, "n":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%02d"

    const-string v24, "%2d"

    const-string v25, "%d"

    const-string v26, "%02d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 335
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 331
    .end local v12    # "n":I
    :cond_5f9
    const/16 v22, 0x6

    goto :goto_5c4

    .line 337
    :pswitch_5fc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%d"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 338
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 340
    :pswitch_61f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->timeOnlyFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 341
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 343
    :pswitch_634
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->dateOnlyFormat:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 344
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 346
    :pswitch_649
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 347
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 349
    :pswitch_660
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v22

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/text/format/TimeFormatter;->outputYear(IZZI)V

    .line 350
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 352
    :pswitch_677
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-gez v22, :cond_681

    .line 353
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 355
    :cond_681
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-eqz v22, :cond_69d

    const/4 v9, 0x1

    .line 356
    .local v9, "isDst":Z
    :goto_688
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Llibcore/util/ZoneInfo;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v11}, Landroid/text/format/TimeFormatter;->modifyAndAppend(Ljava/lang/CharSequence;I)V

    .line 357
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 355
    .end local v9    # "isDst":Z
    :cond_69d
    const/4 v9, 0x0

    goto :goto_688

    .line 359
    :pswitch_69f
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v22

    if-gez v22, :cond_6a9

    .line 360
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 362
    :cond_6a9
    invoke-virtual/range {p2 .. p2}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v7

    .line 364
    .local v7, "diff":I
    if-gez v7, :cond_6f8

    .line 365
    const/16 v14, 0x2d

    .line 366
    .local v14, "sign":C
    neg-int v7, v7

    .line 370
    :goto_6b2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    div-int/lit8 v7, v7, 0x3c

    .line 372
    div-int/lit8 v22, v7, 0x3c

    mul-int/lit8 v22, v22, 0x64

    rem-int/lit8 v23, v7, 0x3c

    add-int v7, v22, v23

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    move-object/from16 v22, v0

    const-string v23, "%04d"

    const-string v24, "%4d"

    const-string v25, "%d"

    const-string v26, "%04d"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-static {v11, v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-virtual/range {v22 .. v24}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 374
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 368
    .end local v14    # "sign":C
    :cond_6f8
    const/16 v14, 0x2b

    .restart local v14    # "sign":C
    goto :goto_6b2

    .line 377
    .end local v7    # "diff":I
    .end local v14    # "sign":C
    :pswitch_6fb
    const-string v22, "%a %b %e %H:%M:%S %Z %Y"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 378
    const/16 v22, 0x0

    goto/16 :goto_2b

    .line 386
    .end local v5    # "currentChar":C
    :cond_70c
    const/16 v22, 0x1

    goto/16 :goto_2b

    .line 155
    :pswitch_data_710
    .packed-switch 0x23
        :pswitch_19d
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_6fb
        :pswitch_29
        :pswitch_19d
        :pswitch_29
        :pswitch_29
        :pswitch_19d
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_2c
        :pswitch_92
        :pswitch_12b
        :pswitch_157
        :pswitch_1
        :pswitch_1d5
        :pswitch_4f0
        :pswitch_1e6
        :pswitch_21b
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_30b
        :pswitch_29
        :pswitch_1
        :pswitch_3be
        :pswitch_29
        :pswitch_3fa
        :pswitch_41c
        :pswitch_466
        :pswitch_486
        :pswitch_4f0
        :pswitch_5b2
        :pswitch_61f
        :pswitch_660
        :pswitch_677
        :pswitch_29
        :pswitch_29
        :pswitch_29
        :pswitch_19d
        :pswitch_19d
        :pswitch_29
        :pswitch_5f
        :pswitch_f9
        :pswitch_142
        :pswitch_168
        :pswitch_1a0
        :pswitch_29
        :pswitch_4f0
        :pswitch_f9
        :pswitch_29
        :pswitch_25d
        :pswitch_294
        :pswitch_2c9
        :pswitch_340
        :pswitch_377
        :pswitch_29
        :pswitch_386
        :pswitch_29
        :pswitch_40b
        :pswitch_451
        :pswitch_477
        :pswitch_4c5
        :pswitch_5a1
        :pswitch_5fc
        :pswitch_634
        :pswitch_649
        :pswitch_69f
    .end packed-switch
.end method

.method private static isLeap(I)Z
    .registers 2
    .param p0, "year"    # I

    .prologue
    .line 459
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 115
    .local v2, "length":I
    iget-object v5, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v5, v5, Llibcore/icu/LocaleData;->zeroDigit:C

    add-int/lit8 v3, v5, -0x30

    .line 116
    .local v3, "offsetToLocalizedDigits":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v4, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    if-ge v1, v2, :cond_27

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "ch":C
    const/16 v5, 0x30

    if-lt v0, v5, :cond_21

    const/16 v5, 0x39

    if-gt v0, v5, :cond_21

    .line 120
    add-int v5, v0, v3

    int-to-char v0, v5

    .line 122
    :cond_21
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 124
    .end local v0    # "ch":C
    :cond_27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private modifyAndAppend(Ljava/lang/CharSequence;I)V
    .registers 7
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "modifier"    # I

    .prologue
    .line 390
    sparse-switch p2, :sswitch_data_60

    .line 413
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 415
    :cond_8
    return-void

    .line 392
    :sswitch_9
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 393
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 397
    .end local v1    # "i":I
    :sswitch_20
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_21
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 398
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 402
    .end local v1    # "i":I
    :sswitch_37
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_38
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 403
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 404
    .local v0, "c":C
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsUpper(C)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 405
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToLower(C)C

    move-result v0

    .line 409
    :cond_4c
    :goto_4c
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 406
    :cond_54
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenIsLower(C)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 407
    invoke-static {v0}, Landroid/text/format/TimeFormatter;->brokenToUpper(C)C

    move-result v0

    goto :goto_4c

    .line 390
    nop

    :sswitch_data_60
    .sparse-switch
        -0x1 -> :sswitch_9
        0x23 -> :sswitch_37
        0x5e -> :sswitch_20
    .end sparse-switch
.end method

.method private outputYear(IZZI)V
    .registers 16
    .param p1, "value"    # I
    .param p2, "outputTop"    # Z
    .param p3, "outputBottom"    # Z
    .param p4, "modifier"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 421
    const/16 v0, 0x64

    .line 422
    .local v0, "DIVISOR":I
    rem-int/lit8 v3, p1, 0x64

    .line 423
    .local v3, "trail":I
    div-int/lit8 v4, p1, 0x64

    div-int/lit8 v5, v3, 0x64

    add-int v1, v4, v5

    .line 424
    .local v1, "lead":I
    rem-int/lit8 v3, v3, 0x64

    .line 425
    if-gez v3, :cond_42

    if-lez v1, :cond_42

    .line 426
    add-int/lit8 v3, v3, 0x64

    .line 427
    add-int/lit8 v1, v1, -0x1

    .line 432
    :cond_16
    :goto_16
    if-eqz p2, :cond_23

    .line 433
    if-nez v1, :cond_4b

    if-gez v3, :cond_4b

    .line 434
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    const-string v5, "-0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_23
    :goto_23
    if-eqz p3, :cond_41

    .line 440
    if-gez v3, :cond_65

    neg-int v2, v3

    .line 441
    .local v2, "n":I
    :goto_28
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v5, "%02d"

    const-string v6, "%2d"

    const-string v7, "%d"

    const-string v8, "%02d"

    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 443
    .end local v2    # "n":I
    :cond_41
    return-void

    .line 428
    :cond_42
    if-gez v1, :cond_16

    if-lez v3, :cond_16

    .line 429
    add-int/lit8 v3, v3, -0x64

    .line 430
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 436
    :cond_4b
    iget-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    const-string v5, "%02d"

    const-string v6, "%2d"

    const-string v7, "%d"

    const-string v8, "%02d"

    invoke-static {p4, v5, v6, v7, v8}, Landroid/text/format/TimeFormatter;->getFormat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_23

    :cond_65
    move v2, v3

    .line 440
    goto :goto_28
.end method


# virtual methods
.method public format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "wallTime"    # Llibcore/util/ZoneInfo$WallTime;
    .param p3, "zoneInfo"    # Llibcore/util/ZoneInfo;

    .prologue
    const/4 v4, 0x0

    .line 92
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .local v1, "stringBuilder":Ljava/lang/StringBuilder;
    iput-object v1, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 97
    new-instance v2, Ljava/util/Formatter;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v1, v3}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/text/format/TimeFormatter;->formatInternal(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)V

    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "result":Ljava/lang/String;
    iget-object v2, p0, Landroid/text/format/TimeFormatter;->localeData:Llibcore/icu/LocaleData;

    iget-char v2, v2, Llibcore/icu/LocaleData;->zeroDigit:C

    const/16 v3, 0x30

    if-eq v2, v3, :cond_24

    .line 104
    invoke-direct {p0, v0}, Landroid/text/format/TimeFormatter;->localizeDigits(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_29

    move-result-object v0

    .line 108
    :cond_24
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 109
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    return-object v0

    .line 108
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "stringBuilder":Ljava/lang/StringBuilder;
    :catchall_29
    move-exception v2

    iput-object v4, p0, Landroid/text/format/TimeFormatter;->outputBuilder:Ljava/lang/StringBuilder;

    .line 109
    iput-object v4, p0, Landroid/text/format/TimeFormatter;->numberFormatter:Ljava/util/Formatter;

    throw v2
.end method
