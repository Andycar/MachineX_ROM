.class Landroid/text/format/Time$TimeCalculator;
.super Ljava/lang/Object;
.source "Time.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Time;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TimeCalculator"
.end annotation


# instance fields
.field public timezone:Ljava/lang/String;

.field public final wallTime:Llibcore/util/ZoneInfo$WallTime;

.field private zoneInfo:Llibcore/util/ZoneInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 1039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1040
    invoke-static {p1}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 1041
    new-instance v0, Llibcore/util/ZoneInfo$WallTime;

    invoke-direct {v0}, Llibcore/util/ZoneInfo$WallTime;-><init>()V

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    .line 1042
    return-void
.end method

.method public static compare(Landroid/text/format/Time$TimeCalculator;Landroid/text/format/Time$TimeCalculator;)I
    .registers 14
    .param p0, "aObject"    # Landroid/text/format/Time$TimeCalculator;
    .param p1, "bObject"    # Landroid/text/format/Time$TimeCalculator;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x0

    .line 1177
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_70

    .line 1179
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v7

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v8

    sub-int v4, v7, v8

    .line 1180
    .local v4, "diff":I
    if-eqz v4, :cond_1e

    .line 1217
    .end local v4    # "diff":I
    :cond_1d
    :goto_1d
    return v4

    .line 1184
    .restart local v4    # "diff":I
    :cond_1e
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v7

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v8

    sub-int v4, v7, v8

    .line 1185
    if-nez v4, :cond_1d

    .line 1189
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v7

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v8

    sub-int v4, v7, v8

    .line 1190
    if-nez v4, :cond_1d

    .line 1194
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v7

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v8

    sub-int v4, v7, v8

    .line 1195
    if-nez v4, :cond_1d

    .line 1199
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v7

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v8

    sub-int v4, v7, v8

    .line 1200
    if-nez v4, :cond_1d

    .line 1204
    iget-object v7, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v7}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v7

    iget-object v8, p1, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v8}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v8

    sub-int v4, v7, v8

    .line 1205
    if-nez v4, :cond_1d

    move v4, v6

    .line 1209
    goto :goto_1d

    .line 1214
    .end local v4    # "diff":I
    :cond_70
    invoke-virtual {p0, v6}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v0

    .line 1215
    .local v0, "am":J
    invoke-virtual {p1, v6}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v2

    .line 1216
    .local v2, "bm":J
    sub-long v4, v0, v2

    .line 1217
    .local v4, "diff":J
    cmp-long v7, v4, v10

    if-gez v7, :cond_81

    const/4 v6, -0x1

    :cond_7f
    :goto_7f
    move v4, v6

    goto :goto_1d

    :cond_81
    cmp-long v7, v4, v10

    if-lez v7, :cond_7f

    const/4 v6, 0x1

    goto :goto_7f
.end method

.method private static lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;
    .registers 6
    .param p0, "timezoneId"    # Ljava/lang/String;

    .prologue
    .line 1080
    :try_start_0
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    invoke-virtual {v2, p0}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v1

    .line 1081
    .local v1, "zoneInfo":Llibcore/util/ZoneInfo;
    if-nez v1, :cond_14

    .line 1082
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v2

    const-string v3, "GMT"

    invoke-virtual {v2, v3}, Llibcore/util/ZoneInfoDB$TzData;->makeTimeZone(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v1

    .line 1084
    :cond_14
    if-nez v1, :cond_55

    .line 1085
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMT not found: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_35} :catch_35

    .line 1088
    .end local v1    # "zoneInfo":Llibcore/util/ZoneInfo;
    :catch_35
    move-exception v0

    .line 1090
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading timezone: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1087
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "zoneInfo":Llibcore/util/ZoneInfo;
    :cond_55
    return-object v1
.end method

.method private toChar(I)C
    .registers 3
    .param p1, "n"    # I

    .prologue
    .line 1149
    if-ltz p1, :cond_a

    const/16 v0, 0x9

    if-gt p1, v0, :cond_a

    add-int/lit8 v0, p1, 0x30

    int-to-char v0, v0

    :goto_9
    return v0

    :cond_a
    const/16 v0, 0x20

    goto :goto_9
