.class public Ljava/text/SimpleDateFormat;
.super Ljava/text/DateFormat;
.source "SimpleDateFormat.java"


# static fields
.field static final PATTERN_CHARS:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzZLc"

.field private static final RFC_822_TIMEZONE_FIELD:I = 0x12

.field private static final STAND_ALONE_DAY_OF_WEEK_FIELD:I = 0x14

.field private static final STAND_ALONE_MONTH_FIELD:I = 0x13

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = 0x4243c9da93943590L


# instance fields
.field private transient creationYear:I

.field private defaultCenturyStart:Ljava/util/Date;

.field private formatData:Ljava/text/DateFormatSymbols;

.field private pattern:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 1338
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/io/ObjectStreamField;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "defaultCenturyStart"

    const-class v4, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "formatData"

    const-class v4, Ljava/text/DateFormatSymbols;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "pattern"

    const-class v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Ljava/io/ObjectStreamField;

    const-string v3, "serialVersionOnStream"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-direct {v2, v3, v4}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    aput-object v2, v0, v1

    sput-object v0, Ljava/text/SimpleDateFormat;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 229
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 230
    invoke-static {}, Ljava/text/SimpleDateFormat;->defaultPattern()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 231
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 250
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/text/DateFormatSymbols;)V
    .registers 4
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 334
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 335
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 336
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 337
    invoke-virtual {p2}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 4
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 355
    invoke-direct {p0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/util/Locale;)V

    .line 356
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 357
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 358
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0, p2}, Ljava/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 359
    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;)V
    .registers 5
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v2, 0x1

    .line 361
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 362
    invoke-static {p1}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    .line 363
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v0, v2}, Ljava/text/NumberFormat;->setParseIntegerOnly(Z)V

    .line 364
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    .line 365
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    .line 366
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v1, -0x50

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 367
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 368
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 369
    return-void
.end method

