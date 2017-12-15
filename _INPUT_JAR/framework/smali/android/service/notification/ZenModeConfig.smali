.class public Landroid/service/notification/ZenModeConfig;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    }
.end annotation


# static fields
.field private static final ALLOW_ATT_ALARMS:Ljava/lang/String; = "alarms"

.field private static final ALLOW_ATT_APPLYDOWNTIEM:Ljava/lang/String; = "applydowntime"

.field private static final ALLOW_ATT_CALLS:Ljava/lang/String; = "calls"

.field private static final ALLOW_ATT_EVENTS:Ljava/lang/String; = "events"

.field private static final ALLOW_ATT_FROM:Ljava/lang/String; = "from"

.field private static final ALLOW_ATT_MESSAGES:Ljava/lang/String; = "messages"

.field private static final ALLOW_TAG:Ljava/lang/String; = "allow"

.field public static final ALL_DAYS:[I

.field private static final CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final CONDITION_ATT_FLAGS:Ljava/lang/String; = "flags"

.field private static final CONDITION_ATT_ICON:Ljava/lang/String; = "icon"

.field private static final CONDITION_ATT_ID:Ljava/lang/String; = "id"

.field private static final CONDITION_ATT_LINE1:Ljava/lang/String; = "line1"

.field private static final CONDITION_ATT_LINE2:Ljava/lang/String; = "line2"

.field private static final CONDITION_ATT_STATE:Ljava/lang/String; = "state"

.field private static final CONDITION_ATT_SUMMARY:Ljava/lang/String; = "summary"

.field private static final CONDITION_TAG:Ljava/lang/String; = "condition"

.field private static final COUNTDOWN_PATH:Ljava/lang/String; = "countdown"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/ZenModeConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ALLOW_ALARMS:Z = true

.field private static final DEFAULT_ALLOW_EVENTS:Z = false

.field private static final DEFAULT_APPLY_DOWNTIME:Z = false

.field private static final DOWNTIME_PATH:Ljava/lang/String; = "downtime"

.field private static final EXIT_CONDITION_ATT_COMPONENT:Ljava/lang/String; = "component"

.field private static final EXIT_CONDITION_TAG:Ljava/lang/String; = "exitCondition"

.field public static final MAX_SOURCE:I = 0x2

.field private static final MINUTES_MS:I = 0xea60

.field public static final MINUTE_BUCKETS:[I

.field private static final SECONDS_MS:I = 0x3e8

.field private static final SLEEP_ATT_END_HR:Ljava/lang/String; = "endHour"

.field private static final SLEEP_ATT_END_MIN:Ljava/lang/String; = "endMin"

.field private static final SLEEP_ATT_MODE:Ljava/lang/String; = "mode"

.field private static final SLEEP_ATT_START_HR:Ljava/lang/String; = "startHour"

.field private static final SLEEP_ATT_START_MIN:Ljava/lang/String; = "startMin"

.field public static final SLEEP_MODE_DAYS_PREFIX:Ljava/lang/String; = "days:"

.field public static final SLEEP_MODE_NIGHTS:Ljava/lang/String; = "nights"

.field public static final SLEEP_MODE_WEEKNIGHTS:Ljava/lang/String; = "weeknights"

.field private static final SLEEP_TAG:Ljava/lang/String; = "sleep"

.field public static final SOURCE_ANYONE:I = 0x0

.field public static final SOURCE_CONTACT:I = 0x1

.field public static final SOURCE_STAR:I = 0x2

.field private static final SYSTEM_AUTHORITY:Ljava/lang/String; = "android"

.field private static TAG:Ljava/lang/String; = null

.field public static final WEEKNIGHT_DAYS:[I

.field private static final XML_VERSION:I = 0x1

.field private static final ZEN_ATT_VERSION:Ljava/lang/String; = "version"

.field private static final ZEN_TAG:Ljava/lang/String; = "zen"

.field private static final ZERO_VALUE_MS:I = 0x4e20


# instance fields
.field public allowAlarms:Z

.field public allowCalls:Z

.field public allowEvents:Z

.field public allowFrom:I

.field public allowMessages:Z

.field public applyDowntime:Z

.field public conditionComponents:[Landroid/content/ComponentName;

.field public conditionIds:[Landroid/net/Uri;

.field public exitCondition:Landroid/service/notification/Condition;

.field public exitConditionComponent:Landroid/content/ComponentName;

.field public sleepEndHour:I

.field public sleepEndMinute:I

.field public sleepMode:Ljava/lang/String;

.field public sleepStartHour:I

.field public sleepStartMinute:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string v0, "ZenModeConfig"

    sput-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_26

    sput-object v0, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    .line 59
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_46

    sput-object v0, Landroid/service/notification/ZenModeConfig;->MINUTE_BUCKETS:[I

    .line 478
    new-instance v0, Landroid/service/notification/ZenModeConfig$1;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$1;-><init>()V

    sput-object v0, Landroid/service/notification/ZenModeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 54
    nop

    :array_26
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data

    .line 56
    :array_38
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data

    .line 59
    :array_46
    .array-data 4
        0xf
        0x1e
        0x2d
        0x3c
        0x78
        0xb4
        0xf0
        0x1e0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 107
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 109
    iput v1, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 106
    iput-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 107
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 109
    iput v3, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_98

    move v1, v2

    :goto_15
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_9b

    move v1, v2

    :goto_1e
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_9d

    move v1, v2

    :goto_27
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_9f

    move v1, v2

    :goto_30
    iput-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_39

    move v3, v2

    :cond_39
    iput-boolean v3, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_47

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 134
    :cond_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    .local v0, "len":I
    if-lez v0, :cond_70

    .line 140
    new-array v1, v0, [Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 141
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 143
    :cond_70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    if-lez v0, :cond_81

    .line 145
    new-array v1, v0, [Landroid/net/Uri;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    .line 146
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 148
    :cond_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 149
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/notification/Condition;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 150
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    .line 151
    return-void

    .end local v0    # "len":I
    :cond_98
    move v1, v3

    .line 124
    goto/16 :goto_15

    :cond_9b
    move v1, v3

    .line 125
    goto :goto_1e

    :cond_9d
    move v1, v3

    .line 126
    goto :goto_27

    :cond_9f
    move v1, v3

    .line 128
    goto :goto_30
.end method

.method public static isValidCountdownConditionId(Landroid/net/Uri;)Z
    .registers 5
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 544
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseCountdownConditionId(Landroid/net/Uri;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static isValidDowntimeConditionId(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    .line 586
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidHour(I)Z
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 432
    if-ltz p0, :cond_8

    const/16 v0, 0x18

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidMinute(I)Z
    .registers 2
    .param p0, "val"    # I

    .prologue
    .line 436
    if-ltz p0, :cond_8

    const/16 v0, 0x3c

    if-ge p0, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static isValidSleepMode(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    .line 265
    if-eqz p0, :cond_1a

    const-string/jumbo v0, "nights"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string/jumbo v0, "weeknights"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseDays(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public static readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;
    .registers 12
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 406
    const-string v0, "id"

    invoke-static {p0, v0}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 407
    .local v1, "id":Landroid/net/Uri;
    const-string/jumbo v0, "summary"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "summary":Ljava/lang/String;
    const-string v0, "line1"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "line1":Ljava/lang/String;
    const-string v0, "line2"

    invoke-interface {p0, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, "line2":Ljava/lang/String;
    const-string v0, "icon"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 411
    .local v5, "icon":I
    const-string/jumbo v0, "state"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 412
    .local v6, "state":I
    const-string v0, "flags"

    invoke-static {p0, v0, v10}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v7

    .line 414
    .local v7, "flags":I
    :try_start_2e
    new-instance v0, Landroid/service/notification/Condition;

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_33
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_33} :catch_34

    .line 417
    :goto_33
    return-object v0

    .line 415
    :catch_34
    move-exception v8

    .line 416
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    sget-object v0, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    const-string v10, "Unable to read condition xml"

    invoke-static {v0, v10, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v9

    .line 417
    goto :goto_33
.end method

.method public static readXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/ZenModeConfig;
    .registers 18
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v12

    .line 299
    .local v12, "type":I
    const/4 v14, 0x2

    if-eq v12, v14, :cond_9

    const/4 v8, 0x0

    .line 314
    :cond_8
    :goto_8
    return-object v8

    .line 300
    :cond_9
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 301
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "zen"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_18

    const/4 v8, 0x0

    goto :goto_8

    .line 302
    :cond_18
    new-instance v8, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v8}, Landroid/service/notification/ZenModeConfig;-><init>()V

    .line 303
    .local v8, "rt":Landroid/service/notification/ZenModeConfig;
    const-string/jumbo v14, "version"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v13

    .line 304
    .local v13, "version":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 305
    .local v2, "conditionComponents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v4, "conditionIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_31
    :goto_31
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_18e

    .line 307
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 308
    const/4 v14, 0x3

    if-ne v12, v14, :cond_6b

    const-string/jumbo v14, "zen"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6b

    .line 309
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 310
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/content/ComponentName;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/content/ComponentName;

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    .line 312
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Landroid/net/Uri;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Landroid/net/Uri;

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    goto :goto_8

    .line 316
    :cond_6b
    const/4 v14, 0x2

    if-ne v12, v14, :cond_31

    .line 317
    const-string v14, "allow"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_df

    .line 318
    const-string v14, "calls"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 319
    const-string/jumbo v14, "messages"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 320
    const-string v14, "events"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    .line 322
    const-string v14, "alarms"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    .line 323
    const-string v14, "applydowntime"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v8, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    .line 325
    const-string v14, "from"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v14

    iput v14, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    .line 326
    iget v14, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    if-ltz v14, :cond_c2

    iget v14, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    const/4 v15, 0x2

    if-le v14, v15, :cond_31

    .line 327
    :cond_c2
    new-instance v14, Ljava/lang/IndexOutOfBoundsException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bad source in config:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v8, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 329
    :cond_df
    const-string/jumbo v14, "sleep"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14c

    .line 330
    const/4 v14, 0x0

    const-string/jumbo v15, "mode"

    move-object/from16 v0, p0

    invoke-interface {v0, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 331
    .local v7, "mode":Ljava/lang/String;
    invoke-static {v7}, Landroid/service/notification/ZenModeConfig;->isValidSleepMode(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_142

    .end local v7    # "mode":Ljava/lang/String;
    :goto_f8
    iput-object v7, v8, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    .line 332
    const-string/jumbo v14, "startHour"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    .line 333
    .local v9, "startHour":I
    const-string/jumbo v14, "startMin"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v10

    .line 334
    .local v10, "startMinute":I
    const-string v14, "endHour"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    .line 335
    .local v5, "endHour":I
    const-string v14, "endMin"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/service/notification/ZenModeConfig;->safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v6

    .line 336
    .local v6, "endMinute":I
    invoke-static {v9}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v14

    if-eqz v14, :cond_144

    .end local v9    # "startHour":I
    :goto_126
    iput v9, v8, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    .line 337
    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v14

    if-eqz v14, :cond_146

    .end local v10    # "startMinute":I
    :goto_12e
    iput v10, v8, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    .line 338
    invoke-static {v5}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v14

    if-eqz v14, :cond_148

    .end local v5    # "endHour":I
    :goto_136
    iput v5, v8, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    .line 339
    invoke-static {v6}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v14

    if-eqz v14, :cond_14a

    .end local v6    # "endMinute":I
    :goto_13e
    iput v6, v8, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    goto/16 :goto_31

    .line 331
    .restart local v7    # "mode":Ljava/lang/String;
    :cond_142
    const/4 v7, 0x0

    goto :goto_f8

    .line 336
    .end local v7    # "mode":Ljava/lang/String;
    .restart local v5    # "endHour":I
    .restart local v6    # "endMinute":I
    .restart local v9    # "startHour":I
    .restart local v10    # "startMinute":I
    :cond_144
    const/4 v9, 0x0

    goto :goto_126

    .line 337
    .end local v9    # "startHour":I
    :cond_146
    const/4 v10, 0x0

    goto :goto_12e

    .line 338
    .end local v10    # "startMinute":I
    :cond_148
    const/4 v5, 0x0

    goto :goto_136

    .line 339
    .end local v5    # "endHour":I
    :cond_14a
    const/4 v6, 0x0

    goto :goto_13e

    .line 340
    .end local v6    # "endMinute":I
    :cond_14c
    const-string v14, "condition"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_170

    .line 341
    const-string v14, "component"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 343
    .local v1, "component":Landroid/content/ComponentName;
    const-string v14, "id"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/service/notification/ZenModeConfig;->safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 344
    .local v3, "conditionId":Landroid/net/Uri;
    if-eqz v1, :cond_31

    if-eqz v3, :cond_31

    .line 345
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_31

    .line 348
    .end local v1    # "component":Landroid/content/ComponentName;
    .end local v3    # "conditionId":Landroid/net/Uri;
    :cond_170
    const-string v14, "exitCondition"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_31

    .line 349
    invoke-static/range {p0 .. p0}, Landroid/service/notification/ZenModeConfig;->readConditionXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/service/notification/Condition;

    move-result-object v14

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    .line 350
    iget-object v14, v8, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v14, :cond_31

    .line 351
    const-string v14, "component"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Landroid/service/notification/ZenModeConfig;->safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v14

    iput-object v14, v8, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    goto/16 :goto_31

    .line 357
    :cond_18e
    new-instance v14, Ljava/lang/IllegalStateException;

    const-string v15, "Failed to reach END_DOCUMENT"

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private static safeBoolean(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Z)Z
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 440
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 442
    .end local p2    # "defValue":Z
    :goto_b
    return p2

    .restart local p2    # "defValue":Z
    :cond_c
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_b
.end method

.method private static safeComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 451
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 452
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 453
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b
.end method

.method private static safeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 446
    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static safeUri(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;
    .registers 5
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p1, "att"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 457
    invoke-interface {p0, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 458
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 459
    :goto_b
    return-object v1

    :cond_c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_b
.end method

.method public static sourceToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "source"    # I

    .prologue
    .line 213
    packed-switch p0, :pswitch_data_10

    .line 221
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 215
    :pswitch_6
    const-string v0, "anyone"

    goto :goto_5

    .line 217
    :pswitch_9
    const-string v0, "contacts"

    goto :goto_5

    .line 219
    :pswitch_c
    const-string/jumbo v0, "stars"

    goto :goto_5

    .line 213
    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method public static toCountdownConditionId(J)Landroid/net/Uri;
    .registers 4
    .param p0, "time"    # J

    .prologue
    .line 524
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toDowntimeConditionId(Landroid/service/notification/ZenModeConfig$DowntimeInfo;)Landroid/net/Uri;
    .registers 5
    .param p0, "downtime"    # Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    .prologue
    .line 551
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "condition"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "downtime"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "start"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "end"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static toTimeCondition(I)Landroid/service/notification/Condition;
    .registers 7
    .param p0, "minutesFromNow"    # I

    .prologue
    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 502
    .local v2, "now":J
    if-nez p0, :cond_f

    const-wide/16 v0, 0x4e20

    .line 503
    .local v0, "millis":J
    :goto_8
    add-long v4, v2, v0

    invoke-static {v4, v5, p0}, Landroid/service/notification/ZenModeConfig;->toTimeCondition(JI)Landroid/service/notification/Condition;

    move-result-object v4

    return-object v4

    .line 502
    .end local v0    # "millis":J
    :cond_f
    const v4, 0xea60

    mul-int/2addr v4, p0

    int-to-long v0, v4

    goto :goto_8
.end method

.method public static toTimeCondition(JI)Landroid/service/notification/Condition;
    .registers 13
    .param p0, "time"    # J
    .param p2, "minutes"    # I

    .prologue
    const/16 v4, 0x3c

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 507
    if-ge p2, v4, :cond_2b

    move v8, p2

    .line 508
    .local v8, "num":I
    :goto_7
    if-ge p2, v4, :cond_34

    const v9, 0x1140019

    .line 511
    .local v9, "resId":I
    :goto_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v9, v8, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 512
    .local v2, "caption":Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/service/notification/ZenModeConfig;->toCountdownConditionId(J)Landroid/net/Uri;

    move-result-object v1

    .line 513
    .local v1, "id":Landroid/net/Uri;
    new-instance v0, Landroid/service/notification/Condition;

    const-string v3, ""

    const-string v4, ""

    move v7, v6

    invoke-direct/range {v0 .. v7}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v0

    .line 507
    .end local v1    # "id":Landroid/net/Uri;
    .end local v2    # "caption":Ljava/lang/String;
    .end local v8    # "num":I
    .end local v9    # "resId":I
    :cond_2b
    int-to-float v0, p2

    const/high16 v3, 0x42700000    # 60.0f

    div-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v8

    goto :goto_7

    .line 508
    .restart local v8    # "num":I
    :cond_34
    const v9, 0x114001a

    goto :goto_c
.end method

.method public static tryParseCountdownConditionId(Landroid/net/Uri;)J
    .registers 7
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const-wide/16 v2, 0x0

    .line 532
    const-string v1, "android"

    invoke-static {p0, v1}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 539
    :cond_a
    :goto_a
    return-wide v2

    .line 533
    :cond_b
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_a

    const-string v1, "countdown"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 536
    :try_start_27
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_35} :catch_37

    move-result-wide v2

    goto :goto_a

    .line 537
    :catch_37
    move-exception v0

    .line 538
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Landroid/service/notification/ZenModeConfig;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error parsing countdown condition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public static tryParseDays(Ljava/lang/String;)[I
    .registers 9
    .param p0, "sleepMode"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x0

    .line 270
    if-nez p0, :cond_6

    move-object v2, v4

    .line 284
    :cond_5
    :goto_5
    return-object v2

    .line 271
    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 272
    const-string/jumbo v5, "nights"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    sget-object v2, Landroid/service/notification/ZenModeConfig;->ALL_DAYS:[I

    goto :goto_5

    .line 273
    :cond_16
    const-string/jumbo v5, "weeknights"

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    sget-object v2, Landroid/service/notification/ZenModeConfig;->WEEKNIGHT_DAYS:[I

    goto :goto_5

    .line 274
    :cond_22
    const-string v5, "days:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2c

    move-object v2, v4

    goto :goto_5

    .line 275
    :cond_2c
    const-string v5, "days:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    move-object v2, v4

    goto :goto_5

    .line 276
    :cond_36
    const-string v5, "days:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    .local v3, "tokens":[Ljava/lang/String;
    array-length v5, v3

    if-nez v5, :cond_4b

    move-object v2, v4

    goto :goto_5

    .line 278
    :cond_4b
    array-length v5, v3

    new-array v2, v5, [I

    .line 279
    .local v2, "rt":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4f
    array-length v5, v3

    if-ge v1, v5, :cond_5

    .line 280
    aget-object v5, v3, v1

    invoke-static {v5, v7}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 281
    .local v0, "day":I
    if-ne v0, v7, :cond_5c

    move-object v2, v4

    goto :goto_5

    .line 282
    :cond_5c
    aput v0, v2, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f
.end method

.method public static tryParseDowntimeConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .registers 8
    .param p0, "conditionId"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 560
    const-string v3, "android"

    invoke-static {p0, v3}, Landroid/service/notification/Condition;->isValidId(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_25

    const-string v3, "downtime"

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 573
    :cond_25
    :goto_25
    return-object v0

    .line 565
    :cond_26
    const-string/jumbo v3, "start"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v2

    .line 566
    .local v2, "start":[I
    const-string v3, "end"

    invoke-virtual {p0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->tryParseHourAndMinute(Ljava/lang/String;)[I

    move-result-object v1

    .line 567
    .local v1, "end":[I
    if-eqz v2, :cond_25

    if-eqz v1, :cond_25

    .line 568
    new-instance v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;-><init>()V

    .line 569
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    aget v3, v2, v5

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    .line 570
    aget v3, v2, v6

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    .line 571
    aget v3, v1, v5

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    .line 572
    aget v3, v1, v6

    iput v3, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    goto :goto_25
.end method

.method private static tryParseHourAndMinute(Ljava/lang/String;)[I
    .registers 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 577
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 582
    :cond_a
    :goto_a
    return-object v3

    .line 578
    :cond_b
    const/16 v4, 0x2e

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 579
    .local v1, "i":I
    if-lt v1, v7, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_a

    .line 580
    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v0

    .line 581
    .local v0, "hour":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Landroid/service/notification/ZenModeConfig;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    .line 582
    .local v2, "minute":I
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v0, v3, v6

    aput v2, v3, v7

    goto :goto_a
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .registers 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "defValue"    # I

    .prologue
    .line 288
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    .end local p1    # "defValue":I
    :goto_6
    return p1

    .line 290
    .restart local p1    # "defValue":I
    :cond_7
    :try_start_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_e} :catch_10

    move-result p1

    goto :goto_6

    .line 291
    :catch_10
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_6
.end method

.method public static writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 5
    .param p0, "c"    # Landroid/service/notification/Condition;
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 422
    const-string v0, "id"

    iget-object v1, p0, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 423
    const-string/jumbo v0, "summary"

    iget-object v1, p0, Landroid/service/notification/Condition;->summary:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 424
    const-string v0, "line1"

    iget-object v1, p0, Landroid/service/notification/Condition;->line1:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 425
    const-string v0, "line2"

    iget-object v1, p0, Landroid/service/notification/Condition;->line2:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 426
    const-string v0, "icon"

    iget v1, p0, Landroid/service/notification/Condition;->icon:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 427
    const-string/jumbo v0, "state"

    iget v1, p0, Landroid/service/notification/Condition;->state:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 428
    const-string v0, "flags"

    iget v1, p0, Landroid/service/notification/Condition;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 429
    return-void
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig;
    .registers 3

    .prologue
    .line 468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 470
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p0, v0, v1}, Landroid/service/notification/ZenModeConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 471
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 472
    new-instance v1, Landroid/service/notification/ZenModeConfig;

    invoke-direct {v1, v0}, Landroid/service/notification/ZenModeConfig;-><init>(Landroid/os/Parcel;)V
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_15

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1

    :catchall_15
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 227
    instance-of v3, p1, Landroid/service/notification/ZenModeConfig;

    if-nez v3, :cond_8

    move v1, v2

    .line 230
    :cond_7
    :goto_7
    return v1

    .line 228
    :cond_8
    if-eq p1, p0, :cond_7

    move-object v0, p1

    .line 229
    check-cast v0, Landroid/service/notification/ZenModeConfig;

    .line 230
    .local v0, "other":Landroid/service/notification/ZenModeConfig;
    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v3, v4, :cond_7b

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-ne v3, v4, :cond_7b

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    if-ne v3, v4, :cond_7b

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-ne v3, v4, :cond_7b

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-ne v3, v4, :cond_7b

    iget-boolean v3, v0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    iget-boolean v4, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-ne v3, v4, :cond_7b

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    if-ne v3, v4, :cond_7b

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    if-ne v3, v4, :cond_7b

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    if-ne v3, v4, :cond_7b

    iget v3, v0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    iget v4, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    if-ne v3, v4, :cond_7b

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-static {v3, v4}, Ljava/util/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_7b
    move v1, v2

    goto :goto_7
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 251
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isValid()Z
    .registers 2

    .prologue
    .line 259
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidSleepMode(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public toDowntimeInfo()Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    .registers 3

    .prologue
    .line 492
    new-instance v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$DowntimeInfo;-><init>()V

    .line 493
    .local v0, "downtime":Landroid/service/notification/ZenModeConfig$DowntimeInfo;
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startHour:I

    .line 494
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->startMinute:I

    .line 495
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endHour:I

    .line 496
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$DowntimeInfo;->endMinute:I

    .line 497
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x2e

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v2, Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x5b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "allowCalls="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowMessages="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowFrom="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowEvents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",allowAlarms="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",applyDowntime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepStart="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",sleepEnd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",conditionComponents="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-nez v0, :cond_d8

    move-object v0, v1

    :goto_a3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",conditionIds="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-nez v2, :cond_e1

    :goto_b1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exitCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",exitConditionComponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d8
    const-string v0, ","

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    :cond_e1
    const-string v1, ","

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v0, :cond_82

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v0, :cond_84

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v0, :cond_86

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eqz v0, :cond_88

    move v0, v1

    :goto_1f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v0, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    if-eqz v0, :cond_8a

    move v0, v1

    :goto_27
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v0, :cond_8c

    .line 163
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    :goto_36
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v0, :cond_90

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v0

    if-lez v0, :cond_90

    .line 173
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 178
    :goto_5e
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v0, :cond_94

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_94

    .line 179
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 184
    :goto_72
    iget v0, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 186
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 187
    return-void

    :cond_82
    move v0, v2

    .line 155
    goto :goto_7

    :cond_84
    move v0, v2

    .line 156
    goto :goto_f

    :cond_86
    move v0, v2

    .line 157
    goto :goto_17

    :cond_88
    move v0, v2

    .line 159
    goto :goto_1f

    :cond_8a
    move v0, v2

    .line 160
    goto :goto_27

    .line 166
    :cond_8c
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_36

    .line 176
    :cond_90
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5e

    .line 182
    :cond_94
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_72
.end method

.method public writeXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 361
    const-string/jumbo v1, "zen"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 362
    const-string/jumbo v1, "version"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 364
    const-string v1, "allow"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    const-string v1, "calls"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 366
    const-string/jumbo v1, "messages"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 367
    const-string v1, "events"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 369
    const-string v1, "alarms"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    const-string v1, "applydowntime"

    iget-boolean v2, p0, Landroid/service/notification/ZenModeConfig;->applyDowntime:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 372
    const-string v1, "from"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->allowFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    const-string v1, "allow"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    const-string/jumbo v1, "sleep"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    if-eqz v1, :cond_71

    .line 377
    const-string/jumbo v1, "mode"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->sleepMode:Ljava/lang/String;

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 379
    :cond_71
    const-string/jumbo v1, "startHour"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartHour:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 380
    const-string/jumbo v1, "startMin"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepStartMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    const-string v1, "endHour"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndHour:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    const-string v1, "endMin"

    iget v2, p0, Landroid/service/notification/ZenModeConfig;->sleepEndMinute:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 383
    const-string/jumbo v1, "sleep"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 385
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    if-eqz v1, :cond_e2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    if-eqz v1, :cond_e2

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v1, v1

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    array-length v2, v2

    if-ne v1, v2, :cond_e2

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b6
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    array-length v1, v1

    if-ge v0, v1, :cond_e2

    .line 388
    const-string v1, "condition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 389
    const-string v1, "component"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionComponents:[Landroid/content/ComponentName;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    const-string v1, "id"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->conditionIds:[Landroid/net/Uri;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 392
    const-string v1, "condition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 387
    add-int/lit8 v0, v0, 0x1

    goto :goto_b6

    .line 395
    .end local v0    # "i":I
    :cond_e2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_104

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_104

    .line 396
    const-string v1, "exitCondition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 397
    const-string v1, "component"

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig;->exitConditionComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->exitCondition:Landroid/service/notification/Condition;

    invoke-static {v1, p1}, Landroid/service/notification/ZenModeConfig;->writeConditionXml(Landroid/service/notification/Condition;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 400
    const-string v1, "exitCondition"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 402
    :cond_104
    const-string/jumbo v1, "zen"

    invoke-interface {p1, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    return-void
.end method
