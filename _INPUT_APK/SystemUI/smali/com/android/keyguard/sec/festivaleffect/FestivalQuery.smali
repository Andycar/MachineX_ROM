.class public Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;
.super Ljava/lang/Object;
.source "FestivalQuery.java"


# static fields
.field public static final AUTUMN_EFFECT:I = 0x3

.field private static final BIRTHDAY_EVENT_SELECTION:Ljava/lang/String; = "mimetype=? and data2=?"

.field private static final BIRTHDAY_EVENT_SELECTION_ARGS:[Ljava/lang/String;

.field public static final BIRTHDAY_FESTIVAL:I = 0x3e7

.field public static final CHILDREN_DAY_FESTIVAL:I = 0x6

.field public static final CHINA_HOLIDAY_URI:Landroid/net/Uri;

.field public static final CHINESE_VALENTINE_DAY_FESTIVAL:I = 0xf

.field public static final CHRISTMAS_FESTIVAL:I = 0xb

.field public static final CONGRATULATION_FESTIVAL:I = 0x3e6

.field private static final CONTACTS_CONTRACT_PROJECTION:[Ljava/lang/String;

.field public static final CONTACTS_PROFILE_DATA_URI:Landroid/net/Uri;

.field public static final DOUBLE_NINTH_DAY_FESTIVAL:I = 0x11

.field public static final DRAGON_BOAT_FESTIVAL:I = 0xe

.field static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field private static final FESTIVAL_BROADCAST_EVENT_IDS:[I

.field private static final FESTIVAL_HOMESCREEN_EVENT_IDS:[I

.field private static final FESTIVAL_LOCKSCREEN_EVENT_IDS:[I

.field private static final FESTIVAL_NOTIFICATION_EVENT_IDS:[I

.field public static final HOMESCREEN_FESTIVAL_QUERY:I = 0xc

.field private static final INSTANCES_PROJECTION:[Ljava/lang/String;

.field public static final LANTERN_FESTIVAL:I = 0xd

.field public static final LOCKSCREEN_FESTIVAL_QUERY:I = 0xb

.field public static final MAY_DAY_FESTIVAL:I = 0x4

.field public static final MID_AUTUMN_FESTIVAL:I = 0x10

.field public static final NATIONAL_DAY_FESTIVAL:I = 0xa

.field public static final NEW_YEAR_DAY_FESTIVAL:I = 0x1

.field public static final NOTIFICATION_FESTIVAL_QUERY:I = 0xd

.field public static final NOT_FOUND_ERROR:I = -0x1

.field private static final NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final SEASONAL_EFFECT:I = 0x5

.field public static final SPRING_EFFECT:I = 0x1

.field public static final SPRING_FESTIVAL:I = 0xc

.field public static final SUMMER_EFFECT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FestivalQuery"

.field public static final TEACHER_DAY_FESTIVAL:I = 0x9

.field public static final THANK_YOU_DAY_FESTIVAL:I = 0x3

.field public static final TOMB_SWEEPING_DAY_FESTIVAL:I = 0x82

.field public static final VALENTINE_DAY_FESTIVAL:I = 0x2

.field public static final WINTER_EFFECT:I = 0x4

.field private static final YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static broadCastList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final festivalNameArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final priorityArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    const-string v0, "content://com.sec.android.chinaholiday/holidays_by_day"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->CHINA_HOLIDAY_URI:Landroid/net/Uri;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery$1;

    invoke-direct {v0}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery$1;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery$2;

    invoke-direct {v0}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery$2;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->festivalNameArray:Landroid/util/SparseArray;

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_LOCKSCREEN_EVENT_IDS:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_HOMESCREEN_EVENT_IDS:[I

    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_NOTIFICATION_EVENT_IDS:[I

    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_BROADCAST_EVENT_IDS:[I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "calendar_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->INSTANCES_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "--MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "data"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->CONTACTS_PROFILE_DATA_URI:Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->CONTACTS_CONTRACT_PROJECTION:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/contact_event"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->BIRTHDAY_EVENT_SELECTION_ARGS:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x3e7
    .end array-data

    :array_1
    .array-data 4
        0x2
        0xf
    .end array-data

    :array_2
    .array-data 4
        0x2
        0xf
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x82
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static eventTitleToId(Ljava/lang/String;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "\u5143\u65e6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "\u60c5\u4eba\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "\u6e05\u660e\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x82

    goto :goto_0

    :cond_3
    const-string v1, "\u52b3\u52a8\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "\u513f\u7ae5\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-string v1, "\u6559\u5e08\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v0, 0x9

    goto :goto_0

    :cond_6
    const-string v1, "\u56fd\u5e86\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0xa

    goto :goto_0

    :cond_7
    const-string v1, "\u91cd\u9633\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x11

    goto :goto_0

    :cond_8
    const-string v1, "\u5723\u8bde\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v0, 0xb

    goto :goto_0

    :cond_9
    const-string v1, "\u6625\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0xc

    goto :goto_0

    :cond_a
    const-string v1, "\u5143\u5bb5\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/16 v0, 0xd

    goto :goto_0

    :cond_b
    const-string v1, "\u7aef\u5348\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v0, 0xe

    goto :goto_0

    :cond_c
    const-string v1, "\u4e03\u5915\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v0, 0xf

    goto/16 :goto_0

    :cond_d
    const-string v1, "\u4e2d\u79cb\u8282"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v0, 0x10

    goto/16 :goto_0

    :cond_e
    const-string v1, "\u751f\u65e5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3e7

    goto/16 :goto_0
.end method

.method public static getCurrentSeason()I
    .locals 14

    const/4 v3, 0x0

    new-instance v6, Landroid/text/format/Time;

    const-string v9, "GMT+8"

    invoke-direct {v6, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    iget v8, v6, Landroid/text/format/Time;->year:I

    iget v9, v6, Landroid/text/format/Time;->month:I

    add-int/lit8 v2, v9, 0x1

    iget v1, v6, Landroid/text/format/Time;->monthDay:I

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x400ef5c28f5c28f6L    # 3.87

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v4, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x4016147ae147ae14L    # 5.52

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v5, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x401e000000000000L    # 7.5

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v0, v10

    add-int/lit16 v9, v8, -0x7d0

    int-to-double v10, v9

    const-wide v12, 0x3fcf0068db8bac71L    # 0.2422

    mul-double/2addr v10, v12

    const-wide v12, 0x401dc083126e978dL    # 7.438

    add-double/2addr v10, v12

    add-int/lit16 v9, v8, -0x7d0

    div-int/lit8 v9, v9, 0x4

    int-to-double v12, v9

    sub-double/2addr v10, v12

    double-to-int v7, v10

    const/4 v9, 0x2

    if-ne v2, v9, :cond_2

    if-lt v1, v4, :cond_1

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const-string v9, "FestivalQuery"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CurrentSeason: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    const/4 v3, 0x4

    goto :goto_0

    :cond_2
    const/4 v9, 0x2

    if-ge v9, v2, :cond_3

    const/4 v9, 0x5

    if-ge v2, v9, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x5

    if-ne v2, v9, :cond_5

    if-lt v1, v5, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v9, 0x5

    if-ge v9, v2, :cond_6

    const/16 v9, 0x8

    if-ge v2, v9, :cond_6

    const/4 v3, 0x2

    goto :goto_0

    :cond_6
    const/16 v9, 0x8

    if-ne v2, v9, :cond_8

    if-lt v1, v0, :cond_7

    const/4 v3, 0x3

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :cond_8
    const/16 v9, 0x8

    if-ge v9, v2, :cond_9

    const/16 v9, 0xb

    if-ge v2, v9, :cond_9

    const/4 v3, 0x3

    goto :goto_0

    :cond_9
    const/16 v9, 0xb

    if-ne v2, v9, :cond_b

    if-lt v1, v7, :cond_a

    const/4 v3, 0x4

    goto :goto_0

    :cond_a
    const/4 v3, 0x3

    goto :goto_0

    :cond_b
    const/16 v9, 0xb

    if-gt v2, v9, :cond_c

    const/4 v9, 0x2

    if-ge v2, v9, :cond_0

    :cond_c
    const/4 v3, 0x4

    goto :goto_0
.end method

.method public static getJulianDay(JJ)I
    .locals 8

    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-gez v4, :cond_0

    const-wide/32 v4, 0x5265bff

    sub-long/2addr p0, v4

    :cond_0
    const-wide/16 v4, 0x3e8

    mul-long v2, p2, v4

    add-long v4, p0, v2

    const-wide/32 v6, 0x5265c00

    div-long v0, v4, v6

    long-to-int v4, v0

    const v5, 0x253d8c    # 3.419992E-39f

    add-int/2addr v4, v5

    return v4
.end method

.method public static isBirthdayToday(Landroid/content/ContentResolver;)I
    .locals 12

    const/16 v11, 0x3e7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    const-string v0, "FestivalQuery"

    sget-object v1, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->CONTACTS_PROFILE_DATA_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->CONTACTS_CONTRACT_PROJECTION:[Ljava/lang/String;

    const-string v3, "mimetype=? and data2=?"

    sget-object v4, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->BIRTHDAY_EVENT_SELECTION_ARGS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v11

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-gt v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-virtual {v10, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v11

    goto :goto_0

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/text/ParseException;->printStackTrace()V

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "FestivalQuery"

    const-string v1, "birthday not found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isExistId(I)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isSupportedEvent([II)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static queryCalendarDb(Landroid/content/ContentResolver;)I
    .locals 16

    const/4 v11, -0x1

    const/4 v15, -0x1

    const-string v14, ""

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    const/16 v0, 0xe

    const/16 v1, 0xf

    invoke-virtual {v9, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v9, v0, v1}, Ljava/util/Calendar;->add(II)V

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    move-wide v12, v6

    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-static {v8, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-static {v8, v12, v13}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->INSTANCES_PROJECTION:[Ljava/lang/String;

    const-string v3, "calendar_id= 2"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_5

    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->eventTitleToId(Ljava/lang/String;)I

    move-result v15

    :goto_1
    const-string v0, "FestivalQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_LOCKSCREEN_EVENT_IDS:[I

    invoke-static {v0, v15}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isSupportedEvent([II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne v11, v0, :cond_1

    move v11, v15

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_2

    move v11, v15

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_BROADCAST_EVENT_IDS:[I

    invoke-static {v0, v15}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isSupportedEvent([II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v15}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isExistId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v15, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    invoke-static/range {p0 .. p0}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isBirthdayToday(Landroid/content/ContentResolver;)I

    move-result v15

    const/4 v0, -0x1

    if-eq v15, v0, :cond_6

    move v11, v15

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return v11
.end method

.method public static queryFestivalToday(Landroid/content/ContentResolver;)I
    .locals 4

    const/4 v3, -0x1

    const/4 v0, -0x1

    const/4 v1, -0x1

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryCalendarDb(Landroid/content/ContentResolver;)I

    move-result v0

    invoke-static {p0}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->queryHolidayDb(Landroid/content/ContentResolver;)I

    move-result v1

    if-eq v1, v3, :cond_0

    if-eq v0, v3, :cond_1

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v2, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static queryHolidayDb(Landroid/content/ContentResolver;)I
    .locals 15

    const/4 v4, 0x0

    const/4 v14, 0x1

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "title"

    aput-object v0, v2, v14

    const/4 v0, 0x2

    const-string v1, "begin"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "startDay"

    aput-object v1, v2, v0

    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v6}, Landroid/text/format/Time;->setToNow()V

    invoke-virtual {v6, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    iget-wide v0, v6, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v12, v13, v0, v1}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->getJulianDay(JJ)I

    move-result v10

    const/4 v8, -0x1

    const/4 v11, -0x1

    const-string v9, ""

    sget-object v1, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->CHINA_HOLIDAY_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDay= "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->eventTitleToId(Ljava/lang/String;)I

    move-result v11

    :goto_1
    const-string v0, "FestivalQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "eventTitle"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_LOCKSCREEN_EVENT_IDS:[I

    invoke-static {v0, v11}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isSupportedEvent([II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-ne v8, v0, :cond_1

    move v8, v11

    :cond_1
    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->priorityArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v1, v0, :cond_2

    move v8, v11

    :cond_2
    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->FESTIVAL_BROADCAST_EVENT_IDS:[I

    invoke-static {v0, v11}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isSupportedEvent([II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v11}, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->isExistId(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/keyguard/sec/festivaleffect/FestivalQuery;->broadCastList:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "FestivalQuery"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadCastList add "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const/4 v11, -0x1

    goto :goto_1

    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    return v8
.end method
