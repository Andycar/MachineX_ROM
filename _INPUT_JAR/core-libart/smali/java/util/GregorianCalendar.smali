.class public Ljava/util/GregorianCalendar;
.super Ljava/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field static DaysInMonth:[B = null

.field private static DaysInYear:[I = null

.field private static final defaultGregorianCutover:J = -0xb1d069b5400L

.field private static leastMaximums:[I = null

.field private static maximums:[I = null

.field private static minimums:[I = null

.field private static final serialVersionUID:J = -0x70c228291a4f2f3fL


# instance fields
.field private transient changeYear:I

.field private currentYearSkew:I

.field private gregorianCutover:J

.field private transient julianSkew:I

.field private lastYearSkew:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xc

    const/16 v1, 0x11

    .line 207
    new-array v0, v2, [B

    fill-array-data v0, :array_28

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    .line 210
    new-array v0, v2, [I

    fill-array-data v0, :array_32

    sput-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    .line 213
    new-array v0, v1, [I

    fill-array-data v0, :array_4e

    sput-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    .line 216
    new-array v0, v1, [I

    fill-array-data v0, :array_74

    sput-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    .line 219
    new-array v0, v1, [I

    fill-array-data v0, :array_9a

    sput-object v0, Ljava/util/GregorianCalendar;->leastMaximums:[I

    return-void

    .line 207
    :array_28
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    .line 210
    :array_32
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    .line 213
    :array_4e
    .array-data 4
        0x1
        0x116bd2d2
        0xb
        0x35
        0x6
        0x1f
        0x16e
        0x7
        0x6
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x6ddd00
    .end array-data

    .line 216
    :array_74
    .array-data 4
        0x0
        0x1
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2ca1c80
        0x0
    .end array-data

    .line 219
    :array_9a
    .array-data 4
        0x1
        0x116babfe
        0xb
        0x32
        0x3
        0x1c
        0x163
        0x7
        0x3
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 231
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 232
    return-void
.end method

.method public constructor <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    .line 246
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/GregorianCalendar;->set(III)V

    .line 248
    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    .line 266
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 267
    invoke-virtual/range {p0 .. p5}, Ljava/util/GregorianCalendar;->set(IIIII)V

    .line 268
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .prologue
    .line 289
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 290
    invoke-virtual/range {p0 .. p6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 291
    return-void
.end method

.method constructor <init>(J)V
    .registers 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 294
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/GregorianCalendar;-><init>(Z)V

    .line 295
    invoke-virtual {p0, p1, p2}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 296
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 306
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 307
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "timezone"    # Ljava/util/TimeZone;

    .prologue
    .line 317
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 318
    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 332
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5
    .param p1, "ignored"    # Z

    .prologue
    const/4 v2, 0x1

    .line 344
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 200
    const-wide v0, -0xb1d069b5400L

    iput-wide v0, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 202
    const/16 v0, 0x62e

    iput v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 204
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v0, v0, -0x7d0

    div-int/lit16 v0, v0, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v1, v1, -0x7d0

    div-int/lit8 v1, v1, 0x64

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 222
    const/16 v0, 0xa

    iput v0, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 224
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 345
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setFirstDayOfWeek(I)V

    .line 346
    invoke-virtual {p0, v2}, Ljava/util/GregorianCalendar;->setMinimalDaysInFirstWeek(I)V

    .line 347
    return-void
.end method

.method private computeYearAndDay(JJ)I
    .registers 12
    .param p1, "dayCount"    # J
    .param p3, "localTime"    # J

    .prologue
    .line 823
    const/16 v1, 0x7b2

    .line 824
    .local v1, "year":I
    move-wide v2, p1

    .line 825
    .local v2, "days":J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v4, p3, v4

    if-gez v4, :cond_d

    .line 826
    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 830
    :cond_d
    :goto_d
    const-wide/16 v4, 0x16d

    div-long v4, v2, v4

    long-to-int v0, v4

    .local v0, "approxYears":I
    if-eqz v0, :cond_1d

    .line 831
    add-int/2addr v1, v0

    .line 832
    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v4

    sub-long v2, p1, v4

    goto :goto_d

    .line 834
    :cond_1d
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_2b

    .line 835
    add-int/lit8 v1, v1, -0x1

    .line 836
    invoke-direct {p0, v1}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 838
    :cond_2b
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aput v1, v4, v5

    .line 839
    long-to-int v4, v2

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private daysFromBaseYear(J)J
    .registers 12
    .param p1, "year"    # J

    .prologue
    .line 843
    const-wide/16 v2, 0x7b2

    cmp-long v2, p1, v2

    if-ltz v2, :cond_4d

    .line 844
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b1

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long v0, v2, v4

    .line 845
    .local v0, "days":J
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-lez v2, :cond_2e

    .line 846
    const-wide/16 v2, 0x76d

    sub-long v2, p1, v2

    const-wide/16 v4, 0x64

    div-long/2addr v2, v4

    const-wide/16 v4, 0x641

    sub-long v4, p1, v4

    const-wide/16 v6, 0x190

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 860
    .end local v0    # "days":J
    :goto_2d
    return-wide v0

    .line 848
    .restart local v0    # "days":J
    :cond_2e
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_3a

    .line 849
    iget v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2d

    .line 850
    :cond_3a
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v2, v2, -0x1

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_48

    .line 851
    iget v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2d

    .line 853
    :cond_48
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2d

    .line 857
    .end local v0    # "days":J
    :cond_4d
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    int-to-long v2, v2

    cmp-long v2, p1, v2

    if-gtz v2, :cond_69

    .line 858
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    iget v4, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v4, v4

    add-long v0, v2, v4

    goto :goto_2d

    .line 860
    :cond_69
    const-wide/16 v2, 0x7b2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x16d

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x7b4

    sub-long v4, p1, v4

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x64

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    sub-long v4, p1, v4

    const-wide/16 v6, 0x190

    div-long/2addr v4, v6

    add-long v0, v2, v4

    goto :goto_2d
.end method

.method private daysInMonth()I
    .registers 4

    .prologue
    .line 865
    iget-object v0, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v0

    iget-object v1, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v0

    return v0
.end method

.method private daysInMonth(ZI)I
    .registers 4
    .param p1, "leapYear"    # Z
    .param p2, "month"    # I

    .prologue
    .line 869
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-ne p2, v0, :cond_c

    .line 870
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 873
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInMonth:[B

    aget-byte v0, v0, p2

    goto :goto_b
.end method

.method private daysInYear(I)I
    .registers 4
    .param p1, "year"    # I

    .prologue
    .line 877
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x16e

    .line 878
    .local v0, "daysInYear":I
    :goto_8
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne p1, v1, :cond_f

    .line 879
    iget v1, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    sub-int/2addr v0, v1

    .line 881
    :cond_f
    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_18

    .line 882
    iget v1, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    sub-int/2addr v0, v1

    .line 884
    :cond_18
    return v0

    .line 877
    .end local v0    # "daysInYear":I
    :cond_19
    const/16 v0, 0x16d

    goto :goto_8
.end method

.method private daysInYear(ZI)I
    .registers 4
    .param p1, "leapYear"    # Z
    .param p2, "month"    # I

    .prologue
    .line 888
    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-le p2, v0, :cond_c

    .line 889
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    add-int/lit8 v0, v0, 0x1

    .line 892
    :goto_b
    return v0

    :cond_c
    sget-object v0, Ljava/util/GregorianCalendar;->DaysInYear:[I

    aget v0, v0, p2

    goto :goto_b
.end method

.method private fullFieldsCalc()V
    .registers 25

    .prologue
    .line 471
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    const-wide/32 v20, 0x5265c00

    rem-long v4, v4, v20

    long-to-int v10, v4

    .line 472
    .local v10, "millis":I
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    const-wide/32 v20, 0x5265c00

    div-long v12, v4, v20

    .line 474
    .local v12, "days":J
    if-gez v10, :cond_1c

    .line 475
    const v4, 0x5265c00

    add-int/2addr v10, v4

    .line 476
    const-wide/16 v4, 0x1

    sub-long/2addr v12, v4

    .line 480
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    add-int/2addr v10, v4

    .line 481
    :goto_25
    if-gez v10, :cond_2f

    .line 482
    const v4, 0x5265c00

    add-int/2addr v10, v4

    .line 483
    const-wide/16 v4, 0x1

    sub-long/2addr v12, v4

    goto :goto_25

    .line 485
    :cond_2f
    :goto_2f
    const v4, 0x5265c00

    if-lt v10, v4, :cond_3c

    .line 486
    const v4, 0x5265c00

    sub-int/2addr v10, v4

    .line 487
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    goto :goto_2f

    .line 490
    :cond_3c
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v9, 0xf

    aget v6, v6, v9

    int-to-long v0, v6

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4, v5}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v11

    .line 491
    .local v11, "dayOfYear":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x6

    aput v11, v4, v5

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v4, v5, :cond_87

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v9, 0xf

    aget v6, v6, v9

    int-to-long v0, v6

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    cmp-long v4, v4, v20

    if-gtz v4, :cond_87

    .line 493
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v11, v4

    .line 495
    :cond_87
    div-int/lit8 v7, v11, 0x20

    .line 496
    .local v7, "month":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    .line 497
    .local v16, "leapYear":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v8, v11, v4

    .line 498
    .local v8, "date":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v8, v4, :cond_b5

    .line 499
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v8, v4

    .line 500
    add-int/lit8 v7, v7, 0x1

    .line 502
    :cond_b5
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x7

    const-wide/16 v20, 0x3

    sub-long v20, v12, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2c2

    const/4 v15, 0x0

    .line 505
    .local v15, "dstOffset":I
    :goto_d4
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-lez v4, :cond_e6

    .line 506
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xf

    aget v4, v4, v5

    sub-int/2addr v15, v4

    .line 508
    :cond_e6
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0x10

    aput v15, v4, v5

    .line 509
    if-eqz v15, :cond_198

    .line 510
    move-wide/from16 v18, v12

    .line 511
    .local v18, "oldDays":J
    add-int/2addr v10, v15

    .line 512
    if-gez v10, :cond_2dc

    .line 513
    const v4, 0x5265c00

    add-int/2addr v10, v4

    .line 514
    const-wide/16 v4, 0x1

    sub-long/2addr v12, v4

    .line 519
    :cond_fc
    :goto_fc
    cmp-long v4, v18, v12

    if-eqz v4, :cond_198

    .line 520
    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/GregorianCalendar;->time:J

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v9, 0xf

    aget v6, v6, v9

    int-to-long v0, v6

    move-wide/from16 v20, v0

    sub-long v4, v4, v20

    int-to-long v0, v15

    move-wide/from16 v20, v0

    add-long v4, v4, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v4, v5}, Ljava/util/GregorianCalendar;->computeYearAndDay(JJ)I

    move-result v11

    .line 522
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x6

    aput v11, v4, v5

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v4, v5, :cond_155

    move-object/from16 v0, p0

    iget-wide v4, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v9, 0xf

    aget v6, v6, v9

    int-to-long v0, v6

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    int-to-long v0, v15

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    cmp-long v4, v4, v20

    if-gtz v4, :cond_155

    .line 524
    move-object/from16 v0, p0

    iget v4, v0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    add-int/2addr v11, v4

    .line 526
    :cond_155
    div-int/lit8 v7, v11, 0x20

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v16

    .line 528
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v4

    sub-int v8, v11, v4

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    if-le v8, v4, :cond_183

    .line 530
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v4

    sub-int/2addr v8, v4

    .line 531
    add-int/lit8 v7, v7, 0x1

    .line 533
    :cond_183
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x7

    const-wide/16 v20, 0x3

    sub-long v20, v12, v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 537
    .end local v18    # "oldDays":J
    :cond_198
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xe

    rem-int/lit16 v6, v10, 0x3e8

    aput v6, v4, v5

    .line 538
    div-int/lit16 v10, v10, 0x3e8

    .line 539
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xd

    rem-int/lit8 v6, v10, 0x3c

    aput v6, v4, v5

    .line 540
    div-int/lit8 v10, v10, 0x3c

    .line 541
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xc

    rem-int/lit8 v6, v10, 0x3c

    aput v6, v4, v5

    .line 542
    div-int/lit8 v10, v10, 0x3c

    .line 543
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xb

    rem-int/lit8 v6, v10, 0x18

    aput v6, v4, v5

    .line 544
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v6, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v9, 0xb

    aget v4, v4, v9

    const/16 v9, 0xb

    if-le v4, v9, :cond_2ea

    const/4 v4, 0x1

    :goto_1d9
    aput v4, v5, v6

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v9, 0xb

    aget v6, v6, v9

    rem-int/lit8 v6, v6, 0xc

    aput v6, v4, v5

    .line 547
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-gtz v4, :cond_2ed

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    .line 549
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x1

    aget v6, v6, v9

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 553
    :goto_20f
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x2

    aput v7, v4, v5

    .line 554
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x5

    aput v8, v4, v5

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0x8

    add-int/lit8 v6, v8, -0x1

    div-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x4

    add-int/lit8 v6, v8, -0x1

    int-to-long v0, v8

    move-wide/from16 v20, v0

    sub-long v20, v12, v20

    const-wide/16 v22, 0x2

    sub-long v20, v20, v22

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    int-to-long v0, v9

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v9

    add-int/2addr v6, v9

    div-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 558
    const-wide/16 v4, 0x3

    sub-long v4, v12, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x6

    aget v6, v6, v9

    add-int/lit8 v6, v6, -0x1

    int-to-long v0, v6

    move-wide/from16 v20, v0

    sub-long v4, v4, v20

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    int-to-long v0, v6

    move-wide/from16 v20, v0

    sub-long v4, v4, v20

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v14

    .line 560
    .local v14, "daysFromStart":I
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x6

    aget v4, v4, v5

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v4, v14

    div-int/lit8 v5, v4, 0x7

    rsub-int/lit8 v4, v14, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v6

    if-lt v4, v6, :cond_2f7

    const/4 v4, 0x1

    :goto_28d
    add-int v17, v5, v4

    .line 562
    .local v17, "week":I
    if-nez v17, :cond_2fe

    .line 563
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x1

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-eqz v4, :cond_2f9

    const/4 v4, 0x2

    :goto_2a8
    sub-int v4, v14, v4

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v4, v9, :cond_2fb

    const/16 v4, 0x35

    :goto_2bf
    aput v4, v5, v6

    .line 573
    .end local v17    # "week":I
    :goto_2c1
    return-void

    .line 503
    .end local v14    # "daysFromStart":I
    .end local v15    # "dstOffset":I
    :cond_2c2
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v9, 0x1

    aget v6, v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v20, 0x7

    aget v9, v9, v20

    invoke-virtual/range {v4 .. v10}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v15

    goto/16 :goto_d4

    .line 515
    .restart local v15    # "dstOffset":I
    .restart local v18    # "oldDays":J
    :cond_2dc
    const v4, 0x5265c00

    if-lt v10, v4, :cond_fc

    .line 516
    const v4, 0x5265c00

    sub-int/2addr v10, v4

    .line 517
    const-wide/16 v4, 0x1

    add-long/2addr v12, v4

    goto/16 :goto_fc

    .line 544
    .end local v18    # "oldDays":J
    :cond_2ea
    const/4 v4, 0x0

    goto/16 :goto_1d9

    .line 551
    :cond_2ed
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v4, v5

    goto/16 :goto_20f

    .line 560
    .restart local v14    # "daysFromStart":I
    :cond_2f7
    const/4 v4, 0x0

    goto :goto_28d

    .line 563
    .restart local v17    # "week":I
    :cond_2f9
    const/4 v4, 0x1

    goto :goto_2a8

    :cond_2fb
    const/16 v4, 0x34

    goto :goto_2bf

    .line 566
    :cond_2fe
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x6

    aget v6, v4, v5

    if-eqz v16, :cond_33e

    const/16 v4, 0x16f

    move v5, v4

    :goto_30a
    if-eqz v16, :cond_342

    const/4 v4, 0x2

    :goto_30d
    add-int/2addr v4, v14

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    sub-int v4, v5, v4

    if-lt v6, v4, :cond_346

    .line 568
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v6, 0x3

    if-eqz v16, :cond_344

    const/4 v4, 0x2

    :goto_325
    add-int/2addr v4, v14

    int-to-long v0, v4

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v4, v9, :cond_33b

    const/16 v17, 0x1

    .end local v17    # "week":I
    :cond_33b
    aput v17, v5, v6

    goto :goto_2c1

    .line 566
    .restart local v17    # "week":I
    :cond_33e
    const/16 v4, 0x16e

    move v5, v4

    goto :goto_30a

    :cond_342
    const/4 v4, 0x1

    goto :goto_30d

    .line 568
    :cond_344
    const/4 v4, 0x1

    goto :goto_325

    .line 571
    :cond_346
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v5, 0x3

    aput v17, v4, v5

    goto/16 :goto_2c1
.end method

.method private getOffset(J)I
    .registers 26
    .param p1, "localTime"    # J

    .prologue
    .line 1050
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 1052
    .local v4, "timeZone":Ljava/util/TimeZone;
    const-wide/32 v18, 0x5265c00

    div-long v12, p1, v18

    .line 1053
    .local v12, "dayCount":J
    const-wide/32 v18, 0x5265c00

    rem-long v18, p1, v18

    move-wide/from16 v0, v18

    long-to-int v10, v0

    .line 1054
    .local v10, "millis":I
    if-gez v10, :cond_1b

    .line 1055
    const v5, 0x5265c00

    add-int/2addr v10, v5

    .line 1056
    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    .line 1059
    :cond_1b
    const/16 v6, 0x7b2

    .line 1060
    .local v6, "year":I
    move-wide/from16 v16, v12

    .line 1061
    .local v16, "days":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v5, p1, v18

    if-gez v5, :cond_32

    .line 1062
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/GregorianCalendar;->julianSkew:I

    int-to-long v0, v5

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 1066
    :cond_32
    :goto_32
    const-wide/16 v18, 0x16d

    div-long v18, v16, v18

    move-wide/from16 v0, v18

    long-to-int v11, v0

    .local v11, "approxYears":I
    if-eqz v11, :cond_4a

    .line 1067
    add-int/2addr v6, v11

    .line 1068
    int-to-long v0, v6

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v18

    sub-long v16, v12, v18

    goto :goto_32

    .line 1070
    :cond_4a
    const-wide/16 v18, 0x0

    cmp-long v5, v16, v18

    if-gez v5, :cond_7d

    .line 1071
    add-int/lit8 v6, v6, -0x1

    .line 1072
    const-wide/16 v18, 0x16d

    add-long v18, v18, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_84

    const/4 v5, 0x1

    :goto_5f
    int-to-long v0, v5

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    .line 1073
    move-object/from16 v0, p0

    iget v5, v0, Ljava/util/GregorianCalendar;->changeYear:I

    if-ne v6, v5, :cond_7d

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v18, v0

    cmp-long v5, p1, v18

    if-gez v5, :cond_7d

    .line 1074
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    .line 1077
    :cond_7d
    if-gtz v6, :cond_86

    .line 1078
    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    .line 1090
    :goto_83
    return v5

    .line 1072
    :cond_84
    const/4 v5, 0x0

    goto :goto_5f

    .line 1080
    :cond_86
    move-wide/from16 v0, v16

    long-to-int v5, v0

    add-int/lit8 v14, v5, 0x1

    .line 1082
    .local v14, "dayOfYear":I
    div-int/lit8 v7, v14, 0x20

    .line 1083
    .local v7, "month":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v15

    .line 1084
    .local v15, "leapYear":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v5

    sub-int v8, v14, v5

    .line 1085
    .local v8, "date":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    if-le v8, v5, :cond_ac

    .line 1086
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v7}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v5

    sub-int/2addr v8, v5

    .line 1087
    add-int/lit8 v7, v7, 0x1

    .line 1089
    :cond_ac
    const-wide/16 v18, 0x3

    sub-long v18, v12, v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    add-int/lit8 v9, v5, 0x1

    .line 1090
    .local v9, "dayOfWeek":I
    const/4 v5, 0x1

    invoke-virtual/range {v4 .. v10}, Ljava/util/TimeZone;->getOffset(IIIIII)I

    move-result v5

    goto :goto_83
.end method

.method private julianError()I
    .registers 3

    .prologue
    .line 1110
    iget v0, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit8 v0, v0, 0x64

    iget v1, p0, Ljava/util/GregorianCalendar;->changeYear:I

    div-int/lit16 v1, v1, 0x190

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method private mod(II)I
    .registers 4
    .param p1, "value"    # I
    .param p2, "mod"    # I

    .prologue
    .line 1114
    rem-int v0, p1, p2

    .line 1115
    .local v0, "rem":I
    if-gez p1, :cond_7

    if-gez v0, :cond_7

    .line 1116
    add-int/2addr v0, p2

    .line 1118
    .end local v0    # "rem":I
    :cond_7
    return v0
.end method

.method private mod7(J)I
    .registers 8
    .param p1, "num1"    # J

    .prologue
    .line 1122
    const-wide/16 v2, 0x7

    rem-long v2, p1, v2

    long-to-int v0, v2

    .line 1123
    .local v0, "rem":I
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gez v1, :cond_f

    if-gez v0, :cond_f

    .line 1124
    add-int/lit8 v0, v0, 0x7

    .line 1126
    .end local v0    # "rem":I
    :cond_f
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1292
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1293
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 1294
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1288
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1289
    return-void
.end method


# virtual methods
.method public add(II)V
    .registers 21
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    .line 362
    if-nez p2, :cond_3

    .line 468
    :cond_2
    :goto_2
    return-void

    .line 365
    :cond_3
    if-ltz p1, :cond_b

    const/16 v12, 0xf

    move/from16 v0, p1

    if-lt v0, v12, :cond_11

    .line 366
    :cond_b
    new-instance v12, Ljava/lang/IllegalArgumentException;

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v12

    .line 369
    :cond_11
    if-nez p1, :cond_37

    .line 370
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 371
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    const/4 v13, 0x1

    if-ne v12, v13, :cond_2d

    .line 372
    if-gez p2, :cond_2

    .line 375
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 382
    :goto_29
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_2

    .line 377
    :cond_2d
    if-lez p2, :cond_2

    .line 380
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_29

    .line 386
    :cond_37
    const/4 v12, 0x1

    move/from16 v0, p1

    if-eq v0, v12, :cond_41

    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_a4

    .line 387
    :cond_41
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 388
    const/4 v12, 0x2

    move/from16 v0, p1

    if-ne v0, v12, :cond_64

    .line 389
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int v6, v12, p2

    .line 390
    .local v6, "month":I
    if-gez v6, :cond_a1

    .line 391
    add-int/lit8 v12, v6, -0xb

    div-int/lit8 p2, v12, 0xc

    .line 392
    rem-int/lit8 v12, v6, 0xc

    add-int/lit8 v6, v12, 0xc

    .line 396
    :goto_5c
    const/4 v12, 0x2

    rem-int/lit8 v13, v6, 0xc

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 398
    .end local v6    # "month":I
    :cond_64
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int v13, v13, p2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Ljava/util/GregorianCalendar;->set(II)V

    .line 399
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v12

    move-object/from16 v0, p0

    iget-object v13, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v2

    .line 400
    .local v2, "days":I
    move-object/from16 v0, p0

    iget-object v12, v0, Ljava/util/GregorianCalendar;->fields:[I

    const/4 v13, 0x5

    aget v12, v12, v13

    if-le v12, v2, :cond_9c

    .line 401
    const/4 v12, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 403
    :cond_9c
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 394
    .end local v2    # "days":I
    .restart local v6    # "month":I
    :cond_a1
    div-int/lit8 p2, v6, 0xc

    goto :goto_5c

    .line 407
    .end local v6    # "month":I
    :cond_a4
    const-wide/16 v8, 0x0

    .line 408
    .local v8, "multiplier":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    .line 409
    packed-switch p1, :pswitch_data_158

    .line 438
    :goto_ac
    const-wide/16 v12, 0x0

    cmp-long v12, v8, v12

    if-nez v12, :cond_10a

    .line 439
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 440
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 411
    :pswitch_bc
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    move/from16 v0, p2

    int-to-long v14, v0

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_ac

    .line 414
    :pswitch_c9
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    move/from16 v0, p2

    int-to-long v14, v0

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_ac

    .line 417
    :pswitch_da
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    move/from16 v0, p2

    int-to-long v14, v0

    const-wide/32 v16, 0xea60

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_ac

    .line 421
    :pswitch_ec
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    move/from16 v0, p2

    int-to-long v14, v0

    const-wide/32 v16, 0x36ee80

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    goto :goto_ac

    .line 424
    :pswitch_fe
    const-wide/32 v8, 0x2932e00

    .line 425
    goto :goto_ac

    .line 429
    :pswitch_102
    const-wide/32 v8, 0x5265c00

    .line 430
    goto :goto_ac

    .line 434
    :pswitch_106
    const-wide/32 v8, 0x240c8400

    goto :goto_ac

    .line 444
    :cond_10a
    move/from16 v0, p2

    int-to-long v12, v0

    mul-long v4, v12, v8

    .line 457
    .local v4, "delta":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v11

    .line 458
    .local v11, "zoneOffset":I
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v14, v11

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v10

    .line 459
    .local v10, "offsetBefore":I
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v14, v11

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v7

    .line 460
    .local v7, "offsetAfter":I
    sub-int v3, v10, v7

    .line 461
    .local v3, "dstDelta":I
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    int-to-long v14, v11

    add-long/2addr v12, v14

    add-long/2addr v12, v4

    int-to-long v14, v3

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v12

    if-ne v12, v7, :cond_145

    .line 462
    int-to-long v12, v3

    add-long/2addr v4, v12

    .line 465
    :cond_145
    move-object/from16 v0, p0

    iget-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    add-long/2addr v12, v4

    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    .line 466
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 467
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->complete()V

    goto/16 :goto_2

    .line 409
    :pswitch_data_158
    .packed-switch 0x3
        :pswitch_106
        :pswitch_106
        :pswitch_102
        :pswitch_102
        :pswitch_102
        :pswitch_106
        :pswitch_fe
        :pswitch_ec
        :pswitch_ec
        :pswitch_da
        :pswitch_c9
        :pswitch_bc
    .end packed-switch
.end method

.method protected computeFields()V
    .registers 9

    .prologue
    .line 577
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 578
    .local v2, "timeZone":Ljava/util/TimeZone;
    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Ljava/util/GregorianCalendar;->time:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v2}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    .line 579
    .local v0, "dstOffset":I
    :goto_15
    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    .line 596
    .local v3, "zoneOffset":I
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0x10

    aput v0, v4, v5

    .line 597
    iget-object v4, p0, Ljava/util/GregorianCalendar;->fields:[I

    const/16 v5, 0xf

    aput v3, v4, v5

    .line 599
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->fullFieldsCalc()V

    .line 601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    const/16 v4, 0x11

    if-ge v1, v4, :cond_37

    .line 602
    iget-object v4, p0, Ljava/util/GregorianCalendar;->isSet:[Z

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    .line 601
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 578
    .end local v0    # "dstOffset":I
    .end local v1    # "i":I
    .end local v3    # "zoneOffset":I
    :cond_35
    const/4 v0, 0x0

    goto :goto_15

    .line 604
    .restart local v0    # "dstOffset":I
    .restart local v1    # "i":I
    .restart local v3    # "zoneOffset":I
    :cond_37
    return-void
.end method

.method protected computeTime()V
    .registers 29

    .prologue
    .line 608
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_2d8

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xb

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_36

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xb

    aget v21, v21, v22

    if-ltz v21, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xb

    aget v21, v21, v22

    const/16 v22, 0x17

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_66

    .line 611
    :cond_30
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 613
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_66

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    if-ltz v21, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_66

    .line 614
    :cond_60
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 616
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xc

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_96

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xc

    aget v21, v21, v22

    if-ltz v21, :cond_90

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xc

    aget v21, v21, v22

    const/16 v22, 0x3b

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_96

    .line 617
    :cond_90
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 619
    :cond_96
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xd

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_c6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xd

    aget v21, v21, v22

    if-ltz v21, :cond_c0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xd

    aget v21, v21, v22

    const/16 v22, 0x3b

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c6

    .line 620
    :cond_c0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 622
    :cond_c6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_f6

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aget v21, v21, v22

    if-ltz v21, :cond_f0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aget v21, v21, v22

    const/16 v22, 0x3e7

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f6

    .line 624
    :cond_f0
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 626
    :cond_f6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_12c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_126

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    const/16 v22, 0x35

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_12c

    .line 628
    :cond_126
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 630
    :cond_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_162

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_162

    .line 632
    :cond_15c
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 634
    :cond_162
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_198

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_192

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_198

    .line 636
    :cond_192
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 638
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_1ce

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1c8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v21, v21, v22

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1ce

    .line 640
    :cond_1c8
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 642
    :cond_1ce
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x9

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x9

    aget v21, v21, v22

    if-eqz v21, :cond_1fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x9

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_1fe

    .line 643
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 645
    :cond_1fe
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_22e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    if-ltz v21, :cond_228

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget v21, v21, v22

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_22e

    .line 646
    :cond_228
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 648
    :cond_22e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_2a8

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    if-nez v21, :cond_27d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_277

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    const v22, 0x116babfe

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_27d

    .line 651
    :cond_277
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 652
    :cond_27d
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_2a2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    const v22, 0x116bd2d2

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2a8

    .line 653
    :cond_2a2
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 656
    :cond_2a8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_2d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    if-ltz v21, :cond_2d2

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v21, v21, v22

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2d8

    .line 657
    :cond_2d2
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 662
    :cond_2d8
    const-wide/16 v8, 0x0

    .line 663
    .local v8, "hour":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xb

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_3ac

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3ac

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xb

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-long v8, v0

    .line 668
    :cond_301
    :goto_301
    const-wide/32 v22, 0x36ee80

    mul-long v12, v8, v22

    .line 670
    .local v12, "timeVal":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xc

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_328

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xc

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0xea60

    mul-long v22, v22, v24

    add-long v12, v12, v22

    .line 673
    :cond_328
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xd

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_349

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xd

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3e8

    mul-long v22, v22, v24

    add-long v12, v12, v22

    .line 676
    :cond_349
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_366

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0xe

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v12, v12, v22

    .line 681
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_3d5

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v20, v21, v22

    .line 682
    .local v20, "year":I
    :goto_37c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_3e6

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    if-eqz v21, :cond_3d8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_3d8

    .line 685
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 665
    .end local v12    # "timeVal":J
    .end local v20    # "year":I
    :cond_3ac
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0xa

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_301

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x9

    aget v21, v21, v22

    mul-int/lit8 v21, v21, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v22, v0

    const/16 v23, 0xa

    aget v22, v22, v23

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v8, v0

    goto/16 :goto_301

    .line 681
    .restart local v12    # "timeVal":J
    :cond_3d5
    const/16 v20, 0x7b2

    goto :goto_37c

    .line 687
    .restart local v20    # "year":I
    :cond_3d8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    if-nez v21, :cond_3e6

    .line 688
    rsub-int/lit8 v20, v20, 0x1

    .line 692
    :cond_3e6
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-boolean v21, v21, v22

    if-nez v21, :cond_3fe

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_526

    :cond_3fe
    const/16 v19, 0x1

    .line 694
    .local v19, "weekMonthSet":Z
    :goto_400
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget-boolean v21, v21, v22

    if-nez v21, :cond_41a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-boolean v21, v21, v22

    if-nez v21, :cond_41a

    if-eqz v19, :cond_52a

    :cond_41a
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_52a

    const/16 v17, 0x1

    .line 696
    .local v17, "useMonth":Z
    :goto_42a
    if-eqz v17, :cond_470

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_448

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_470

    .line 698
    :cond_448
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_540

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_540

    .line 699
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_52e

    .line 700
    const/16 v17, 0x0

    .line 714
    :cond_470
    :goto_470
    if-eqz v17, :cond_756

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget v10, v21, v22

    .line 716
    .local v10, "month":I
    div-int/lit8 v21, v10, 0xc

    add-int v20, v20, v21

    .line 717
    rem-int/lit8 v10, v10, 0xc

    .line 718
    if-gez v10, :cond_488

    .line 719
    add-int/lit8 v20, v20, -0x1

    .line 720
    add-int/lit8 v10, v10, 0xc

    .line 722
    :cond_488
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v5

    .line 723
    .local v5, "leapYear":Z
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v22

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInYear(ZI)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v22, v24

    .line 724
    .local v6, "days":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget-boolean v16, v21, v22

    .line 725
    .local v16, "useDate":Z
    if-eqz v16, :cond_4f0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4e0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x4

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4e0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4f0

    .line 728
    :cond_4e0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_4ee

    if-nez v19, :cond_56b

    :cond_4ee
    const/16 v16, 0x1

    .line 730
    :cond_4f0
    :goto_4f0
    if-eqz v16, :cond_603

    .line 731
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_56e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_520

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v21, v21, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_56e

    .line 734
    :cond_520
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 692
    .end local v5    # "leapYear":Z
    .end local v6    # "days":J
    .end local v10    # "month":I
    .end local v16    # "useDate":Z
    .end local v17    # "useMonth":Z
    .end local v19    # "weekMonthSet":Z
    :cond_526
    const/16 v19, 0x0

    goto/16 :goto_400

    .line 694
    .restart local v19    # "weekMonthSet":Z
    :cond_52a
    const/16 v17, 0x0

    goto/16 :goto_42a

    .line 701
    .restart local v17    # "useMonth":Z
    :cond_52e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_470

    .line 707
    move/from16 v17, v19

    goto/16 :goto_470

    .line 709
    :cond_540
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_470

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_568

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x2

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_568

    const/16 v17, 0x1

    :goto_566
    goto/16 :goto_470

    :cond_568
    const/16 v17, 0x0

    goto :goto_566

    .line 728
    .restart local v5    # "leapYear":Z
    .restart local v6    # "days":J
    .restart local v10    # "month":I
    .restart local v16    # "useDate":Z
    :cond_56b
    const/16 v16, 0x0

    goto :goto_4f0

    .line 736
    :cond_56e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x5

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    .line 795
    .end local v5    # "leapYear":Z
    .end local v10    # "month":I
    .end local v16    # "useDate":Z
    :cond_581
    :goto_581
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    .line 797
    const-wide/32 v22, 0x5265c00

    mul-long v22, v22, v6

    add-long v12, v12, v22

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->changeYear:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5c6

    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    move-wide/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/32 v26, 0x5265c00

    mul-long v24, v24, v26

    add-long v22, v22, v24

    cmp-long v21, v12, v22

    if-ltz v21, :cond_5c6

    .line 801
    invoke-direct/range {p0 .. p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x5265c00

    mul-long v22, v22, v24

    sub-long v12, v12, v22

    .line 810
    :cond_5c6
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v22, v12, v22

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v14, v22, v24

    .line 812
    .local v14, "timeValWithoutDST":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Ljava/util/GregorianCalendar;->getOffset(J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    sub-long v12, v12, v22

    .line 815
    move-object/from16 v0, p0

    iput-wide v12, v0, Ljava/util/GregorianCalendar;->time:J

    .line 816
    cmp-long v21, v14, v12

    if-eqz v21, :cond_602

    .line 817
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->computeFields()V

    .line 818
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    .line 820
    :cond_602
    return-void

    .line 739
    .end local v14    # "timeValWithoutDST":J
    .restart local v5    # "leapYear":Z
    .restart local v10    # "month":I
    .restart local v16    # "useDate":Z
    :cond_603
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_67e

    .line 740
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    add-int/lit8 v4, v21, -0x1

    .line 744
    .local v4, "dayOfWeek":I
    :goto_61b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_685

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_685

    .line 746
    const-wide/16 v22, 0x3

    sub-long v22, v6, v22

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v11

    .line 747
    .local v11, "skew":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x4

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    mul-int/lit8 v21, v21, 0x7

    add-int v22, v11, v4

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3

    sub-long v24, v6, v24

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v22

    add-int v21, v21, v22

    sub-int v21, v21, v11

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    .line 749
    goto/16 :goto_581

    .line 742
    .end local v4    # "dayOfWeek":I
    .end local v11    # "skew":I
    :cond_67e
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v21

    add-int/lit8 v4, v21, -0x1

    .restart local v4    # "dayOfWeek":I
    goto :goto_61b

    .line 749
    :cond_685
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_704

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x8

    aget v21, v21, v22

    if-ltz v21, :cond_6c7

    .line 751
    int-to-long v0, v4

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3

    sub-long v24, v6, v24

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget v22, v22, v23

    add-int/lit8 v22, v22, -0x1

    mul-int/lit8 v22, v22, 0x7

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    goto/16 :goto_581

    .line 754
    :cond_6c7
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v21

    int-to-long v0, v4

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10}, Ljava/util/GregorianCalendar;->daysInMonth(ZI)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v24, v24, v6

    const-wide/16 v26, 0x3

    sub-long v24, v24, v26

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v22, v0

    const/16 v23, 0x8

    aget v22, v22, v23

    mul-int/lit8 v22, v22, 0x7

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    goto/16 :goto_581

    .line 759
    :cond_704
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_581

    .line 760
    const-wide/16 v22, 0x3

    sub-long v22, v6, v22

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v11

    .line 761
    .restart local v11    # "skew":I
    add-int v21, v11, v4

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3

    sub-long v24, v6, v24

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    sub-int v21, v21, v11

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    goto/16 :goto_581

    .line 765
    .end local v4    # "dayOfWeek":I
    .end local v5    # "leapYear":Z
    .end local v6    # "days":J
    .end local v10    # "month":I
    .end local v11    # "skew":I
    .end local v16    # "useDate":Z
    :cond_756
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_80a

    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    move/from16 v21, v0

    const/16 v22, 0x6

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_80a

    const/16 v18, 0x1

    .line 767
    .local v18, "useWeekYear":Z
    :goto_772
    if-eqz v18, :cond_78a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_78a

    .line 768
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v18, v21, v22

    .line 770
    :cond_78a
    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->daysFromBaseYear(J)J

    move-result-wide v6

    .line 771
    .restart local v6    # "days":J
    if-eqz v18, :cond_815

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_80e

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    add-int/lit8 v4, v21, -0x1

    .line 778
    .restart local v4    # "dayOfWeek":I
    :goto_7b1
    const-wide/16 v22, 0x3

    sub-long v22, v6, v22

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v21

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v11

    .line 779
    .restart local v11    # "skew":I
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x3

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    mul-int/lit8 v21, v21, 0x7

    add-int v22, v11, v4

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3

    sub-long v24, v6, v24

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v22

    add-int v21, v21, v22

    sub-int v21, v21, v11

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    .line 781
    rsub-int/lit8 v21, v11, 0x7

    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_581

    .line 782
    const-wide/16 v22, 0x7

    add-long v6, v6, v22

    goto/16 :goto_581

    .line 765
    .end local v4    # "dayOfWeek":I
    .end local v6    # "days":J
    .end local v11    # "skew":I
    .end local v18    # "useWeekYear":Z
    :cond_80a
    const/16 v18, 0x0

    goto/16 :goto_772

    .line 776
    .restart local v6    # "days":J
    .restart local v18    # "useWeekYear":Z
    :cond_80e
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v21

    add-int/lit8 v4, v21, -0x1

    .restart local v4    # "dayOfWeek":I
    goto :goto_7b1

    .line 784
    .end local v4    # "dayOfWeek":I
    :cond_815
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_879

    .line 785
    invoke-virtual/range {p0 .. p0}, Ljava/util/GregorianCalendar;->isLenient()Z

    move-result v21

    if-nez v21, :cond_864

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v21, v21, v22

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_85b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v22, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v21

    if-eqz v21, :cond_861

    const/16 v21, 0x1

    :goto_84f
    move/from16 v0, v21

    add-int/lit16 v0, v0, 0x16d

    move/from16 v21, v0

    move/from16 v0, v22

    move/from16 v1, v21

    if-le v0, v1, :cond_864

    .line 788
    :cond_85b
    new-instance v21, Ljava/lang/IllegalArgumentException;

    invoke-direct/range {v21 .. v21}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v21

    .line 785
    :cond_861
    const/16 v21, 0x0

    goto :goto_84f

    .line 790
    :cond_864
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x6

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    goto/16 :goto_581

    .line 791
    :cond_879
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->isSet:[Z

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget-boolean v21, v21, v22

    if-eqz v21, :cond_581

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/GregorianCalendar;->fields:[I

    move-object/from16 v21, v0

    const/16 v22, 0x7

    aget v21, v21, v22

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x3

    sub-long v24, v6, v24

    sub-long v22, v22, v24

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v21

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v6, v6, v22

    goto/16 :goto_581
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 900
    instance-of v2, p1, Ljava/util/GregorianCalendar;

    if-nez v2, :cond_8

    move v0, v1

    .line 906
    .end local p1    # "object":Ljava/lang/Object;
    :cond_7
    :goto_7
    return v0

    .line 903
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    if-eq p1, p0, :cond_7

    .line 906
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    check-cast p1, Ljava/util/GregorianCalendar;

    .end local p1    # "object":Ljava/lang/Object;
    iget-wide v4, p1, Ljava/util/GregorianCalendar;->gregorianCutover:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    :cond_1a
    move v0, v1

    goto :goto_7
.end method

.method public getActualMaximum(I)I
    .registers 13
    .param p1, "field"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x1

    .line 912
    sget-object v5, Ljava/util/GregorianCalendar;->maximums:[I

    aget v4, v5, p1

    .local v4, "value":I
    sget-object v5, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v5, v5, p1

    if-ne v4, v5, :cond_f

    .line 961
    .end local v4    # "value":I
    :goto_e
    return v4

    .line 916
    .restart local v4    # "value":I
    :cond_f
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 917
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    .line 918
    .local v2, "orgTime":J
    const/4 v1, 0x0

    .line 919
    .local v1, "result":I
    packed-switch p1, :pswitch_data_a0

    .line 960
    :cond_18
    :goto_18
    :pswitch_18
    iput-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    move v4, v1

    .line 961
    goto :goto_e

    .line 921
    :pswitch_1c
    const/16 v5, 0x1f

    invoke-virtual {p0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 922
    const/4 v5, 0x2

    const/16 v6, 0xb

    invoke-virtual {p0, v5, v6}, Ljava/util/GregorianCalendar;->set(II)V

    .line 923
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 924
    if-ne v1, v8, :cond_36

    .line 925
    const/16 v5, 0x18

    invoke-virtual {p0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 926
    invoke-virtual {p0, v10}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 928
    :cond_36
    iput-boolean v9, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    goto :goto_18

    .line 931
    :pswitch_39
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v5

    invoke-virtual {p0, v7, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 932
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 933
    iput-boolean v9, p0, Ljava/util/GregorianCalendar;->areFieldsSet:Z

    goto :goto_18

    .line 936
    :pswitch_48
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v4

    goto :goto_e

    .line 938
    :pswitch_4d
    iget-object v5, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v5, v5, v8

    invoke-direct {p0, v5}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v4

    goto :goto_e

    .line 940
    :pswitch_56
    const/16 v5, 0x8

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v6

    invoke-virtual {p0, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x7

    add-int v1, v5, v6

    .line 942
    goto :goto_18

    .line 944
    :pswitch_6a
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 945
    .local v0, "clone":Ljava/util/GregorianCalendar;
    invoke-virtual {p0, v9}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-ne v5, v8, :cond_92

    .line 946
    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 950
    :goto_7e
    invoke-virtual {v0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 951
    invoke-virtual {p0, v8}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    invoke-virtual {v0, v8, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 952
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->before(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 953
    add-int/lit8 v1, v1, -0x1

    goto :goto_18

    .line 948
    :cond_92
    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v0, v6, v7}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    goto :goto_7e

    .line 957
    .end local v0    # "clone":Ljava/util/GregorianCalendar;
    :pswitch_98
    const/16 v5, 0x10

    invoke-virtual {p0, v5}, Ljava/util/GregorianCalendar;->getMaximum(I)I

    move-result v1

    goto/16 :goto_18

    .line 919
    :pswitch_data_a0
    .packed-switch 0x1
        :pswitch_6a
        :pswitch_18
        :pswitch_1c
        :pswitch_39
        :pswitch_48
        :pswitch_4d
        :pswitch_18
        :pswitch_56
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_98
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 975
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getMinimum(I)I

    move-result v0

    return v0
.end method

.method public getGreatestMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 988
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .registers 5

    .prologue
    .line 998
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getLeastMaximum(I)I
    .registers 10
    .param p1, "field"    # I

    .prologue
    .line 1013
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const-wide v6, -0xb1d069b5400L

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1d

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1d

    .line 1015
    iget-wide v2, p0, Ljava/util/GregorianCalendar;->time:J

    .line 1016
    .local v2, "currentTimeInMillis":J
    iget-wide v4, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    invoke-virtual {p0, v4, v5}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1017
    invoke-virtual {p0, p1}, Ljava/util/GregorianCalendar;->getActualMaximum(I)I

    move-result v0

    .line 1018
    .local v0, "actual":I
    invoke-virtual {p0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 1021
    .end local v0    # "actual":I
    .end local v2    # "currentTimeInMillis":J
    :goto_1c
    return v0

    :cond_1d
    sget-object v1, Ljava/util/GregorianCalendar;->leastMaximums:[I

    aget v0, v1, p1

    goto :goto_1c
.end method

.method public getMaximum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 1034
    sget-object v0, Ljava/util/GregorianCalendar;->maximums:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .prologue
    .line 1046
    sget-object v0, Ljava/util/GregorianCalendar;->minimums:[I

    aget v0, v0, p1

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 1094
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    const/16 v1, 0x20

    ushr-long/2addr v2, v1

    long-to-int v1, v2

    iget-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    long-to-int v2, v2

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public isLeapYear(I)Z
    .registers 5
    .param p1, "year"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1102
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    if-le p1, v2, :cond_15

    .line 1103
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_13

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_12

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_13

    .line 1106
    :cond_12
    :goto_12
    return v0

    :cond_13
    move v0, v1

    .line 1103
    goto :goto_12

    .line 1106
    :cond_15
    rem-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_12

    move v0, v1

    goto :goto_12
.end method

.method public roll(II)V
    .registers 15
    .param p1, "field"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v9, 0x7

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 1145
    if-nez p2, :cond_6

    .line 1242
    :goto_5
    return-void

    .line 1148
    :cond_6
    if-ltz p1, :cond_c

    const/16 v8, 0xf

    if-lt p1, v8, :cond_12

    .line 1149
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    invoke-direct {v8}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v8

    .line 1152
    :cond_12
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    .line 1154
    const/4 v3, -0x1

    .line 1155
    .local v3, "max":I
    packed-switch p1, :pswitch_data_188

    .line 1238
    :cond_19
    :goto_19
    const/4 v8, -0x1

    if-eq v3, v8, :cond_2c

    .line 1239
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v3}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1241
    :cond_2c
    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->complete()V

    goto :goto_5

    .line 1157
    :pswitch_30
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1158
    goto :goto_19

    .line 1160
    :pswitch_35
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v2

    .line 1161
    .local v2, "days":I
    const/4 v1, 0x6

    .line 1162
    .local v1, "day":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1164
    .local v5, "mod":I
    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1165
    .local v4, "maxWeeks":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1166
    .local v6, "newWeek":I
    if-ne v6, v4, :cond_88

    .line 1167
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    sub-int v8, v6, v8

    mul-int/lit8 v0, v8, 0x7

    .line 1168
    .local v0, "addDays":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    if-le v8, v0, :cond_82

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    add-int/2addr v8, v0

    if-le v8, v2, :cond_82

    .line 1169
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_19

    .line 1171
    :cond_82
    add-int/lit8 v8, v6, -0x1

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto :goto_19

    .line 1173
    .end local v0    # "addDays":I
    :cond_88
    if-ne v6, v10, :cond_ac

    .line 1174
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1175
    .local v7, "week":I
    if-le v7, v10, :cond_a7

    .line 1176
    invoke-virtual {p0, p1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1178
    :cond_a7
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1181
    .end local v7    # "week":I
    :cond_ac
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1185
    .end local v1    # "day":I
    .end local v2    # "days":I
    .end local v4    # "maxWeeks":I
    .end local v5    # "mod":I
    .end local v6    # "newWeek":I
    :pswitch_b1
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v2

    .line 1186
    .restart local v2    # "days":I
    const/4 v1, 0x5

    .line 1187
    .restart local v1    # "day":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v9

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Ljava/util/GregorianCalendar;->getFirstDayOfWeek()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v8, v9

    int-to-long v8, v8

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod7(J)I

    move-result v5

    .line 1189
    .restart local v5    # "mod":I
    add-int/lit8 v8, v2, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v4, v8, 0x1

    .line 1190
    .restart local v4    # "maxWeeks":I
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, p2

    invoke-direct {p0, v8, v4}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    add-int/lit8 v6, v8, 0x1

    .line 1191
    .restart local v6    # "newWeek":I
    if-ne v6, v4, :cond_fa

    .line 1192
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, p1

    sub-int v9, v6, v9

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    if-le v8, v2, :cond_f5

    .line 1193
    invoke-virtual {p0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1195
    :cond_f5
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1197
    :cond_fa
    if-ne v6, v10, :cond_11e

    .line 1198
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v1

    iget-object v9, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v9, v9, v1

    add-int/lit8 v9, v9, -0x1

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v8, v5

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v7, v8, 0x1

    .line 1199
    .restart local v7    # "week":I
    if-le v7, v10, :cond_119

    .line 1200
    invoke-virtual {p0, v1, v10}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1202
    :cond_119
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1205
    .end local v7    # "week":I
    :cond_11e
    invoke-virtual {p0, p1, v6}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1209
    .end local v1    # "day":I
    .end local v2    # "days":I
    .end local v4    # "maxWeeks":I
    .end local v5    # "mod":I
    .end local v6    # "newWeek":I
    :pswitch_123
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v3

    .line 1210
    goto/16 :goto_19

    .line 1212
    :pswitch_129
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v10

    invoke-direct {p0, v8}, Ljava/util/GregorianCalendar;->daysInYear(I)I

    move-result v3

    .line 1213
    goto/16 :goto_19

    .line 1215
    :pswitch_133
    sget-object v8, Ljava/util/GregorianCalendar;->maximums:[I

    aget v3, v8, p1

    .line 1216
    const/4 v8, 0x4

    iput v8, p0, Ljava/util/GregorianCalendar;->lastDateFieldSet:I

    goto/16 :goto_19

    .line 1219
    :pswitch_13c
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    iget-object v10, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v10, v10, v11

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x7

    mul-int/lit8 v9, v9, 0x7

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    div-int/lit8 v8, v8, 0x7

    add-int/lit8 v3, v8, 0x1

    .line 1220
    goto/16 :goto_19

    .line 1230
    :pswitch_156
    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, p1

    add-int/2addr v8, p2

    sget-object v9, Ljava/util/GregorianCalendar;->maximums:[I

    aget v9, v9, p1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {p0, v8, v9}, Ljava/util/GregorianCalendar;->mod(II)I

    move-result v8

    invoke-virtual {p0, p1, v8}, Ljava/util/GregorianCalendar;->set(II)V

    .line 1231
    const/4 v8, 0x2

    if-ne p1, v8, :cond_17e

    iget-object v8, p0, Ljava/util/GregorianCalendar;->fields:[I

    aget v8, v8, v11

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v9

    if-le v8, v9, :cond_17e

    .line 1232
    invoke-direct {p0}, Ljava/util/GregorianCalendar;->daysInMonth()I

    move-result v8

    invoke-virtual {p0, v11, v8}, Ljava/util/GregorianCalendar;->set(II)V

    goto/16 :goto_19

    .line 1233
    :cond_17e
    const/16 v8, 0x9

    if-ne p1, v8, :cond_19

    .line 1234
    const/16 v8, 0xa

    iput v8, p0, Ljava/util/GregorianCalendar;->lastTimeFieldSet:I

    goto/16 :goto_19

    .line 1155
    :pswitch_data_188
    .packed-switch 0x0
        :pswitch_156
        :pswitch_30
        :pswitch_156
        :pswitch_35
        :pswitch_b1
        :pswitch_123
        :pswitch_129
        :pswitch_133
        :pswitch_13c
        :pswitch_156
        :pswitch_156
        :pswitch_156
        :pswitch_156
        :pswitch_156
        :pswitch_156
    .end packed-switch
.end method

.method public roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "increment"    # Z

    .prologue
    .line 1261
    if-eqz p2, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, p1, v0}, Ljava/util/GregorianCalendar;->roll(II)V

    .line 1262
    return-void

    .line 1261
    :cond_7
    const/4 v0, -0x1

    goto :goto_3
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .registers 7
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 1268
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Ljava/util/GregorianCalendar;->gregorianCutover:J

    .line 1269
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 1270
    .local v0, "cal":Ljava/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 1271
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1272
    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    if-nez v2, :cond_28

    .line 1273
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    rsub-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    .line 1275
    :cond_28
    iget v2, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v2, v2, -0x7d0

    div-int/lit16 v2, v2, 0x190

    invoke-direct {p0}, Ljava/util/GregorianCalendar;->julianError()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Ljava/util/GregorianCalendar;->changeYear:I

    add-int/lit16 v3, v3, -0x7d0

    div-int/lit8 v3, v3, 0x64

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    .line 1277
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    .line 1278
    .local v1, "dayOfYear":I
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    if-ge v1, v2, :cond_51

    .line 1279
    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    .line 1280
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1285
    :goto_50
    return-void

    .line 1282
    :cond_51
    iput v4, p0, Ljava/util/GregorianCalendar;->lastYearSkew:I

    .line 1283
    iget v2, p0, Ljava/util/GregorianCalendar;->julianSkew:I

    iput v2, p0, Ljava/util/GregorianCalendar;->currentYearSkew:I

    goto :goto_50
.end method