.method private append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V
    .registers 15
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "position"    # Ljava/text/FieldPosition;
    .param p4, "format"    # C
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;CI)V"
        }
    .end annotation

    .prologue
    .line 569
    .local p3, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v2, -0x1

    .line 570
    .local v2, "field":I
    const-string v6, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v6, p4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 571
    .local v4, "index":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_29

    .line 572
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 575
    :cond_29
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 576
    .local v0, "beginPosition":I
    const/4 v1, 0x0

    .line 577
    .local v1, "dateFormatField":Ljava/text/DateFormat$Field;
    packed-switch v4, :pswitch_data_146

    .line 675
    :goto_31
    const/4 v6, -0x1

    if-eq v2, v6, :cond_3d

    .line 676
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 679
    :cond_3d
    if-eqz p3, :cond_121

    .line 680
    new-instance p2, Ljava/text/FieldPosition;

    .end local p2    # "position":Ljava/text/FieldPosition;
    invoke-direct {p2, v1}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    .line 681
    .restart local p2    # "position":Ljava/text/FieldPosition;
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 682
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 683
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_51
    :goto_51
    return-void

    .line 579
    :pswitch_52
    sget-object v1, Ljava/text/DateFormat$Field;->ERA:Ljava/text/DateFormat$Field;

    .line 580
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v6, v6, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_31

    .line 583
    :pswitch_65
    sget-object v1, Ljava/text/DateFormat$Field;->YEAR:Ljava/text/DateFormat$Field;

    .line 584
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 590
    .local v5, "year":I
    const/4 v6, 0x2

    if-ne p5, v6, :cond_78

    .line 591
    const/4 v6, 0x2

    rem-int/lit8 v7, v5, 0x64

    invoke-direct {p0, p1, v6, v7}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 593
    :cond_78
    invoke-direct {p0, p1, p5, v5}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 597
    .end local v5    # "year":I
    :pswitch_7c
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 598
    const/4 v6, 0x1

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    goto :goto_31

    .line 601
    :pswitch_83
    sget-object v1, Ljava/text/DateFormat$Field;->MONTH:Ljava/text/DateFormat$Field;

    .line 602
    const/4 v6, 0x0

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendMonth(Ljava/lang/StringBuffer;IZ)V

    goto :goto_31

    .line 605
    :pswitch_8a
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 606
    const/4 v2, 0x5

    .line 607
    goto :goto_31

    .line 609
    :pswitch_8e
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY1:Ljava/text/DateFormat$Field;

    .line 610
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 611
    .local v3, "hour":I
    if-nez v3, :cond_9c

    const/16 v3, 0x18

    .end local v3    # "hour":I
    :cond_9c
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto :goto_31

    .line 614
    :pswitch_a0
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR_OF_DAY0:Ljava/text/DateFormat$Field;

    .line 615
    const/16 v2, 0xb

    .line 616
    goto :goto_31

    .line 618
    :pswitch_a5
    sget-object v1, Ljava/text/DateFormat$Field;->MINUTE:Ljava/text/DateFormat$Field;

    .line 619
    const/16 v2, 0xc

    .line 620
    goto :goto_31

    .line 622
    :pswitch_aa
    sget-object v1, Ljava/text/DateFormat$Field;->SECOND:Ljava/text/DateFormat$Field;

    .line 623
    const/16 v2, 0xd

    .line 624
    goto :goto_31

    .line 626
    :pswitch_af
    sget-object v1, Ljava/text/DateFormat$Field;->MILLISECOND:Ljava/text/DateFormat$Field;

    .line 627
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendMilliseconds(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_31

    .line 630
    :pswitch_be
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 631
    const/4 v6, 0x1

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_31

    .line 634
    :pswitch_c6
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK:Ljava/text/DateFormat$Field;

    .line 635
    const/4 v6, 0x0

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_31

    .line 638
    :pswitch_ce
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 639
    const/4 v2, 0x6

    .line 640
    goto/16 :goto_31

    .line 642
    :pswitch_d3
    sget-object v1, Ljava/text/DateFormat$Field;->DAY_OF_WEEK_IN_MONTH:Ljava/text/DateFormat$Field;

    .line 643
    const/16 v2, 0x8

    .line 644
    goto/16 :goto_31

    .line 646
    :pswitch_d9
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_YEAR:Ljava/text/DateFormat$Field;

    .line 647
    const/4 v2, 0x3

    .line 648
    goto/16 :goto_31

    .line 650
    :pswitch_de
    sget-object v1, Ljava/text/DateFormat$Field;->WEEK_OF_MONTH:Ljava/text/DateFormat$Field;

    .line 651
    const/4 v2, 0x4

    .line 652
    goto/16 :goto_31

    .line 654
    :pswitch_e3
    sget-object v1, Ljava/text/DateFormat$Field;->AM_PM:Ljava/text/DateFormat$Field;

    .line 655
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v6, v6, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v7, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {p1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_31

    .line 658
    :pswitch_f8
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR1:Ljava/text/DateFormat$Field;

    .line 659
    iget-object v6, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 660
    .restart local v3    # "hour":I
    if-nez v3, :cond_106

    const/16 v3, 0xc

    .end local v3    # "hour":I
    :cond_106
    invoke-direct {p0, p1, p5, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    goto/16 :goto_31

    .line 663
    :pswitch_10b
    sget-object v1, Ljava/text/DateFormat$Field;->HOUR0:Ljava/text/DateFormat$Field;

    .line 664
    const/16 v2, 0xa

    .line 665
    goto/16 :goto_31

    .line 667
    :pswitch_111
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 668
    const/4 v6, 0x1

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_31

    .line 671
    :pswitch_119
    sget-object v1, Ljava/text/DateFormat$Field;->TIME_ZONE:Ljava/text/DateFormat$Field;

    .line 672
    const/4 v6, 0x0

    invoke-direct {p0, p1, p5, v6}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto/16 :goto_31

    .line 686
    :cond_121
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    if-eq v6, v1, :cond_133

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v6

    if-nez v6, :cond_51

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getField()I

    move-result v6

    if-ne v6, v4, :cond_51

    :cond_133
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v6

    if-nez v6, :cond_51

    .line 689
    invoke-virtual {p2, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 690
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    goto/16 :goto_51

    .line 577
    nop

    :pswitch_data_146
    .packed-switch 0x0
        :pswitch_52
        :pswitch_65
        :pswitch_83
        :pswitch_8a
        :pswitch_8e
        :pswitch_a0
        :pswitch_a5
        :pswitch_aa
        :pswitch_af
        :pswitch_c6
        :pswitch_ce
        :pswitch_d3
        :pswitch_d9
        :pswitch_de
        :pswitch_e3
        :pswitch_f8
        :pswitch_10b
        :pswitch_111
        :pswitch_119
        :pswitch_7c
        :pswitch_be
    .end packed-switch
.end method

.method private appendDayOfWeek(Ljava/lang/StringBuffer;IZ)V
    .registers 8
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    .prologue
    .line 698
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v1, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 699
    .local v1, "ld":Llibcore/icu/LocaleData;
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1d

    .line 700
    if-eqz p3, :cond_18

    iget-object v0, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    .line 706
    .local v0, "days":[Ljava/lang/String;
    :goto_b
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    return-void

    .line 700
    .end local v0    # "days":[Ljava/lang/String;
    :cond_18
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_b

    .line 701
    :cond_1d
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2c

    .line 702
    if-eqz p3, :cond_25

    iget-object v0, v1, Llibcore/icu/LocaleData;->tinyStandAloneWeekdayNames:[Ljava/lang/String;

    .restart local v0    # "days":[Ljava/lang/String;
    :goto_24
    goto :goto_b

    .end local v0    # "days":[Ljava/lang/String;
    :cond_25
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    iget-object v0, v2, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    goto :goto_24

    .line 704
    :cond_2c
    if-eqz p3, :cond_31

    iget-object v0, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    .restart local v0    # "days":[Ljava/lang/String;
    :goto_30
    goto :goto_b

    .end local v0    # "days":[Ljava/lang/String;
    :cond_31
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_30
.end method

.method private appendMilliseconds(Ljava/lang/StringBuffer;II)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x3

    .line 765
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    if-le p2, v2, :cond_37

    move v1, v2

    :goto_7
    invoke-virtual {v3, v1}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 766
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/text/NumberFormat;->setMaximumIntegerDigits(I)V

    .line 768
    const/4 v1, 0x1

    if-ne p2, v1, :cond_39

    .line 769
    div-int/lit8 p3, p3, 0x64

    .line 773
    :cond_16
    :goto_16
    new-instance v0, Ljava/text/FieldPosition;

    invoke-direct {v0, v4}, Ljava/text/FieldPosition;-><init>(I)V

    .line 774
    .local v0, "p":Ljava/text/FieldPosition;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 775
    if-le p2, v2, :cond_36

    .line 776
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    add-int/lit8 v2, p2, -0x3

    invoke-virtual {v1, v2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 777
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 779
    :cond_36
    return-void

    .end local v0    # "p":Ljava/text/FieldPosition;
    :cond_37
    move v1, p2

    .line 765
    goto :goto_7

    .line 770
    :cond_39
    const/4 v1, 0x2

    if-ne p2, v1, :cond_16

    .line 771
    div-int/lit8 p3, p3, 0xa

    goto :goto_16
.end method

.method private appendMonth(Ljava/lang/StringBuffer;IZ)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "standAlone"    # Z

    .prologue
    const/4 v4, 0x2

    .line 711
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 712
    .local v1, "month":I
    if-gt p2, v4, :cond_f

    .line 713
    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/text/SimpleDateFormat;->appendNumber(Ljava/lang/StringBuffer;II)V

    .line 727
    :goto_e
    return-void

    .line 718
    :cond_f
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v3, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 719
    .local v0, "ld":Llibcore/icu/LocaleData;
    const/4 v3, 0x4

    if-ne p2, v3, :cond_25

    .line 720
    if-eqz p3, :cond_20

    iget-object v2, v0, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    .line 726
    .local v2, "months":[Ljava/lang/String;
    :goto_1a
    aget-object v3, v2, v1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    .line 720
    .end local v2    # "months":[Ljava/lang/String;
    :cond_20
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v3, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_1a

    .line 721
    :cond_25
    const/4 v3, 0x5

    if-ne p2, v3, :cond_30

    .line 722
    if-eqz p3, :cond_2d

    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyStandAloneMonthNames:[Ljava/lang/String;

    .restart local v2    # "months":[Ljava/lang/String;
    :goto_2c
    goto :goto_1a

    .end local v2    # "months":[Ljava/lang/String;
    :cond_2d
    iget-object v2, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    goto :goto_2c

    .line 724
    :cond_30
    if-eqz p3, :cond_35

    iget-object v2, v0, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    .restart local v2    # "months":[Ljava/lang/String;
    :goto_34
    goto :goto_1a

    .end local v2    # "months":[Ljava/lang/String;
    :cond_35
    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v3, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_34
.end method

.method private appendNumber(Ljava/lang/StringBuffer;II)V
    .registers 9
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "value"    # I

    .prologue
    .line 785
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1}, Ljava/text/NumberFormat;->getMinimumIntegerDigits()I

    move-result v0

    .line 786
    .local v0, "minimumIntegerDigits":I
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, p2}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 787
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/text/FieldPosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v1, v2, p1, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    .line 788
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v1, v0}, Ljava/text/NumberFormat;->setMinimumIntegerDigits(I)V

    .line 789
    return-void
.end method

.method private appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V
    .registers 12
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 756
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int v2, v4, v5

    .line 757
    .local v2, "offsetMillis":I
    if-nez p3, :cond_19

    if-ne p2, v7, :cond_27

    :cond_19
    move v0, v3

    .line 758
    .local v0, "includeGmt":Z
    :goto_1a
    if-nez p3, :cond_1e

    if-lt p2, v7, :cond_1f

    :cond_1e
    move v1, v3

    .line 759
    .local v1, "includeMinuteSeparator":Z
    :cond_1f
    invoke-static {v0, v1, v2}, Ljava/util/TimeZone;->createGmtOffsetString(ZZI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 761
    return-void

    .end local v0    # "includeGmt":Z
    .end local v1    # "includeMinuteSeparator":Z
    :cond_27
    move v0, v1

    .line 757
    goto :goto_1a
.end method

.method private appendTimeZone(Ljava/lang/StringBuffer;IZ)V
    .registers 11
    .param p1, "buffer"    # Ljava/lang/StringBuffer;
    .param p2, "count"    # I
    .param p3, "generalTimeZone"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 739
    if-eqz p3, :cond_28

    .line 740
    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 741
    .local v2, "tz":Ljava/util/TimeZone;
    iget-object v5, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-eqz v5, :cond_24

    move v0, v4

    .line 742
    .local v0, "daylight":Z
    :goto_15
    const/4 v5, 0x4

    if-ge p2, v5, :cond_26

    .line 743
    .local v1, "style":I
    :goto_18
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v4, v2, v0, v1}, Ljava/text/DateFormatSymbols;->getTimeZoneDisplayName(Ljava/util/TimeZone;ZI)Ljava/lang/String;

    move-result-object v3

    .line 744
    .local v3, "zoneString":Ljava/lang/String;
    if-eqz v3, :cond_28

    .line 745
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 751
    .end local v0    # "daylight":Z
    .end local v1    # "style":I
    .end local v2    # "tz":Ljava/util/TimeZone;
    .end local v3    # "zoneString":Ljava/lang/String;
    :goto_23
    return-void

    .restart local v2    # "tz":Ljava/util/TimeZone;
    :cond_24
    move v0, v1

    .line 741
    goto :goto_15

    .restart local v0    # "daylight":Z
    :cond_26
    move v1, v4

    .line 742
    goto :goto_18

    .line 750
    .end local v0    # "daylight":Z
    .end local v2    # "tz":Ljava/util/TimeZone;
    :cond_28
    invoke-direct {p0, p1, p2, p3}, Ljava/text/SimpleDateFormat;->appendNumericTimeZone(Ljava/lang/StringBuffer;IZ)V

    goto :goto_23
.end method

.method private static convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13
    .param p0, "template"    # Ljava/lang/String;
    .param p1, "fromChars"    # Ljava/lang/String;
    .param p2, "toChars"    # Ljava/lang/String;
    .param p3, "check"    # Z

    .prologue
    .line 1302
    if-nez p3, :cond_9

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1325
    .end local p0    # "template":Ljava/lang/String;
    :goto_8
    return-object p0

    .line 1305
    .restart local p0    # "template":Ljava/lang/String;
    :cond_9
    const/4 v5, 0x0

    .line 1306
    .local v5, "quote":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1307
    .local v4, "output":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1308
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v2, :cond_7d

    .line 1310
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 1311
    .local v3, "next":C
    const/16 v6, 0x27

    if-ne v3, v6, :cond_21

    .line 1312
    if-nez v5, :cond_34

    const/4 v5, 0x1

    .line 1314
    :cond_21
    :goto_21
    if-nez v5, :cond_36

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .local v1, "index":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_36

    .line 1315
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1308
    .end local v1    # "index":I
    :goto_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 1312
    :cond_34
    const/4 v5, 0x0

    goto :goto_21

    .line 1316
    :cond_36
    if-eqz p3, :cond_79

    if-nez v5, :cond_79

    const/16 v6, 0x61

    if-lt v3, v6, :cond_42

    const/16 v6, 0x7a

    if-le v3, v6, :cond_4a

    :cond_42
    const/16 v6, 0x41

    if-lt v3, v6, :cond_79

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_79

    .line 1317
    :cond_4a
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid pattern character \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1319
    :cond_79
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 1322
    .end local v3    # "next":C
    :cond_7d
    if-eqz v5, :cond_87

    .line 1323
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1325
    :cond_87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_8
.end method

.method private static defaultPattern()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 411
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 412
    .local v0, "localeData":Llibcore/icu/LocaleData;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Llibcore/icu/LocaleData;->getTimeFormat(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;
    .registers 5
    .param p1, "position"    # Ljava/text/ParsePosition;
    .param p2, "offset"    # I
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 792
    invoke-virtual {p1, p2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 793
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 794
    const/4 v0, 0x0

    return-object v0
.end method

.method private formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;
    .registers 16
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "field"    # Ljava/text/FieldPosition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/lang/StringBuffer;",
            "Ljava/text/FieldPosition;",
            "Ljava/util/List",
            "<",
            "Ljava/text/FieldPosition;",
            ">;)",
            "Ljava/lang/StringBuffer;"
        }
    .end annotation

    .prologue
    .line 516
    .local p4, "fields":Ljava/util/List;, "Ljava/util/List<Ljava/text/FieldPosition;>;"
    const/4 v10, 0x0

    .line 517
    .local v10, "quote":Z
    const/4 v7, -0x1

    .local v7, "last":I
    const/4 v5, 0x0

    .line 518
    .local v5, "count":I
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 519
    if-eqz p3, :cond_12

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 521
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 524
    :cond_12
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    .line 525
    .local v9, "patternLength":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_19
    if-ge v6, v9, :cond_79

    .line 526
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 527
    .local v8, "next":I
    const/16 v0, 0x27

    if-ne v8, v0, :cond_42

    .line 528
    if-lez v5, :cond_30

    .line 529
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 530
    const/4 v5, 0x0

    .line 532
    :cond_30
    if-ne v7, v8, :cond_3e

    .line 533
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 534
    const/4 v7, -0x1

    .line 538
    :goto_38
    if-nez v10, :cond_40

    const/4 v10, 0x1

    .line 525
    :goto_3b
    add-int/lit8 v6, v6, 0x1

    goto :goto_19

    .line 536
    :cond_3e
    move v7, v8

    goto :goto_38

    .line 538
    :cond_40
    const/4 v10, 0x0

    goto :goto_3b

    .line 541
    :cond_42
    if-nez v10, :cond_68

    if-eq v7, v8, :cond_56

    const/16 v0, 0x61

    if-lt v8, v0, :cond_4e

    const/16 v0, 0x7a

    if-le v8, v0, :cond_56

    :cond_4e
    const/16 v0, 0x41

    if-lt v8, v0, :cond_68

    const/16 v0, 0x5a

    if-gt v8, v0, :cond_68

    .line 543
    :cond_56
    if-ne v7, v8, :cond_5b

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 546
    :cond_5b
    if-lez v5, :cond_65

    .line 547
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 549
    :cond_65
    move v7, v8

    .line 550
    const/4 v5, 0x1

    goto :goto_3b

    .line 553
    :cond_68
    if-lez v5, :cond_73

    .line 554
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 555
    const/4 v5, 0x0

    .line 557
    :cond_73
    const/4 v7, -0x1

    .line 558
    int-to-char v0, v8

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3b

    .line 561
    .end local v8    # "next":I
    :cond_79
    if-lez v5, :cond_83

    .line 562
    int-to-char v4, v7

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->append(Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;CI)V

    .line 564
    :cond_83
    return-object p2
.end method

.method private formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;
    .registers 10
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 470
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 471
    .local v2, "buffer":Ljava/lang/StringBuffer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v3, "fields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/text/FieldPosition;>;"
    const/4 v6, 0x0

    invoke-direct {p0, p1, v2, v6, v3}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    .line 477
    new-instance v0, Ljava/text/AttributedString;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/text/AttributedString;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "as":Ljava/text/AttributedString;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/text/FieldPosition;

    .line 481
    .local v5, "pos":Ljava/text/FieldPosition;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v1

    .line 482
    .local v1, "attribute":Ljava/text/Format$Field;
    invoke-virtual {v5}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v6

    invoke-virtual {v5}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v7

    invoke-virtual {v0, v1, v1, v6, v7}, Ljava/text/AttributedString;->addAttribute(Ljava/text/AttributedCharacterIterator$Attribute;Ljava/lang/Object;II)V

    goto :goto_1b

    .line 486
    .end local v1    # "attribute":Ljava/text/Format$Field;
    .end local v5    # "pos":Ljava/text/FieldPosition;
    :cond_37
    invoke-virtual {v0}, Ljava/text/AttributedString;->getIterator()Ljava/text/AttributedCharacterIterator;

    move-result-object v6

    return-object v6
.end method

.method private parse(Ljava/lang/String;ICI)I
    .registers 22
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "format"    # C
    .param p4, "count"    # I

    .prologue
    .line 846
    const-string v3, "GyMdkHmsSEDFwWahKzZLc"

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    .line 847
    .local v13, "index":I
    const/4 v3, -0x1

    if-ne v13, v3, :cond_2c

    .line 848
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern character \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 850
    :cond_2c
    const/4 v10, -0x1

    .line 852
    .local v10, "field":I
    const/4 v7, 0x0

    .line 853
    .local v7, "absolute":I
    if-gez p4, :cond_37

    .line 854
    move/from16 v0, p4

    neg-int v0, v0

    move/from16 p4, v0

    .line 855
    move/from16 v7, p4

    .line 857
    :cond_37
    packed-switch v13, :pswitch_data_194

    .line 949
    :goto_3a
    const/4 v3, -0x1

    if-eq v10, v3, :cond_48

    .line 950
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v6 .. v11}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result p2

    .line 952
    .end local p2    # "offset":I
    :cond_48
    :goto_48
    return p2

    .line 859
    .restart local p2    # "offset":I
    :pswitch_49
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto :goto_48

    .line 861
    :pswitch_5b
    const/4 v3, 0x3

    move/from16 v0, p4

    if-lt v0, v3, :cond_62

    .line 862
    const/4 v10, 0x1

    goto :goto_3a

    .line 864
    :cond_62
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 865
    .local v14, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 866
    .local v15, "result":Ljava/lang/Number;
    if-nez v15, :cond_7b

    .line 867
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto :goto_48

    .line 869
    :cond_7b
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 871
    .local v16, "year":I
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    sub-int v3, v3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9e

    if-ltz v16, :cond_9e

    .line 872
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    div-int/lit8 v3, v3, 0x64

    mul-int/lit8 v3, v3, 0x64

    add-int v16, v16, v3

    .line 873
    move-object/from16 v0, p0

    iget v3, v0, Ljava/text/SimpleDateFormat;->creationYear:I

    move/from16 v0, v16

    if-ge v0, v3, :cond_9e

    .line 874
    add-int/lit8 v16, v16, 0x64

    .line 877
    :cond_9e
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/4 v4, 0x1

    move/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 878
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_48

    .line 882
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    .end local v16    # "year":I
    :pswitch_ad
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    move-result p2

    goto :goto_48

    .line 884
    :pswitch_bb
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Ljava/text/SimpleDateFormat;->parseMonth(Ljava/lang/String;IIIZ)I

    move-result p2

    goto :goto_48

    .line 886
    :pswitch_c9
    const/4 v10, 0x5

    .line 887
    goto/16 :goto_3a

    .line 889
    :pswitch_cc
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 890
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 891
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_e6

    .line 892
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_48

    .line 894
    :cond_e6
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 895
    .local v12, "hour":I
    const/16 v3, 0x18

    if-ne v12, v3, :cond_ef

    .line 896
    const/4 v12, 0x0

    .line 898
    :cond_ef
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 899
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_48

    .line 901
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_fe
    const/16 v10, 0xb

    .line 902
    goto/16 :goto_3a

    .line 904
    :pswitch_102
    const/16 v10, 0xc

    .line 905
    goto/16 :goto_3a

    .line 907
    :pswitch_106
    const/16 v10, 0xd

    .line 908
    goto/16 :goto_3a

    .line 910
    :pswitch_10a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Ljava/text/SimpleDateFormat;->parseFractionalSeconds(Ljava/lang/String;II)I

    move-result p2

    goto/16 :goto_48

    .line 912
    :pswitch_116
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    move-result p2

    goto/16 :goto_48

    .line 914
    :pswitch_123
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->parseDayOfWeek(Ljava/lang/String;IZ)I

    move-result p2

    goto/16 :goto_48

    .line 916
    :pswitch_130
    const/4 v10, 0x6

    .line 917
    goto/16 :goto_3a

    .line 919
    :pswitch_133
    const/16 v10, 0x8

    .line 920
    goto/16 :goto_3a

    .line 922
    :pswitch_137
    const/4 v10, 0x3

    .line 923
    goto/16 :goto_3a

    .line 925
    :pswitch_13a
    const/4 v10, 0x4

    .line 926
    goto/16 :goto_3a

    .line 928
    :pswitch_13d
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v3, v3, Ljava/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    const/16 v4, 0x9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 930
    :pswitch_151
    new-instance v14, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v14, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 931
    .restart local v14    # "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v7, v1, v14}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v15

    .line 932
    .restart local v15    # "result":Ljava/lang/Number;
    if-nez v15, :cond_16b

    .line 933
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    neg-int v3, v3

    add-int/lit8 p2, v3, -0x1

    goto/16 :goto_48

    .line 935
    :cond_16b
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v12

    .line 936
    .restart local v12    # "hour":I
    const/16 v3, 0xc

    if-ne v12, v3, :cond_174

    .line 937
    const/4 v12, 0x0

    .line 939
    :cond_174
    move-object/from16 v0, p0

    iget-object v3, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v12}, Ljava/util/Calendar;->set(II)V

    .line 940
    invoke-virtual {v14}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto/16 :goto_48

    .line 942
    .end local v12    # "hour":I
    .end local v14    # "position":Ljava/text/ParsePosition;
    .end local v15    # "result":Ljava/lang/Number;
    :pswitch_183
    const/16 v10, 0xa

    .line 943
    goto/16 :goto_3a

    .line 945
    :pswitch_187
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 947
    :pswitch_18d
    invoke-direct/range {p0 .. p2}, Ljava/text/SimpleDateFormat;->parseTimeZone(Ljava/lang/String;I)I

    move-result p2

    goto/16 :goto_48

    .line 857
    nop

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_49
        :pswitch_5b
        :pswitch_bb
        :pswitch_c9
        :pswitch_cc
        :pswitch_fe
        :pswitch_102
        :pswitch_106
        :pswitch_10a
        :pswitch_123
        :pswitch_130
        :pswitch_133
        :pswitch_137
        :pswitch_13a
        :pswitch_13d
        :pswitch_151
        :pswitch_183
        :pswitch_187
        :pswitch_18d
        :pswitch_ad
        :pswitch_116
    .end packed-switch
.end method

.method private parseDayOfWeek(Ljava/lang/String;IZ)I
    .registers 8
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "standAlone"    # Z

    .prologue
    const/4 v3, 0x7

    .line 981
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v1, v2, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 982
    .local v1, "ld":Llibcore/icu/LocaleData;
    if-eqz p3, :cond_18

    iget-object v2, v1, Llibcore/icu/LocaleData;->longStandAloneWeekdayNames:[Ljava/lang/String;

    :goto_9
    invoke-direct {p0, p1, p2, v2, v3}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 985
    .local v0, "index":I
    if-gez v0, :cond_17

    .line 986
    if-eqz p3, :cond_1d

    iget-object v2, v1, Llibcore/icu/LocaleData;->shortStandAloneWeekdayNames:[Ljava/lang/String;

    :goto_13
    invoke-direct {p0, p1, p2, v2, v3}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v0

    .line 990
    :cond_17
    return v0

    .line 982
    .end local v0    # "index":I
    :cond_18
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v2, Ljava/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    goto :goto_9

    .line 986
    .restart local v0    # "index":I
    :cond_1d
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v2, v2, Ljava/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    goto :goto_13
.end method

.method private parseFractionalSeconds(Ljava/lang/String;II)I
    .registers 22
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I

    .prologue
    .line 961
    new-instance v8, Ljava/text/ParsePosition;

    move/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 962
    .local v8, "parsePosition":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v8}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v6

    .line 963
    .local v6, "fractionalSeconds":Ljava/lang/Number;
    if-nez v6, :cond_1b

    .line 964
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v9

    neg-int v9, v9

    add-int/lit8 v9, v9, -0x1

    .line 977
    :goto_1a
    return v9

    .line 972
    :cond_1b
    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    .line 973
    .local v10, "result":D
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    sub-int v7, v9, p2

    .line 974
    .local v7, "numDigitsParsed":I
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    int-to-double v14, v7

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 976
    .local v4, "divisor":D
    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const/16 v12, 0xe

    div-double v14, v10, v4

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    double-to-int v13, v14

    invoke-virtual {v9, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 977
    invoke-virtual {v8}, Ljava/text/ParsePosition;->getIndex()I

    move-result v9

    goto :goto_1a
.end method

.method private parseMonth(Ljava/lang/String;IIIZ)I
    .registers 14
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "absolute"    # I
    .param p5, "standAlone"    # Z

    .prologue
    const/4 v4, 0x2

    .line 994
    if-gt p3, v4, :cond_d

    .line 995
    const/4 v5, -0x1

    move-object v0, p0

    move v1, p4

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;III)I

    move-result v6

    .line 1006
    :cond_c
    :goto_c
    return v6

    .line 997
    :cond_d
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v7, v0, Ljava/text/DateFormatSymbols;->localeData:Llibcore/icu/LocaleData;

    .line 998
    .local v7, "ld":Llibcore/icu/LocaleData;
    if-eqz p5, :cond_24

    iget-object v0, v7, Llibcore/icu/LocaleData;->longStandAloneMonthNames:[Ljava/lang/String;

    :goto_15
    invoke-direct {p0, p1, p2, v0, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    .line 1001
    .local v6, "index":I
    if-gez v6, :cond_c

    .line 1002
    if-eqz p5, :cond_29

    iget-object v0, v7, Llibcore/icu/LocaleData;->shortStandAloneMonthNames:[Ljava/lang/String;

    :goto_1f
    invoke-direct {p0, p1, p2, v0, v4}, Ljava/text/SimpleDateFormat;->parseText(Ljava/lang/String;I[Ljava/lang/String;I)I

    move-result v6

    goto :goto_c

    .line 998
    .end local v6    # "index":I
    :cond_24
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v0, Ljava/text/DateFormatSymbols;->months:[Ljava/lang/String;

    goto :goto_15

    .line 1002
    .restart local v6    # "index":I
    :cond_29
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v0, v0, Ljava/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    goto :goto_1f
.end method

.method private parseNumber(ILjava/lang/String;III)I
    .registers 10
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "offset"    # I
    .param p4, "field"    # I
    .param p5, "skew"    # I

    .prologue
    .line 1132
    new-instance v0, Ljava/text/ParsePosition;

    invoke-direct {v0, p3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1133
    .local v0, "position":Ljava/text/ParsePosition;
    invoke-direct {p0, p1, p2, v0}, Ljava/text/SimpleDateFormat;->parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v1

    .line 1134
    .local v1, "result":Ljava/lang/Number;
    if-nez v1, :cond_13

    .line 1135
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 v2, v2, -0x1

    .line 1138
    :goto_12
    return v2

    .line 1137
    :cond_13
    iget-object v2, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    add-int/2addr v3, p5

    invoke-virtual {v2, p4, v3}, Ljava/util/Calendar;->set(II)V

    .line 1138
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    goto :goto_12
.end method

.method private parseNumber(ILjava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .registers 10
    .param p1, "max"    # I
    .param p2, "string"    # Ljava/lang/String;
    .param p3, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1104
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1105
    .local v2, "length":I
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 1106
    .local v1, "index":I
    if-lez p1, :cond_10

    sub-int v4, v2, v1

    if-ge p1, v4, :cond_10

    .line 1107
    add-int v2, v1, p1

    .line 1109
    :cond_10
    :goto_10
    if-ge v1, v2, :cond_25

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_22

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_25

    .line 1110
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1112
    :cond_25
    if-nez p1, :cond_31

    .line 1113
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1114
    iget-object v4, p0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    invoke-virtual {v4, p2, p3}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v4

    .line 1128
    :goto_30
    return-object v4

    .line 1117
    :cond_31
    const/4 v3, 0x0

    .line 1119
    .local v3, "result":I
    :goto_32
    if-ge v1, v2, :cond_48

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .local v0, "digit":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_48

    .line 1120
    mul-int/lit8 v4, v3, 0xa

    add-int v3, v4, v0

    .line 1121
    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    .line 1123
    .end local v0    # "digit":I
    :cond_48
    invoke-virtual {p3}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    if-ne v1, v4, :cond_53

    .line 1124
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 1125
    const/4 v4, 0x0

    goto :goto_30

    .line 1127
    :cond_53
    invoke-virtual {p3, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1128
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_30
.end method

.method private parseText(Ljava/lang/String;I[Ljava/lang/String;I)I
    .registers 21
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "options"    # [Ljava/lang/String;
    .param p4, "field"    # I

    .prologue
    .line 1143
    const/4 v13, -0x1

    .line 1144
    .local v13, "bestIndex":I
    const/4 v14, -0x1

    .line 1145
    .local v14, "bestLength":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move-object/from16 v0, p3

    array-length v1, v0

    if-ge v15, v1, :cond_4b

    .line 1146
    aget-object v4, p3, v15

    .line 1147
    .local v4, "option":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    .line 1148
    .local v6, "optionLength":I
    if-nez v6, :cond_13

    .line 1145
    :cond_10
    :goto_10
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1151
    :cond_13
    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move/from16 v3, p2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1152
    const/4 v1, -0x1

    if-eq v13, v1, :cond_24

    if-le v6, v14, :cond_10

    .line 1153
    :cond_24
    move v13, v15

    .line 1154
    move v14, v6

    goto :goto_10

    .line 1156
    :cond_27
    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_10

    .line 1159
    const/4 v8, 0x1

    const/4 v11, 0x0

    add-int/lit8 v12, v6, -0x1

    move-object/from16 v7, p1

    move/from16 v9, p2

    move-object v10, v4

    invoke-virtual/range {v7 .. v12}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1160
    const/4 v1, -0x1

    if-eq v13, v1, :cond_47

    add-int/lit8 v1, v6, -0x1

    if-le v1, v14, :cond_10

    .line 1161
    :cond_47
    move v13, v15

    .line 1162
    add-int/lit8 v14, v6, -0x1

    goto :goto_10

    .line 1167
    .end local v4    # "option":Ljava/lang/String;
    .end local v6    # "optionLength":I
    :cond_4b
    const/4 v1, -0x1

    if-eq v13, v1, :cond_5a

    .line 1168
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    move/from16 v0, p4

    invoke-virtual {v1, v0, v13}, Ljava/util/Calendar;->set(II)V

    .line 1169
    add-int v1, p2, v14

    .line 1171
    :goto_59
    return v1

    :cond_5a
    move/from16 v0, p2

    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_59
.end method

.method private parseTimeZone(Ljava/lang/String;I)I
    .registers 26
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 1175
    const-string v2, "GMT"

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    .line 1176
    .local v10, "foundGMT":Z
    if-eqz v10, :cond_10

    .line 1177
    add-int/lit8 p2, p2, 0x3

    .line 1182
    :cond_10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, p2

    if-ge v0, v2, :cond_bf

    invoke-virtual/range {p1 .. p2}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .local v21, "sign":C
    const/16 v2, 0x2b

    move/from16 v0, v21

    if-eq v0, v2, :cond_28

    const/16 v2, 0x2d

    move/from16 v0, v21

    if-ne v0, v2, :cond_bf

    .line 1183
    :cond_28
    new-instance v17, Ljava/text/ParsePosition;

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 1184
    .local v17, "position":Ljava/text/ParsePosition;
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1185
    .local v19, "result":Ljava/lang/Number;
    if-nez v19, :cond_47

    .line 1186
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    .line 1249
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v19    # "result":Ljava/lang/Number;
    .end local v21    # "sign":C
    .end local p2    # "offset":I
    :goto_46
    return p2

    .line 1188
    .restart local v17    # "position":Ljava/text/ParsePosition;
    .restart local v19    # "result":Ljava/lang/Number;
    .restart local v21    # "sign":C
    .restart local p2    # "offset":I
    :cond_47
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v11

    .line 1189
    .local v11, "hour":I
    const v2, 0x36ee80

    mul-int v18, v11, v2

    .line 1190
    .local v18, "raw":I
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result v14

    .line 1191
    .local v14, "index":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v14, v2, :cond_ac

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_ac

    .line 1192
    add-int/lit8 v2, v14, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->numberFormat:Ljava/text/NumberFormat;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;

    move-result-object v19

    .line 1194
    if-nez v19, :cond_81

    .line 1195
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v2

    neg-int v2, v2

    add-int/lit8 p2, v2, -0x1

    goto :goto_46

    .line 1197
    :cond_81
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Number;->intValue()I

    move-result v16

    .line 1198
    .local v16, "minute":I
    const v2, 0xea60

    mul-int v2, v2, v16

    add-int v18, v18, v2

    .line 1202
    .end local v16    # "minute":I
    :cond_8c
    :goto_8c
    const/16 v2, 0x2d

    move/from16 v0, v21

    if-ne v0, v2, :cond_97

    .line 1203
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 1205
    :cond_97
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1206
    invoke-virtual/range {v17 .. v17}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    goto :goto_46

    .line 1199
    :cond_ac
    const/16 v2, 0x18

    if-lt v11, v2, :cond_8c

    .line 1200
    div-int/lit8 v2, v11, 0x64

    const v3, 0x36ee80

    mul-int/2addr v2, v3

    rem-int/lit8 v3, v11, 0x64

    const v4, 0xea60

    mul-int/2addr v3, v4

    add-int v18, v2, v3

    goto :goto_8c

    .line 1210
    .end local v11    # "hour":I
    .end local v14    # "index":I
    .end local v17    # "position":Ljava/text/ParsePosition;
    .end local v18    # "raw":I
    .end local v19    # "result":Ljava/lang/Number;
    .end local v21    # "sign":C
    :cond_bf
    if-eqz v10, :cond_d0

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    const-string v3, "GMT"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_46

    .line 1216
    :cond_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->internalZoneStrings()[[Ljava/lang/String;

    move-result-object v8

    .local v8, "arr$":[[Ljava/lang/String;
    array-length v15, v8

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_da
    if-ge v13, v15, :cond_13f

    aget-object v20, v8, v13

    .line 1217
    .local v20, "row":[Ljava/lang/String;
    const/4 v12, 0x1

    .local v12, "i":I
    :goto_df
    const/4 v2, 0x5

    if-ge v12, v2, :cond_13c

    .line 1218
    aget-object v2, v20, v12

    if-nez v2, :cond_e9

    .line 1217
    :cond_e6
    add-int/lit8 v12, v12, 0x1

    goto :goto_df

    .line 1224
    :cond_e9
    const/4 v3, 0x1

    aget-object v5, v20, v12

    const/4 v6, 0x0

    aget-object v2, v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 1225
    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 1226
    .local v22, "zone":Ljava/util/TimeZone;
    if-nez v22, :cond_10d

    .line 1227
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_46

    .line 1229
    :cond_10d
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v18

    .line 1230
    .restart local v18    # "raw":I
    const/4 v2, 0x3

    if-eq v12, v2, :cond_117

    const/4 v2, 0x4

    if-ne v12, v2, :cond_122

    .line 1233
    :cond_117
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v9

    .line 1237
    .local v9, "dstSavings":I
    if-nez v9, :cond_120

    .line 1240
    const v9, 0x36ee80

    .line 1242
    :cond_120
    add-int v18, v18, v9

    .line 1244
    .end local v9    # "dstSavings":I
    :cond_122
    move-object/from16 v0, p0

    iget-object v2, v0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    new-instance v3, Ljava/util/SimpleTimeZone;

    const-string v4, ""

    move/from16 v0, v18

    invoke-direct {v3, v0, v4}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1245
    aget-object v2, v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int p2, p2, v2

    goto/16 :goto_46

    .line 1216
    .end local v18    # "raw":I
    .end local v22    # "zone":Ljava/util/TimeZone;
    :cond_13c
    add-int/lit8 v13, v13, 0x1

    goto :goto_da

    .line 1249
    .end local v12    # "i":I
    .end local v20    # "row":[Ljava/lang/String;
    :cond_13f
    move/from16 v0, p2

    neg-int v2, v0

    add-int/lit8 p2, v2, -0x1

    goto/16 :goto_46
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1355
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v1

    .line 1356
    .local v1, "fields":Ljava/io/ObjectInputStream$GetField;
    const-string v3, "serialVersionOnStream"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    move-result v2

    .line 1358
    .local v2, "version":I
    if-lez v2, :cond_35

    .line 1359
    const-string v3, "defaultCenturyStart"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 1363
    .local v0, "date":Ljava/util/Date;
    :goto_1a
    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->set2DigitYearStart(Ljava/util/Date;)V

    .line 1364
    const-string v3, "formatData"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormatSymbols;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1365
    const-string v3, "pattern"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 1366
    return-void

    .line 1361
    .end local v0    # "date":Ljava/util/Date;
    :cond_35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .restart local v0    # "date":Ljava/util/Date;
    goto :goto_1a
.end method

.method private validatePattern(Ljava/lang/String;)V
    .registers 10
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "quote":Z
    const/4 v2, -0x1

    .local v2, "last":I
    const/4 v0, 0x0

    .line 267
    .local v0, "count":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 268
    .local v4, "patternLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v4, :cond_51

    .line 269
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 270
    .local v3, "next":I
    const/16 v6, 0x27

    if-ne v3, v6, :cond_26

    .line 271
    if-lez v0, :cond_19

    .line 272
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 273
    const/4 v0, 0x0

    .line 275
    :cond_19
    if-ne v2, v3, :cond_22

    .line 276
    const/4 v2, -0x1

    .line 280
    :goto_1c
    if-nez v5, :cond_24

    const/4 v5, 0x1

    .line 268
    :goto_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 278
    :cond_22
    move v2, v3

    goto :goto_1c

    .line 280
    :cond_24
    const/4 v5, 0x0

    goto :goto_1f

    .line 283
    :cond_26
    if-nez v5, :cond_48

    if-eq v2, v3, :cond_3a

    const/16 v6, 0x61

    if-lt v3, v6, :cond_32

    const/16 v6, 0x7a

    if-le v3, v6, :cond_3a

    :cond_32
    const/16 v6, 0x41

    if-lt v3, v6, :cond_48

    const/16 v6, 0x5a

    if-gt v3, v6, :cond_48

    .line 285
    :cond_3a
    if-ne v2, v3, :cond_3f

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 288
    :cond_3f
    if-lez v0, :cond_45

    .line 289
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 291
    :cond_45
    move v2, v3

    .line 292
    const/4 v0, 0x1

    goto :goto_1f

    .line 295
    :cond_48
    if-lez v0, :cond_4f

    .line 296
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 297
    const/4 v0, 0x0

    .line 299
    :cond_4f
    const/4 v2, -0x1

    goto :goto_1f

    .line 302
    .end local v3    # "next":I
    :cond_51
    if-lez v0, :cond_57

    .line 303
    int-to-char v6, v2

    invoke-direct {p0, v6}, Ljava/text/SimpleDateFormat;->validatePatternCharacter(C)V

    .line 306
    :cond_57
    if-eqz v5, :cond_61

    .line 307
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unterminated quote"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 309
    :cond_61
    return-void
.end method

.method private validatePatternCharacter(C)V
    .registers 6
    .param p1, "format"    # C

    .prologue
    .line 312
    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 313
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 314
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown pattern character \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 316
    :cond_28
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1346
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    move-result-object v0

    .line 1347
    .local v0, "fields":Ljava/io/ObjectOutputStream$PutField;
    const-string v1, "defaultCenturyStart"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1348
    const-string v1, "formatData"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1349
    const-string v1, "pattern"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1350
    const-string v1, "serialVersionOnStream"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    .line 1351
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    .line 1352
    return-void
.end method


# virtual methods
.method public applyLocalizedPattern(Ljava/lang/String;)V
    .registers 5
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 379
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 380
    return-void
.end method

.method public applyPattern(Ljava/lang/String;)V
    .registers 2
    .param p1, "template"    # Ljava/lang/String;

    .prologue
    .line 394
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->validatePattern(Ljava/lang/String;)V

    .line 395
    iput-object p1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    .line 396
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 404
    invoke-super {p0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 405
    .local v0, "clone":Ljava/text/SimpleDateFormat;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/DateFormatSymbols;

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 406
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, v0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 407
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 429
    if-ne p0, p1, :cond_5

    .line 436
    :cond_4
    :goto_4
    return v1

    .line 432
    :cond_5
    instance-of v3, p1, Ljava/text/SimpleDateFormat;

    if-nez v3, :cond_b

    move v1, v2

    .line 433
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 435
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 436
    .local v0, "simple":Ljava/text/SimpleDateFormat;
    invoke-super {p0, p1}, Ljava/text/DateFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-object v3, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    iget-object v4, v0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v3, v4}, Ljava/text/DateFormatSymbols;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_28
    move v1, v2

    goto :goto_4
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 5
    .param p1, "date"    # Ljava/util/Date;
    .param p2, "buffer"    # Ljava/lang/StringBuffer;
    .param p3, "fieldPos"    # Ljava/text/FieldPosition;

    .prologue
    .line 820
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/text/SimpleDateFormat;->formatImpl(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;Ljava/util/List;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 457
    if-nez p1, :cond_a

    .line 458
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "object == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_a
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_15

    .line 461
    check-cast p1, Ljava/util/Date;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-direct {p0, p1}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    .line 464
    :goto_14
    return-object v0

    .line 463
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_15
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_29

    .line 464
    new-instance v0, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, v0}, Ljava/text/SimpleDateFormat;->formatToCharacterIteratorImpl(Ljava/util/Date;)Ljava/text/AttributedCharacterIterator;

    move-result-object v0

    goto :goto_14

    .line 466
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get2DigitYearStart()Ljava/util/Date;
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getDateFormatSymbols()Ljava/text/DateFormatSymbols;
    .registers 2

    .prologue
    .line 837
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 842
    invoke-super {p0}, Ljava/text/DateFormat;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    add-int/2addr v0, v1

    return v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .registers 16
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .prologue
    .line 1033
    const/4 v9, 0x0

    .line 1034
    .local v9, "quote":Z
    const/4 v4, -0x1

    .local v4, "last":I
    const/4 v0, 0x0

    .local v0, "count":I
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v7

    .line 1035
    .local v7, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1036
    .local v5, "length":I
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->clear()V

    .line 1037
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v10

    .line 1038
    .local v10, "zone":Ljava/util/TimeZone;
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    .line 1039
    .local v8, "patternLength":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    if-ge v3, v8, :cond_aa

    .line 1040
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1041
    .local v6, "next":I
    const/16 v11, 0x27

    if-ne v6, v11, :cond_59

    .line 1042
    if-lez v0, :cond_3b

    .line 1043
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_3a

    .line 1044
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    .line 1100
    .end local v6    # "next":I
    :goto_39
    return-object v1

    .line 1046
    .restart local v6    # "next":I
    :cond_3a
    const/4 v0, 0x0

    .line 1048
    :cond_3b
    if-ne v4, v6, :cond_55

    .line 1049
    if-ge v7, v5, :cond_47

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x27

    if-eq v11, v12, :cond_4c

    .line 1050
    :cond_47
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1052
    :cond_4c
    add-int/lit8 v7, v7, 0x1

    .line 1053
    const/4 v4, -0x1

    .line 1057
    :goto_4f
    if-nez v9, :cond_57

    const/4 v9, 0x1

    .line 1039
    :goto_52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 1055
    :cond_55
    move v4, v6

    goto :goto_4f

    .line 1057
    :cond_57
    const/4 v9, 0x0

    goto :goto_52

    .line 1060
    :cond_59
    if-nez v9, :cond_87

    if-eq v4, v6, :cond_6d

    const/16 v11, 0x61

    if-lt v6, v11, :cond_65

    const/16 v11, 0x7a

    if-le v6, v11, :cond_6d

    :cond_65
    const/16 v11, 0x41

    if-lt v6, v11, :cond_87

    const/16 v11, 0x5a

    if-gt v6, v11, :cond_87

    .line 1062
    :cond_6d
    if-ne v4, v6, :cond_72

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    .line 1065
    :cond_72
    if-lez v0, :cond_84

    .line 1066
    int-to-char v11, v4

    neg-int v12, v0

    invoke-direct {p0, p1, v7, v11, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_84

    .line 1067
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1070
    :cond_84
    move v4, v6

    .line 1071
    const/4 v0, 0x1

    goto :goto_52

    .line 1074
    :cond_87
    if-lez v0, :cond_99

    .line 1075
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_98

    .line 1076
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1078
    :cond_98
    const/4 v0, 0x0

    .line 1080
    :cond_99
    const/4 v4, -0x1

    .line 1081
    if-ge v7, v5, :cond_a2

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-eq v11, v6, :cond_a7

    .line 1082
    :cond_a2
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto :goto_39

    .line 1084
    :cond_a7
    add-int/lit8 v7, v7, 0x1

    goto :goto_52

    .line 1087
    .end local v6    # "next":I
    :cond_aa
    if-lez v0, :cond_bc

    .line 1088
    int-to-char v11, v4

    invoke-direct {p0, p1, v7, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;ICI)I

    move-result v7

    if-gez v7, :cond_bc

    .line 1089
    neg-int v11, v7

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, p2, v11, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_39

    .line 1094
    :cond_bc
    :try_start_bc
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_c1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bc .. :try_end_c1} :catch_cc

    move-result-object v1

    .line 1098
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {p2, v7}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 1099
    iget-object v11, p0, Ljava/text/SimpleDateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v11, v10}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto/16 :goto_39

    .line 1095
    .end local v1    # "date":Ljava/util/Date;
    :catch_cc
    move-exception v2

    .line 1096
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, p2, v7, v10}, Ljava/text/SimpleDateFormat;->error(Ljava/text/ParsePosition;ILjava/util/TimeZone;)Ljava/util/Date;

    move-result-object v1

    goto/16 :goto_39
.end method

.method public set2DigitYearStart(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 1275
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    iput-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    .line 1276
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1277
    .local v0, "cal":Ljava/util/Calendar;
    iget-object v1, p0, Ljava/text/SimpleDateFormat;->defaultCenturyStart:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1278
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iput v1, p0, Ljava/text/SimpleDateFormat;->creationYear:I

    .line 1279
    return-void
.end method

.method public setDateFormatSymbols(Ljava/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "value"    # Ljava/text/DateFormatSymbols;

    .prologue
    .line 1288
    invoke-virtual {p1}, Ljava/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormatSymbols;

    iput-object v0, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    .line 1289
    return-void
.end method

.method public toLocalizedPattern()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1298
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    const-string v1, "GyMdkHmsSEDFwWahKzZLc"

    iget-object v2, p0, Ljava/text/SimpleDateFormat;->formatData:Ljava/text/DateFormatSymbols;

    invoke-virtual {v2}, Ljava/text/DateFormatSymbols;->getLocalPatternChars()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/text/SimpleDateFormat;->convertPattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toPattern()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1335
    iget-object v0, p0, Ljava/text/SimpleDateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method