.end method

.method private updateZoneInfoFromTimeZone()V
    .registers 3

    .prologue
    .line 1073
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo;->getID()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1074
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/format/Time$TimeCalculator;->lookupZoneInfo(Ljava/lang/String;)Llibcore/util/ZoneInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    .line 1076
    :cond_16
    return-void
.end method


# virtual methods
.method public copyFieldsFromTime(Landroid/text/format/Time;)V
    .registers 6
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->second:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setSecond(I)V

    .line 1242
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->minute:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMinute(I)V

    .line 1243
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->hour:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setHour(I)V

    .line 1244
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonthDay(I)V

    .line 1245
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setMonth(I)V

    .line 1246
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->year:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYear(I)V

    .line 1247
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->weekDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setWeekDay(I)V

    .line 1248
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->yearDay:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setYearDay(I)V

    .line 1249
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget v1, p1, Landroid/text/format/Time;->isDst:I

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    .line 1250
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-wide v2, p1, Landroid/text/format/Time;->gmtoff:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Llibcore/util/ZoneInfo$WallTime;->setGmtOffset(I)V

    .line 1252
    iget-boolean v0, p1, Landroid/text/format/Time;->allDay:Z

    if-eqz v0, :cond_5f

    iget v0, p1, Landroid/text/format/Time;->second:I

    if-nez v0, :cond_57

    iget v0, p1, Landroid/text/format/Time;->minute:I

    if-nez v0, :cond_57

    iget v0, p1, Landroid/text/format/Time;->hour:I

    if-eqz v0, :cond_5f

    .line 1253
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "allDay is true but sec, min, hour are not 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_5f
    iget-object v0, p1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    iput-object v0, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 1257
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1258
    return-void
.end method

.method public copyFieldsToTime(Landroid/text/format/Time;)V
    .registers 4
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->second:I

    .line 1224
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->minute:I

    .line 1225
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->hour:I

    .line 1226
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->monthDay:I

    .line 1227
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->month:I

    .line 1228
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->year:I

    .line 1231
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->weekDay:I

    .line 1232
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->yearDay:I

    .line 1235
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v0

    iput v0, p1, Landroid/text/format/Time;->isDst:I

    .line 1237
    iget-object v0, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v0}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p1, Landroid/text/format/Time;->gmtoff:J

    .line 1238
    return-void
.end method

