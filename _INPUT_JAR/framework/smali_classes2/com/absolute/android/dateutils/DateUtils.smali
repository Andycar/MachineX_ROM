.class public Lcom/absolute/android/dateutils/DateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final a(II)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 33
    .line 34
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 35
    if-nez p0, :cond_2c

    .line 36
    const/4 v0, 0x1

    .line 44
    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 46
    if-ge v0, p1, :cond_24

    .line 48
    :goto_f
    sub-int v3, p1, v0

    if-ge v1, v3, :cond_24

    .line 49
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 38
    :goto_1b
    if-lez v2, :cond_8

    .line 40
    add-int/lit8 v3, v0, 0x1

    .line 41
    div-int/lit8 v0, v2, 0xa

    move v2, v0

    move v0, v3

    goto :goto_1b

    .line 51
    :cond_24
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    move v2, v0

    move v0, v1

    goto :goto_1b
.end method

.method public static decodeUTCDateAsCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 14

    .prologue
    const/16 v12, 0x2d

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 145
    .line 146
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v12, :cond_fd

    move v0, v1

    .line 152
    :goto_c
    add-int/lit8 v3, v0, 0x4

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 153
    add-int/lit8 v0, v0, 0x5

    .line 155
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 156
    add-int/lit8 v0, v0, 0x3

    .line 158
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 159
    add-int/lit8 v0, v0, 0x3

    .line 161
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 162
    add-int/lit8 v0, v0, 0x3

    .line 164
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 165
    add-int/lit8 v0, v0, 0x3

    .line 167
    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 168
    add-int/lit8 v0, v0, 0x2

    .line 170
    const-string v3, "."

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v4, :cond_5b

    .line 173
    add-int/lit8 v0, v0, 0x1

    .line 174
    const-string v3, "0123456789"

    .line 175
    :goto_48
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v0, v11, :cond_5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-eq v11, v4, :cond_5b

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    .line 188
    :cond_5b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_f9

    .line 190
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v11, 0x5a

    if-eq v3, v11, :cond_f9

    .line 193
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 194
    if-ne v3, v12, :cond_ec

    move v4, v1

    .line 201
    :cond_70
    :goto_70
    if-eqz v4, :cond_f5

    .line 203
    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 204
    add-int/lit8 v2, v0, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v0, v3

    move v3, v4

    move v4, v1

    .line 209
    :goto_8d
    const-string v11, "GMT-00:00"

    invoke-static {v11}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v11

    .line 210
    invoke-static {v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v11

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/4 v1, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/4 v1, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/16 v1, 0xb

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 215
    const/16 v1, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 216
    const/16 v1, 0xd

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 218
    invoke-virtual {v11}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 220
    if-eqz v4, :cond_f3

    .line 222
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, v2, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    mul-int/2addr v0, v3

    int-to-long v0, v0

    add-long/2addr v0, v6

    .line 225
    :goto_e3
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 227
    return-object v11

    .line 196
    :cond_ec
    const/16 v11, 0x2b

    if-eq v3, v11, :cond_70

    move v4, v2

    .line 199
    goto/16 :goto_70

    :cond_f3
    move-wide v0, v6

    goto :goto_e3

    :cond_f5
    move v0, v2

    move v3, v4

    move v4, v1

    goto :goto_8d

    :cond_f9
    move v0, v2

    move v3, v1

    move v4, v2

    goto :goto_8d

    :cond_fd
    move v0, v2

    goto/16 :goto_c
.end method

.method public static encodeDateAsLocalTime(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v1, 0xc

    const/4 v4, 0x2

    .line 106
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x19

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 109
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 114
    if-nez v0, :cond_1e

    move v0, v1

    .line 116
    :cond_1e
    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    const/16 v0, 0x9

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_8e

    .line 124
    const-string v0, "AM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :goto_59
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const/4 v0, 0x5

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0, v4}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 126
    :cond_8e
    const-string v0, "PM "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_59
.end method

.method public static encodeDateAsUTC(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x2

    .line 75
    const-string v0, "GMT-00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 77
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 81
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 84
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 88
    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1, v3}, Lcom/absolute/android/dateutils/DateUtils;->a(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimeUTC()Ljava/util/Calendar;
    .registers 1

    .prologue
    .line 62
    const-string v0, "GMT-00:00"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 63
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 64
    return-object v0
.end method