.method public format(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 1065
    if-nez p1, :cond_4

    .line 1066
    const-string p1, "%c"

    .line 1068
    :cond_4
    new-instance v0, Landroid/text/format/TimeFormatter;

    invoke-direct {v0}, Landroid/text/format/TimeFormatter;-><init>()V

    .line 1069
    .local v0, "formatter":Landroid/text/format/TimeFormatter;
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/format/TimeFormatter;->format(Ljava/lang/String;Llibcore/util/ZoneInfo$WallTime;Llibcore/util/ZoneInfo;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public format2445(Z)Ljava/lang/String;
    .registers 10
    .param p1, "hasTime"    # Z

    .prologue
    const/16 v3, 0x10

    const/16 v7, 0xf

    const/16 v4, 0x8

    const/4 v6, 0x0

    .line 1102
    if-eqz p1, :cond_73

    move v2, v3

    :goto_a
    new-array v0, v2, [C

    .line 1103
    .local v0, "buf":[C
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v1

    .line 1105
    .local v1, "n":I
    div-int/lit16 v2, v1, 0x3e8

    invoke-direct {p0, v2}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v2

    aput-char v2, v0, v6

    .line 1106
    rem-int/lit16 v1, v1, 0x3e8

    .line 1107
    const/4 v2, 0x1

    div-int/lit8 v5, v1, 0x64

    invoke-direct {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1108
    rem-int/lit8 v1, v1, 0x64

    .line 1109
    const/4 v2, 0x2

    div-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1110
    rem-int/lit8 v1, v1, 0xa

    .line 1111
    const/4 v2, 0x3

    invoke-direct {p0, v1}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1113
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 1114
    const/4 v2, 0x4

    div-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1115
    const/4 v2, 0x5

    rem-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1117
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v1

    .line 1118
    const/4 v2, 0x6

    div-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1119
    const/4 v2, 0x7

    rem-int/lit8 v5, v1, 0xa

    invoke-direct {p0, v5}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v5

    aput-char v5, v0, v2

    .line 1121
    if-nez p1, :cond_75

    .line 1122
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    .line 1144
    :goto_72
    return-object v2

    .end local v0    # "buf":[C
    .end local v1    # "n":I
    :cond_73
    move v2, v4

    .line 1102
    goto :goto_a

    .line 1125
    .restart local v0    # "buf":[C
    .restart local v1    # "n":I
    :cond_75
    const/16 v2, 0x54

    aput-char v2, v0, v4

    .line 1127
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v1

    .line 1128
    const/16 v2, 0x9

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v0, v2

    .line 1129
    const/16 v2, 0xa

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v0, v2

    .line 1131
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v1

    .line 1132
    const/16 v2, 0xb

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v0, v2

    .line 1133
    const/16 v2, 0xc

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v0, v2

    .line 1135
    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v1

    .line 1136
    const/16 v2, 0xd

    div-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v0, v2

    .line 1137
    const/16 v2, 0xe

    rem-int/lit8 v4, v1, 0xa

    invoke-direct {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toChar(I)C

    move-result v4

    aput-char v4, v0, v2

    .line 1139
    const-string v2, "UTC"

    iget-object v4, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_db

    .line 1141
    const/16 v2, 0x5a

    aput-char v2, v0, v7

    .line 1142
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    goto :goto_72

    .line 1144
    :cond_db
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v6, v7}, Ljava/lang/String;-><init>([CII)V

    goto :goto_72
.end method

.method public setTimeInMillis(J)V
    .registers 8
    .param p1, "millis"    # J

    .prologue
    .line 1058
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    .line 1060
    .local v0, "intSeconds":I
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1061
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    .line 1062
    return-void
.end method

.method public switchTimeZone(Ljava/lang/String;)V
    .registers 5
    .param p1, "timezone"    # Ljava/lang/String;

    .prologue
    .line 1095
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v0

    .line 1096
    .local v0, "seconds":I
    iput-object p1, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    .line 1097
    invoke-direct {p0}, Landroid/text/format/Time$TimeCalculator;->updateZoneInfoFromTimeZone()V

    .line 1098
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v0, v2}, Llibcore/util/ZoneInfo$WallTime;->localtime(ILlibcore/util/ZoneInfo;)V

    .line 1099
    return-void
.end method

.method public toMillis(Z)J
    .registers 8
    .param p1, "ignoreDst"    # Z

    .prologue
    const/4 v3, -0x1

    .line 1045
    if-eqz p1, :cond_8

    .line 1046
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v1, v3}, Llibcore/util/ZoneInfo$WallTime;->setIsDst(I)V

    .line 1049
    :cond_8
    iget-object v1, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->zoneInfo:Llibcore/util/ZoneInfo;

    invoke-virtual {v1, v2}, Llibcore/util/ZoneInfo$WallTime;->mktime(Llibcore/util/ZoneInfo;)I

    move-result v0

    .line 1050
    .local v0, "r":I
    if-ne v0, v3, :cond_15

    .line 1051
    const-wide/16 v2, -0x1

    .line 1053
    :goto_14
    return-wide v2

    :cond_15
    int-to-long v2, v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    goto :goto_14
.end method

.method public toStringInternal()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 1159
    const-string v0, "%04d%02d%02dT%02d%02d%02d%s(%d,%d,%d,%d,%d)"

    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v2}, Llibcore/util/ZoneInfo$WallTime;->getYear()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMonthDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getHour()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getMinute()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getSecond()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->timezone:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getWeekDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getYearDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getGmtOffset()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Landroid/text/format/Time$TimeCalculator;->wallTime:Llibcore/util/ZoneInfo$WallTime;

    invoke-virtual {v3}, Llibcore/util/ZoneInfo$WallTime;->getIsDst()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    invoke-virtual {p0, v4}, Landroid/text/format/Time$TimeCalculator;->toMillis(Z)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
