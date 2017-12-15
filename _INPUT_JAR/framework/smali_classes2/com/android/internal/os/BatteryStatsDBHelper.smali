.class public Lcom/android/internal/os/BatteryStatsDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "BatteryStatsDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;,
        Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;,
        Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    }
.end annotation


# static fields
.field public static final ACTION_BATTERY_ABUSE:Ljava/lang/String; = "sec.intent.action.BATTERY_ABUSE"

.field public static final ALL:I = 0x2

.field public static final ALL_ONLY_APP:I = 0x8

.field public static final ALL_ONLY_APP_CONSUMER_LIST:I = 0x80

.field public static final ALL_ONLY_APP_TOTAL:I = 0x20

.field static final BATTERY_DELTA:Ljava/lang/String; = "Battery_Delta"

.field private static final BATTERY_DELTA_QUERY_STRING:Ljava/lang/String; = "SELECT batterydelta,lcd_condition FROM Battery_Delta"

.field public static final BATTERY_PERCENTAGE:I = 0x40

.field private static final COLLECTION_QUERY_STRING:Ljava/lang/String; = "SELECT lcd_condition,time,power FROM"

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final DATABASE_NAME:Ljava/lang/String; = "powerManager"

.field private static final DATABASE_VERSION:I = 0x6

.field private static final DEBUG_LOG:Z = false

.field private static final DELETE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

.field private static final KEY_BATTERY_DELTA:Ljava/lang/String; = "batterydelta"

.field private static final KEY_BATTERY_PERC:Ljava/lang/String; = "batterypercent"

.field private static final KEY_LCD:Ljava/lang/String; = "lcd_condition"

.field private static final KEY_NETWORK_USAGE:Ljava/lang/String; = "network_usage"

.field private static final KEY_NOTIFIED_TIME:Ljava/lang/String; = "notified_time"

.field private static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_PERCENTAGE:Ljava/lang/String; = "percentage"

.field private static final KEY_POWER:Ljava/lang/String; = "power"

.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final KEY_TOTALPOWER:Ljava/lang/String; = "totalpower"

.field private static final KEY_USAGE_TIME:Ljava/lang/String; = "usage_time"

.field private static final KEY_WAKEUP:Ljava/lang/String; = "wakeup_count"

.field private static final LAST_ENTRY_QUERY_STRING:Ljava/lang/String; = "SELECT time,totalpower,network_usage FROM"

.field private static final LAST_TOTAL_ENTRY_QUERY_STRING:Ljava/lang/String; = "SELECT time,totalpower,batterypercent FROM [all]"

.field public static final LCD_OFF:I = 0x4

.field public static final LCD_OFF_ONLY_APP:I = 0x10

.field private static final MILLIS_IN_DAY:J = 0x5265c00L

.field private static final MILLIS_IN_HOUR:J = 0x36ee80L

.field static final NAME_END:Ljava/lang/String; = "]"

.field static final NAME_START:Ljava/lang/String; = "["

.field private static final NETWORK_USAGE:I = 0x20

.field private static final ONE_HR_BATTERY_THRESHOLD:Ljava/lang/String; = "one_hr_battery_threshold"

.field static final PACKAGE_QUERY_STRING:Ljava/lang/String; = "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

.field private static final PERC_QUERY_STRING:Ljava/lang/String; = "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

.field static final POWER_CONSUMING_PACKAGES:Ljava/lang/String; = "power_consuming_packages"

.field private static final RATE_QUERY_STRING:Ljava/lang/String; = "SELECT usage_time,power FROM"

.field private static final SCREEN_OFF:I = 0x8

.field private static final SCREEN_ON:I = 0x4

.field private static final SETTING_KEY:Ljava/lang/String; = "key"

.field private static final SETTING_VALUE:Ljava/lang/String; = "value"

.field private static final SIGNATURE_END:Ljava/lang/String; = ")"

.field private static final SIGNATURE_START:Ljava/lang/String; = "("

.field private static final SYSTEM_APP:I = 0x10

.field private static final TAG:Ljava/lang/String; = "BatteryStatsDBHelper"

.field private static final TIME_DIFF_THRESHOLD:J = 0x7d0L

.field private static final TOTAL_POWER:Ljava/lang/String; = "all"

.field private static mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

.field private static mContext:Landroid/content/Context;

.field private static notifiedPowerDrainingApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static sBatteryCapacity:D

.field private static sRealTimeSnapshot:J

.field private static sSystemTimeSnapshot:J

.field private static unNotifiedAbuserMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ONE_HOUR_THRESHOLD:D

.field private mFakeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    .line 153
    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const-string/jumbo v0, "powerManager"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 138
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    .line 200
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper$1;-><init>(Lcom/android/internal/os/BatteryStatsDBHelper;)V

    iput-object v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    sput-object p1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    .line 160
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->registerReceiver()V

    .line 161
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Landroid/content/Context;
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V
    .registers 13
    .param p1, "writeForScreenChange"    # Z
    .param p2, "time"    # J
    .param p4, "batteryDelta"    # I
    .param p5, "currentBatteryPercent"    # I
    .param p6, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 275
    monitor-enter p0

    if-eqz p1, :cond_42

    :try_start_3
    sget-boolean v3, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-nez v3, :cond_40

    const/4 v1, 0x1

    .line 277
    .local v1, "screenCondition":Z
    :goto_8
    if-eqz v1, :cond_45

    const/4 v0, 0x4

    .line 279
    .local v0, "lcdCondition":I
    :goto_b
    invoke-direct {p0, p6, p2, p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 281
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 282
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "lcd_condition"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 283
    const-string/jumbo v3, "time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 284
    const-string v3, "batterydelta"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v3, "batterypercent"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const-string v3, "Battery_Delta"

    const/4 v4, 0x0

    invoke-virtual {p6, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_48

    .line 287
    monitor-exit p0

    return-void

    .line 275
    .end local v0    # "lcdCondition":I
    .end local v1    # "screenCondition":Z
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_40
    const/4 v1, 0x0

    goto :goto_8

    :cond_42
    :try_start_42
    sget-boolean v1, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z
    :try_end_44
    .catchall {:try_start_42 .. :try_end_44} :catchall_48

    goto :goto_8

    .line 277
    .restart local v1    # "screenCondition":Z
    :cond_45
    const/16 v0, 0x8

    goto :goto_b

    .line 275
    .end local v1    # "screenCondition":Z
    :catchall_48
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V
    .registers 19
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 629
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "packageName"

    aput-object v1, v2, v0

    .line 631
    .local v2, "columns":[Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    .line 632
    .local v12, "packageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;>;"
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 633
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 635
    .local v11, "packageName":Ljava/lang/String;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 636
    .local v13, "values":Landroid/content/ContentValues;
    const-string/jumbo v0, "time"

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 637
    const-string/jumbo v0, "packageName"

    invoke-virtual {v13, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string/jumbo v1, "percentage"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 640
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v11, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 642
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_60

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_83

    .line 643
    :cond_60
    const-string/jumbo v0, "power_consuming_packages"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 644
    const-string v0, "BatteryStatsDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inserted abuse of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :goto_7f
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_11

    .line 646
    :cond_83
    const-string/jumbo v0, "power_consuming_packages"

    const-string/jumbo v1, "packageName = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    invoke-virtual {p1, v0, v13, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 648
    const-string v0, "BatteryStatsDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updated abuse of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 653
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_ab
    return-void
.end method

.method private calculateTimeChange()J
    .registers 15

    .prologue
    .line 1310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1311
    .local v2, "actualSystemTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1312
    .local v0, "actualRealtime":J
    sget-wide v10, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    sub-long v10, v0, v10

    sget-wide v12, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    add-long v4, v10, v12

    .line 1314
    .local v4, "expectedSystemTime":J
    sub-long v8, v2, v4

    .line 1315
    .local v8, "timeDiff":J
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 1316
    .local v6, "time":J
    sput-wide v0, Lcom/android/internal/os/BatteryStatsDBHelper;->sRealTimeSnapshot:J

    .line 1317
    sput-wide v2, Lcom/android/internal/os/BatteryStatsDBHelper;->sSystemTimeSnapshot:J

    .line 1319
    const-wide/16 v10, 0x7d0

    cmp-long v10, v6, v10

    if-lez v10, :cond_21

    .line 1324
    .end local v8    # "timeDiff":J
    :goto_20
    return-wide v8

    .restart local v8    # "timeDiff":J
    :cond_21
    const-wide/16 v8, 0x0

    goto :goto_20
.end method

.method private checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V
    .registers 48
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .param p4, "power"    # D

    .prologue
    .line 387
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForPowerThreshold called : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v6, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 390
    .local v17, "c":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_34

    .line 391
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 392
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold:: no tables found, closing cursor"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_33
    :goto_33
    return-void

    .line 395
    :cond_34
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v16, "appSippersForLastHour":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v15, "appSippersFor24Hours":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/UidSipper;>;"
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->maintainNotifiedAppList(J)V

    .line 400
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->mIsOnBattery:Z

    if-nez v6, :cond_4d

    .line 401
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 405
    :cond_4d
    invoke-direct/range {p0 .. p3}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v40

    .line 406
    .local v40, "totalTableDataSet":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v40 .. v40}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v6, v10

    if-gtz v6, :cond_5f

    .line 407
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto :goto_33

    .line 411
    :cond_5f
    const/4 v6, 0x3

    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v8, v6

    const/4 v6, 0x1

    const-string v7, "lcd_condition"

    aput-object v7, v8, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "power"

    aput-object v7, v8, v6

    .line 412
    .local v8, "requestingColumn":[Ljava/lang/String;
    :goto_73
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_1bf

    .line 413
    const-string v6, "name"

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 414
    .local v31, "packageName":Ljava/lang/String;
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "In checkForPowerThreshold, Package name = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v31

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 420
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToLast()Z

    move-result v6

    if-nez v6, :cond_f4

    .line 422
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DROP TABLE IF EXISTS ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 423
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 424
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_73

    .line 428
    :cond_f4
    const-string v6, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 429
    .local v25, "lcdColumn":I
    const-string/jumbo v6, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v37

    .line 430
    .local v37, "timeColumn":I
    const-string/jumbo v6, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 431
    .local v34, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_128

    const/16 v24, 0x1

    .line 433
    .local v24, "isSystemUid":Z
    :goto_11e
    if-eqz v24, :cond_12b

    .line 434
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 435
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_73

    .line 431
    .end local v24    # "isSystemUid":Z
    :cond_128
    const/16 v24, 0x0

    goto :goto_11e

    .line 440
    .restart local v24    # "isSystemUid":Z
    :cond_12b
    const/4 v14, 0x0

    .line 441
    .local v14, "appSipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v28, 0x0

    .line 442
    .local v28, "lcdOffPowerInLastHour":D
    :goto_12e
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_164

    .line 443
    move-object/from16 v0, v21

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 444
    .local v38, "thisTime":J
    sub-long v6, p2, v38

    const-wide/32 v10, 0x36ee80

    cmp-long v6, v6, v10

    if-gez v6, :cond_164

    .line 445
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 446
    .local v18, "curPower":D
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_161

    .end local v18    # "curPower":D
    :goto_15b
    add-double v28, v28, v18

    .line 451
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_12e

    .line 446
    .restart local v18    # "curPower":D
    :cond_161
    const-wide/16 v18, 0x0

    goto :goto_15b

    .line 453
    .end local v18    # "curPower":D
    .end local v38    # "thisTime":J
    :cond_164
    const-wide/16 v6, 0x0

    cmpl-double v6, v28, v6

    if-lez v6, :cond_17b

    .line 454
    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 455
    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v28

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 456
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    :cond_17b
    move-wide/from16 v26, v28

    .line 461
    .local v26, "lcdOffPowerIn24Hours":D
    :goto_17d
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v6

    if-nez v6, :cond_1a2

    .line 462
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    .line 463
    .restart local v18    # "curPower":D
    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    const/16 v7, 0x8

    if-ne v6, v7, :cond_19f

    .end local v18    # "curPower":D
    :goto_199
    add-double v26, v26, v18

    .line 465
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_17d

    .line 463
    .restart local v18    # "curPower":D
    :cond_19f
    const-wide/16 v18, 0x0

    goto :goto_199

    .line 467
    .end local v18    # "curPower":D
    :cond_1a2
    const-wide/16 v6, 0x0

    cmpl-double v6, v26, v6

    if-lez v6, :cond_1b7

    .line 468
    new-instance v14, Lcom/android/internal/os/UidSipper;

    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 469
    .restart local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    move-wide/from16 v0, v26

    invoke-virtual {v14, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 470
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_1b7
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 473
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_73

    .line 475
    .end local v14    # "appSipper":Lcom/android/internal/os/UidSipper;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v24    # "isSystemUid":Z
    .end local v25    # "lcdColumn":I
    .end local v26    # "lcdOffPowerIn24Hours":D
    .end local v28    # "lcdOffPowerInLastHour":D
    .end local v31    # "packageName":Ljava/lang/String;
    .end local v34    # "powerColumn":I
    .end local v37    # "timeColumn":I
    :cond_1bf
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 477
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1ce

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_33

    .line 481
    :cond_1ce
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 482
    .local v20, "currentAbuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_29e

    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_29e

    const/16 v35, 0x1

    .line 484
    .local v35, "sendBroadcast":Z
    :goto_1e1
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "i$":Ljava/util/Iterator;
    :cond_1e5
    :goto_1e5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2bf

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/internal/os/UidSipper;

    .line 485
    .local v36, "sipper":Lcom/android/internal/os/UidSipper;
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v40 .. v40}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v30

    .line 486
    .local v30, "oneHourTotalDelta":I
    invoke-virtual/range {v36 .. v36}, Lcom/android/internal/os/UidSipper;->getTotalPower()D

    move-result-wide v6

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v40 .. v40}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v10

    div-double/2addr v6, v10

    move/from16 v0, v30

    int-to-double v10, v0

    mul-double v32, v6, v10

    .line 488
    .local v32, "percentage":D
    move/from16 v0, v30

    int-to-double v6, v0

    cmpl-double v6, v32, v6

    if-lez v6, :cond_216

    .line 489
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Strange!!. Percentage is greater than battery delta"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v32, v0

    .line 493
    :cond_216
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has consumed "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v32

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    cmpl-double v6, v32, v6

    if-lez v6, :cond_1e5

    .line 495
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " has consumed more than "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "% battery in last 1 hour when LCD was off"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    move-object/from16 v0, v36

    iget-object v6, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e5

    .line 501
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_2a2

    .line 502
    or-int/lit8 v35, v35, 0x1

    .line 506
    :goto_28f
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    move-object/from16 v0, v36

    iget-object v7, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v6, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1e5

    .line 482
    .end local v23    # "i$":Ljava/util/Iterator;
    .end local v30    # "oneHourTotalDelta":I
    .end local v32    # "percentage":D
    .end local v35    # "sendBroadcast":Z
    .end local v36    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_29e
    const/16 v35, 0x0

    goto/16 :goto_1e1

    .line 504
    .restart local v23    # "i$":Ljava/util/Iterator;
    .restart local v30    # "oneHourTotalDelta":I
    .restart local v32    # "percentage":D
    .restart local v35    # "sendBroadcast":Z
    .restart local v36    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_2a2
    const-string v6, "BatteryStatsDBHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    iget-object v9, v0, Lcom/android/internal/os/UidSipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " will be broadcasted abusive in screen on"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28f

    .line 510
    .end local v30    # "oneHourTotalDelta":I
    .end local v32    # "percentage":D
    .end local v36    # "sipper":Lcom/android/internal/os/UidSipper;
    :cond_2bf
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsDBHelper;->addPowerConsumingApps(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    .line 512
    sget-boolean v6, Lcom/android/internal/os/BatteryStatsDumper;->sScreenOn:Z

    if-eqz v6, :cond_2de

    .line 513
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V

    .line 514
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->unNotifiedAbuserMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 517
    :cond_2de
    if-eqz v35, :cond_2f8

    .line 518
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "Sending Battery abuse broadcast"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v6, "sec.intent.action.BATTERY_ABUSE"

    move-object/from16 v0, v22

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 520
    .local v22, "i":Landroid/content/Intent;
    sget-object v6, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 523
    .end local v22    # "i":Landroid/content/Intent;
    :cond_2f8
    const-string v6, "BatteryStatsDBHelper"

    const-string v7, "checkForPowerThreshold finished"

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_33
.end method

.method private collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    .registers 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 542
    const-string v1, "[all]"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v7, "time"

    aput-object v7, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v7, "power"

    aput-object v7, v2, v0

    const/4 v0, 0x2

    const-string v7, "batterydelta"

    aput-object v7, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 545
    .local v9, "cursor":Landroid/database/Cursor;
    const-wide/16 v1, 0x0

    .line 546
    .local v1, "oneHourPower":D
    const-wide/16 v4, 0x0

    .line 547
    .local v4, "oneDayPower":D
    const/4 v3, 0x0

    .line 548
    .local v3, "oneHourBatteryDelta":I
    const/4 v6, 0x0

    .line 550
    .local v6, "oneDayBatteryDelta":I
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 551
    const-string/jumbo v0, "time"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 552
    .local v11, "timeColumn":I
    const-string/jumbo v0, "power"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 553
    .local v10, "powerColumn":I
    const-string v0, "batterydelta"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 554
    .local v8, "batteryColumn":I
    :goto_41
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_62

    .line 555
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 556
    .local v12, "time":J
    sub-long v14, p2, v12

    const-wide/32 v16, 0x36ee80

    cmp-long v0, v14, v16

    if-gez v0, :cond_62

    .line 557
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v1, v14

    .line 558
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v3, v0

    .line 562
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_41

    .line 565
    .end local v12    # "time":J
    :cond_62
    move-wide v4, v1

    .line 566
    move v6, v3

    .line 567
    :goto_64
    invoke-interface {v9}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_78

    .line 568
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    add-double/2addr v4, v14

    .line 569
    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v6, v0

    .line 570
    invoke-interface {v9}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_64

    .line 573
    .end local v8    # "batteryColumn":I
    .end local v10    # "powerColumn":I
    .end local v11    # "timeColumn":I
    :cond_78
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 574
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;-><init>(DIDILcom/android/internal/os/BatteryStatsDBHelper$1;)V

    return-object v0
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "TABLE_PROCESS"    # Ljava/lang/String;

    .prologue
    .line 236
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CREATE TABLE IF NOT EXISTS ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "lcd_condition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "totalpower"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " DOUBLE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "network_usage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "usage_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LONG"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "wakeup_count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INTEGER"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "CREATE_POWER_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_a5} :catch_a7

    .line 246
    const/4 v2, 0x1

    .end local v0    # "CREATE_POWER_TABLE":Ljava/lang/String;
    :goto_a6
    return v2

    .line 242
    :catch_a7
    move-exception v1

    .line 243
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Table not created for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v2, 0x0

    goto :goto_a6
.end method

.method public static deleteDatabase()Z
    .registers 3

    .prologue
    .line 1328
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "powerManager"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    .line 1329
    .local v0, "ret":Z
    if-eqz v0, :cond_17

    .line 1330
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database has been deleted"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    :goto_16
    return v0

    .line 1332
    :cond_17
    const-string v1, "BatteryStatsDBHelper"

    const-string v2, "Database was not deleted"

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16
.end method

.method private deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "tableName_"    # Ljava/lang/String;
    .param p3, "maxNumOfItems"    # I

    .prologue
    .line 1488
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1489
    .local v5, "tableName":Ljava/lang/String;
    invoke-static {p1, v5}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0

    .line 1492
    .local v0, "numOfItems":J
    int-to-long v6, p3

    sub-long v2, v0, v6

    .line 1493
    .local v2, "numOfRemoval":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_56

    .line 1494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DELETE FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " WHERE time IN (SELECT time FROM "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " LIMIT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1497
    .local v4, "query":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1499
    .end local v4    # "query":Ljava/lang/String;
    :cond_56
    return-void
.end method

.method private getAppUsageStats()Ljava/util/Set;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 173
    .local v9, "launchedPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usagestats"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 176
    .local v0, "mUsageStatsManager":Landroid/app/usage/UsageStatsManager;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 177
    .local v6, "cal":Ljava/util/Calendar;
    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-virtual {v6, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 179
    const/4 v1, 0x4

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v11

    .line 181
    .local v11, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v11, :cond_29

    .line 191
    :cond_28
    return-object v9

    .line 185
    :cond_29
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v7

    .line 186
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2e
    if-ge v8, v7, :cond_28

    .line 187
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStats;

    invoke-virtual {v1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 188
    .local v10, "pkgName":Ljava/lang/String;
    const-string v1, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LaunchedPackageSet contains "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 186
    add-int/lit8 v8, v8, 0x1

    goto :goto_2e
.end method

.method private declared-synchronized getBatteryPercentageList()[B
    .registers 23

    .prologue
    .line 1104
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 1105
    .local v15, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v18, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1106
    .local v18, "result":Lcom/android/internal/os/UidSipperImpl;
    new-instance v2, Lcom/android/internal/os/UidSipper;

    const-string v8, "Battery"

    invoke-direct {v2, v8}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1108
    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1110
    .local v12, "curTime":J
    const-string v8, "SELECT lcd_condition,time,batterypercent FROM Battery_Delta"

    const/4 v9, 0x0

    invoke-virtual {v15, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1111
    .local v11, "cursor":Landroid/database/Cursor;
    const-string v8, "lcd_condition"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1112
    .local v16, "lcdColumn":I
    const-string/jumbo v8, "time"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 1113
    .local v19, "timeColumn":I
    const-string v8, "batterypercent"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1118
    .local v10, "batteryPercColumn":I
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_70

    .line 1120
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1121
    .local v3, "time":J
    sub-long v8, v12, v3

    const-wide/32 v20, 0x5265c00

    cmp-long v8, v8, v20

    if-ltz v8, :cond_47

    .line 1122
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1124
    :cond_47
    :goto_47
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_70

    .line 1125
    move/from16 v0, v16

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6e

    const/4 v5, 0x1

    .line 1126
    .local v5, "lcdOn":Z
    :goto_57
    move/from16 v0, v19

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1127
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    int-to-double v6, v8

    .line 1128
    .local v6, "batteryPerc":D
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1129
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_6b

    goto :goto_47

    .line 1104
    .end local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v3    # "time":J
    .end local v5    # "lcdOn":Z
    .end local v6    # "batteryPerc":D
    .end local v10    # "batteryPercColumn":I
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "curTime":J
    .end local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v16    # "lcdColumn":I
    .end local v18    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v19    # "timeColumn":I
    :catchall_6b
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1125
    .restart local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v3    # "time":J
    .restart local v10    # "batteryPercColumn":I
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "curTime":J
    .restart local v15    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v16    # "lcdColumn":I
    .restart local v18    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v19    # "timeColumn":I
    :cond_6e
    const/4 v5, 0x0

    goto :goto_57

    .line 1132
    .end local v3    # "time":J
    :cond_70
    :try_start_70
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1133
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1135
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    .line 1138
    .local v17, "out":Landroid/os/Parcel;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1139
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->marshall()[B

    move-result-object v14

    .line 1140
    .local v14, "data":[B
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V
    :try_end_8d
    .catchall {:try_start_70 .. :try_end_8d} :catchall_6b

    .line 1141
    monitor-exit p0

    return-object v14
.end method

.method private declared-synchronized getConsumerListOnlyApp()[B
    .registers 35

    .prologue
    .line 1145
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    .line 1146
    .local v18, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v26, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1148
    .local v26, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 1150
    .local v14, "curTime":J
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v9, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1151
    .local v11, "c":Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 1152
    .local v12, "allUidTotalPower":D
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_155

    .line 1153
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v20

    .line 1154
    .local v20, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_148

    .line 1155
    const-string v8, "name"

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v11, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1157
    .local v29, "val":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1158
    .local v27, "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1159
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1161
    const-string v8, "lcd_condition"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1162
    .local v21, "lcdColumn":I
    const-string/jumbo v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1163
    .local v28, "timeColumn":I
    const-string/jumbo v8, "power"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1165
    .local v25, "powerColumn":I
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1166
    .local v22, "lcdNtype":I
    and-int/lit8 v8, v22, 0x10

    const/16 v9, 0x10

    if-ne v8, v9, :cond_93

    .line 1167
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "System app"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1169
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_8f
    .catchall {:try_start_1 .. :try_end_8f} :catchall_90

    goto :goto_23

    .line 1145
    .end local v11    # "c":Landroid/database/Cursor;
    .end local v12    # "allUidTotalPower":D
    .end local v14    # "curTime":J
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v18    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "lcdColumn":I
    .end local v22    # "lcdNtype":I
    .end local v25    # "powerColumn":I
    .end local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "timeColumn":I
    .end local v29    # "val":Ljava/lang/String;
    :catchall_90
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1174
    .restart local v11    # "c":Landroid/database/Cursor;
    .restart local v12    # "allUidTotalPower":D
    .restart local v14    # "curTime":J
    .restart local v16    # "cursor":Landroid/database/Cursor;
    .restart local v18    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v21    # "lcdColumn":I
    .restart local v22    # "lcdNtype":I
    .restart local v25    # "powerColumn":I
    .restart local v26    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v27    # "selectQuery":Ljava/lang/String;
    .restart local v28    # "timeColumn":I
    .restart local v29    # "val":Ljava/lang/String;
    :cond_93
    :try_start_93
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1175
    .local v3, "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_a7

    .line 1176
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1179
    :cond_a7
    new-instance v2, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v29

    invoke-direct {v2, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v2, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v30, 0x0

    .local v30, "totalPower":D
    const-wide/16 v6, 0x0

    .line 1182
    .local v6, "power":D
    const/16 v19, 0x0

    .line 1183
    .local v19, "isUsingNetwork":Z
    :goto_b4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_f0

    .line 1184
    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1185
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1186
    and-int/lit8 v8, v22, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_ec

    const/4 v5, 0x1

    .line 1187
    .local v5, "lcdOn":Z
    :goto_d0
    move-object/from16 v0, v16

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    .line 1188
    const-wide/16 v8, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1189
    add-double v30, v30, v6

    .line 1190
    and-int/lit8 v8, v22, 0x20

    const/16 v9, 0x20

    if-ne v8, v9, :cond_ee

    const/4 v8, 0x1

    :goto_e6
    or-int v19, v19, v8

    .line 1191
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b4

    .line 1186
    .end local v5    # "lcdOn":Z
    :cond_ec
    const/4 v5, 0x0

    goto :goto_d0

    .line 1190
    .restart local v5    # "lcdOn":Z
    :cond_ee
    const/4 v8, 0x0

    goto :goto_e6

    .line 1193
    .end local v5    # "lcdOn":Z
    :cond_f0
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v32, " power:"

    move-object/from16 v0, v32

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-wide/from16 v0, v30

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    iget-object v8, v2, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_13a

    .line 1196
    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1197
    add-double v12, v12, v30

    .line 1198
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_142

    .line 1199
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1203
    :cond_12e
    :goto_12e
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1204
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "added"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1207
    :cond_13a
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1208
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_23

    .line 1200
    :cond_142
    if-eqz v19, :cond_12e

    .line 1201
    invoke-virtual {v2}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_12e

    .line 1211
    .end local v2    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v3    # "time":J
    .end local v6    # "power":D
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v19    # "isUsingNetwork":Z
    .end local v21    # "lcdColumn":I
    .end local v22    # "lcdNtype":I
    .end local v25    # "powerColumn":I
    .end local v27    # "selectQuery":Ljava/lang/String;
    .end local v28    # "timeColumn":I
    .end local v29    # "val":Ljava/lang/String;
    .end local v30    # "totalPower":D
    :cond_148
    const-wide/16 v8, 0x0

    cmpg-double v8, v12, v8

    if-gtz v8, :cond_150

    .line 1212
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 1213
    :cond_150
    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1215
    .end local v20    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_155
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1218
    const-string v27, "SELECT  * FROM power_consuming_packages"

    .line 1219
    .restart local v27    # "selectQuery":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1221
    .restart local v16    # "cursor":Landroid/database/Cursor;
    const-string/jumbo v8, "time"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 1222
    .restart local v28    # "timeColumn":I
    const-string/jumbo v8, "packageName"

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1224
    .local v10, "abuserNameColumn":I
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/UidSipperImpl;->initializeConsumerList()V

    .line 1227
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1b5

    .line 1229
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1230
    .restart local v3    # "time":J
    sub-long v8, v14, v3

    const-wide/32 v32, 0x5265c00

    cmp-long v8, v8, v32

    if-ltz v8, :cond_192

    .line 1231
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    .line 1234
    :cond_192
    :goto_192
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_1b5

    .line 1235
    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1236
    move-object/from16 v0, v16

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1237
    .local v23, "names":Ljava/lang/String;
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/os/UidSipperImpl;->addConsumerPackages(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_192

    .line 1241
    .end local v3    # "time":J
    .end local v23    # "names":Ljava/lang/String;
    :cond_1b5
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1243
    invoke-virtual/range {v18 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v24

    .line 1245
    .local v24, "out":Landroid/os/Parcel;
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1246
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->marshall()[B

    move-result-object v17

    .line 1247
    .local v17, "data":[B
    invoke-virtual/range {v24 .. v24}, Landroid/os/Parcel;->recycle()V
    :try_end_1cd
    .catchall {:try_start_93 .. :try_end_1cd} :catchall_90

    .line 1248
    monitor-exit p0

    return-object v17
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-class v1, Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-nez v0, :cond_e

    .line 165
    new-instance v0, Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-direct {v0, p0}, Lcom/android/internal/os/BatteryStatsDBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 167
    :cond_e
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mBatteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 164
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT time,totalpower,network_usage FROM["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 671
    .local v9, "selectQuery":Ljava/lang/String;
    invoke-virtual {p1, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 672
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 673
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 674
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    const-string/jumbo v2, "time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string/jumbo v4, "totalpower"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    const-string v6, "network_usage"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;-><init>(JDJLcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .line 678
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    :cond_4a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 679
    return-object v1
.end method

.method private getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    const/4 v5, 0x0

    .line 705
    const-string v2, "SELECT time,totalpower,batterypercent FROM [all]"

    invoke-virtual {p1, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 706
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 707
    .local v1, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 708
    new-instance v1, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    .end local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-string/jumbo v2, "totalpower"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    const-string v4, "batterypercent"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;-><init>(DILcom/android/internal/os/BatteryStatsDBHelper$1;)V

    .line 712
    .restart local v1    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    :cond_28
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 713
    return-object v1
.end method

.method private declared-synchronized getScreenOffUsageList(Z)[B
    .registers 41
    .param p1, "needOffList"    # Z

    .prologue
    .line 887
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 888
    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v33, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v33 .. v33}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 890
    .local v33, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 891
    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 892
    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_183

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 894
    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v28

    .line 895
    .local v28, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_174

    .line 896
    const-string v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 898
    .local v38, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v38

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 899
    .local v34, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 900
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 902
    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v29

    .line 903
    .local v29, "lcdColumn":I
    const-string/jumbo v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v35

    .line 904
    .local v35, "timeColumn":I
    const-string/jumbo v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v32

    .line 907
    .local v32, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 908
    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_8c

    .line 909
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 912
    :cond_8c
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v38

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 914
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .line 915
    .local v8, "power":D
    const/16 v30, 0x0

    .line 916
    .local v30, "lcdNtype":I
    const/16 v27, 0x0

    .line 917
    .local v27, "isUsingNetwork":Z
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_e8

    const/16 v26, 0x1

    .line 918
    .local v26, "isSystemApp":Z
    :goto_ab
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_11c

    .line 919
    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    .line 920
    if-nez p1, :cond_ef

    .line 921
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 922
    and-int/lit8 v10, v30, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_eb

    const/4 v7, 0x1

    .line 923
    .local v7, "lcdOn":Z
    :goto_c9
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 924
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 925
    add-double v36, v36, v8

    .line 926
    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_ed

    const/4 v10, 0x1

    :goto_df
    or-int v27, v27, v10

    .line 934
    .end local v7    # "lcdOn":Z
    :cond_e1
    :goto_e1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_e4
    .catchall {:try_start_1 .. :try_end_e4} :catchall_e5

    goto :goto_ab

    .line 887
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v18    # "allUidTotalPower":D
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "curTime":J
    .end local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v26    # "isSystemApp":Z
    .end local v27    # "isUsingNetwork":Z
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v29    # "lcdColumn":I
    .end local v30    # "lcdNtype":I
    .end local v32    # "powerColumn":I
    .end local v33    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v34    # "selectQuery":Ljava/lang/String;
    .end local v35    # "timeColumn":I
    .end local v36    # "totalPower":D
    .end local v38    # "val":Ljava/lang/String;
    :catchall_e5
    move-exception v10

    monitor-exit p0

    throw v10

    .line 917
    .restart local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v5    # "time":J
    .restart local v8    # "power":D
    .restart local v18    # "allUidTotalPower":D
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "curTime":J
    .restart local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "isUsingNetwork":Z
    .restart local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v29    # "lcdColumn":I
    .restart local v30    # "lcdNtype":I
    .restart local v32    # "powerColumn":I
    .restart local v33    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v34    # "selectQuery":Ljava/lang/String;
    .restart local v35    # "timeColumn":I
    .restart local v36    # "totalPower":D
    .restart local v38    # "val":Ljava/lang/String;
    :cond_e8
    const/16 v26, 0x0

    goto :goto_ab

    .line 922
    .restart local v26    # "isSystemApp":Z
    :cond_eb
    const/4 v7, 0x0

    goto :goto_c9

    .line 926
    .restart local v7    # "lcdOn":Z
    :cond_ed
    const/4 v10, 0x0

    goto :goto_df

    .line 927
    .end local v7    # "lcdOn":Z
    :cond_ef
    and-int/lit8 v10, v30, 0x8

    const/16 v11, 0x8

    if-ne v10, v11, :cond_e1

    .line 928
    :try_start_f5
    move-object/from16 v0, v21

    move/from16 v1, v35

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 929
    move-object/from16 v0, v21

    move/from16 v1, v32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 930
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 931
    add-double v36, v36, v8

    .line 932
    and-int/lit8 v10, v30, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_11a

    const/4 v10, 0x1

    :goto_117
    or-int v27, v27, v10

    goto :goto_e1

    :cond_11a
    const/4 v10, 0x0

    goto :goto_117

    .line 936
    :cond_11c
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v38

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_164

    .line 939
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 940
    add-double v18, v18, v36

    .line 941
    move-object/from16 v0, v28

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_16c

    .line 942
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 946
    :cond_158
    :goto_158
    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 947
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_164
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 951
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_23

    .line 943
    :cond_16c
    if-eqz v27, :cond_158

    if-nez v26, :cond_158

    .line 944
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_158

    .line 953
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isSystemApp":Z
    .end local v27    # "isUsingNetwork":Z
    .end local v29    # "lcdColumn":I
    .end local v30    # "lcdNtype":I
    .end local v32    # "powerColumn":I
    .end local v34    # "selectQuery":Ljava/lang/String;
    .end local v35    # "timeColumn":I
    .end local v36    # "totalPower":D
    .end local v38    # "val":Ljava/lang/String;
    :cond_174
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_17c

    .line 954
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 955
    :cond_17c
    move-object/from16 v0, v33

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 957
    .end local v22    # "curTime":J
    .end local v28    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_183
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 958
    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 959
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v31

    .line 960
    .local v31, "out":Landroid/os/Parcel;
    move-object/from16 v0, v33

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 961
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .line 962
    .local v24, "data":[B
    invoke-virtual/range {v31 .. v31}, Landroid/os/Parcel;->recycle()V
    :try_end_19b
    .catchall {:try_start_f5 .. :try_end_19b} :catchall_e5

    .line 963
    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getScreenOffUsageListOnlyApp(Z)[B
    .registers 40
    .param p1, "needOffList"    # Z

    .prologue
    .line 967
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v25

    .line 968
    .local v25, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v32, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v32 .. v32}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 970
    .local v32, "result":Lcom/android/internal/os/UidSipperImpl;
    const-string v10, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v11, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 971
    .local v20, "c":Landroid/database/Cursor;
    const-wide/16 v18, 0x0

    .line 972
    .local v18, "allUidTotalPower":D
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_188

    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 974
    .local v22, "curTime":J
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getAppUsageStats()Ljava/util/Set;

    move-result-object v27

    .line 975
    .local v27, "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_23
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_179

    .line 976
    const-string v10, "name"

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 978
    .local v35, "val":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SELECT lcd_condition,time,power FROM["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 979
    .local v33, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 980
    .local v21, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    .line 982
    const-string v10, "lcd_condition"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v28

    .line 983
    .local v28, "lcdColumn":I
    const-string/jumbo v10, "time"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 984
    .local v34, "timeColumn":I
    const-string/jumbo v10, "power"

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 986
    .local v31, "powerColumn":I
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 987
    .local v29, "lcdNtype":I
    and-int/lit8 v10, v29, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_97

    .line 988
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "System app"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 990
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_93
    .catchall {:try_start_1 .. :try_end_93} :catchall_94

    goto :goto_23

    .line 967
    .end local v18    # "allUidTotalPower":D
    .end local v20    # "c":Landroid/database/Cursor;
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v22    # "curTime":J
    .end local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v28    # "lcdColumn":I
    .end local v29    # "lcdNtype":I
    .end local v31    # "powerColumn":I
    .end local v32    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v33    # "selectQuery":Ljava/lang/String;
    .end local v34    # "timeColumn":I
    .end local v35    # "val":Ljava/lang/String;
    :catchall_94
    move-exception v10

    monitor-exit p0

    throw v10

    .line 995
    .restart local v18    # "allUidTotalPower":D
    .restart local v20    # "c":Landroid/database/Cursor;
    .restart local v21    # "cursor":Landroid/database/Cursor;
    .restart local v22    # "curTime":J
    .restart local v25    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v28    # "lcdColumn":I
    .restart local v29    # "lcdNtype":I
    .restart local v31    # "powerColumn":I
    .restart local v32    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v33    # "selectQuery":Ljava/lang/String;
    .restart local v34    # "timeColumn":I
    .restart local v35    # "val":Ljava/lang/String;
    :cond_97
    :try_start_97
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 996
    .local v5, "time":J
    sub-long v10, v22, v5

    const-wide/32 v12, 0x5265c00

    cmp-long v10, v10, v12

    if-ltz v10, :cond_ab

    .line 997
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    .line 1000
    :cond_ab
    new-instance v4, Lcom/android/internal/os/UidSipper;

    move-object/from16 v0, v35

    invoke-direct {v4, v0}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1002
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v36, 0x0

    .local v36, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1003
    .local v8, "power":D
    const/16 v26, 0x0

    .line 1004
    .local v26, "isUsingNetwork":Z
    :goto_b8
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_123

    .line 1005
    move-object/from16 v0, v21

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 1006
    if-nez p1, :cond_f6

    .line 1007
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1008
    and-int/lit8 v10, v29, 0x4

    const/4 v11, 0x4

    if-ne v10, v11, :cond_f2

    const/4 v7, 0x1

    .line 1009
    .local v7, "lcdOn":Z
    :goto_d6
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1010
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1011
    add-double v36, v36, v8

    .line 1012
    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_f4

    const/4 v10, 0x1

    :goto_ec
    or-int v26, v26, v10

    .line 1020
    .end local v7    # "lcdOn":Z
    :cond_ee
    :goto_ee
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_b8

    .line 1008
    :cond_f2
    const/4 v7, 0x0

    goto :goto_d6

    .line 1012
    .restart local v7    # "lcdOn":Z
    :cond_f4
    const/4 v10, 0x0

    goto :goto_ec

    .line 1013
    .end local v7    # "lcdOn":Z
    :cond_f6
    const/16 v10, 0x8

    move/from16 v0, v29

    if-ne v0, v10, :cond_ee

    .line 1014
    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1015
    move-object/from16 v0, v21

    move/from16 v1, v31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1016
    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-object v10, v4

    move-wide v11, v5

    move-wide v14, v8

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1017
    add-double v36, v36, v8

    .line 1018
    and-int/lit8 v10, v29, 0x20

    const/16 v11, 0x20

    if-ne v10, v11, :cond_121

    const/4 v10, 0x1

    :goto_11e
    or-int v26, v26, v10

    goto :goto_ee

    :cond_121
    const/4 v10, 0x0

    goto :goto_11e

    .line 1022
    :cond_123
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " power:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v36

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    iget-object v10, v4, Lcom/android/internal/os/UidSipper;->batterySipStats:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_16b

    .line 1025
    move-wide/from16 v0, v36

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1026
    add-double v18, v18, v36

    .line 1027
    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_173

    .line 1028
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeUserLaunch()V

    .line 1032
    :cond_15f
    :goto_15f
    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1033
    const-string v10, "BatteryStatsDBHelper"

    const-string v11, "added"

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    :cond_16b
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 1037
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_23

    .line 1029
    :cond_173
    if-eqz v26, :cond_15f

    .line 1030
    invoke-virtual {v4}, Lcom/android/internal/os/UidSipper;->makeNetworkUser()V

    goto :goto_15f

    .line 1040
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v8    # "power":D
    .end local v21    # "cursor":Landroid/database/Cursor;
    .end local v26    # "isUsingNetwork":Z
    .end local v28    # "lcdColumn":I
    .end local v29    # "lcdNtype":I
    .end local v31    # "powerColumn":I
    .end local v33    # "selectQuery":Ljava/lang/String;
    .end local v34    # "timeColumn":I
    .end local v35    # "val":Ljava/lang/String;
    .end local v36    # "totalPower":D
    :cond_179
    const-wide/16 v10, 0x0

    cmpg-double v10, v18, v10

    if-gtz v10, :cond_181

    .line 1041
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    .line 1042
    :cond_181
    move-object/from16 v0, v32

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1045
    .end local v22    # "curTime":J
    .end local v27    # "launchedAppList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_188
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1046
    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v30

    .line 1048
    .local v30, "out":Landroid/os/Parcel;
    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1049
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->marshall()[B

    move-result-object v24

    .line 1050
    .local v24, "data":[B
    invoke-virtual/range {v30 .. v30}, Landroid/os/Parcel;->recycle()V
    :try_end_1a0
    .catchall {:try_start_97 .. :try_end_1a0} :catchall_94

    .line 1051
    monitor-exit p0

    return-object v24
.end method

.method private declared-synchronized getTotalUsageList()[B
    .registers 29

    .prologue
    .line 1055
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 1056
    .local v16, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v21, Lcom/android/internal/os/UidSipperImpl;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/os/UidSipperImpl;-><init>()V

    .line 1058
    .local v21, "result":Lcom/android/internal/os/UidSipperImpl;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1060
    .local v12, "curTime":J
    const-string v22, "SELECT lcd_condition,time,power FROM[all]"

    .line 1061
    .local v22, "selectQuery":Ljava/lang/String;
    const/4 v10, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1063
    .local v14, "cursor":Landroid/database/Cursor;
    const-string v10, "lcd_condition"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1064
    .local v17, "lcdColumn":I
    const-string/jumbo v10, "time"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    .line 1065
    .local v23, "timeColumn":I
    const-string/jumbo v10, "power"

    invoke-interface {v14, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 1067
    .local v20, "powerColumn":I
    new-instance v4, Lcom/android/internal/os/UidSipper;

    const-string v10, "all"

    invoke-direct {v4, v10}, Lcom/android/internal/os/UidSipper;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v4, "sipper":Lcom/android/internal/os/UidSipper;
    const-wide/16 v24, 0x0

    .local v24, "totalPower":D
    const-wide/16 v8, 0x0

    .line 1071
    .local v8, "power":D
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_7e

    .line 1073
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1074
    .local v5, "time":J
    sub-long v10, v12, v5

    const-wide/32 v26, 0x5265c00

    cmp-long v10, v10, v26

    if-ltz v10, :cond_50

    .line 1075
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 1078
    :cond_50
    :goto_50
    invoke-interface {v14}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v10

    if-nez v10, :cond_7e

    .line 1079
    move/from16 v0, v23

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1080
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 1081
    .local v18, "lcdNtype":I
    const/4 v10, 0x4

    move/from16 v0, v18

    if-ne v0, v10, :cond_7c

    const/4 v7, 0x1

    .line 1082
    .local v7, "lcdOn":Z
    :goto_68
    move/from16 v0, v20

    invoke-interface {v14, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v8

    .line 1083
    const-wide/16 v10, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/os/UidSipper;->addBatterySipStat(JZDD)V

    .line 1084
    add-double v24, v24, v8

    .line 1085
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_78
    .catchall {:try_start_1 .. :try_end_78} :catchall_79

    goto :goto_50

    .line 1055
    .end local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .end local v5    # "time":J
    .end local v7    # "lcdOn":Z
    .end local v8    # "power":D
    .end local v12    # "curTime":J
    .end local v14    # "cursor":Landroid/database/Cursor;
    .end local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v17    # "lcdColumn":I
    .end local v18    # "lcdNtype":I
    .end local v20    # "powerColumn":I
    .end local v21    # "result":Lcom/android/internal/os/UidSipperImpl;
    .end local v22    # "selectQuery":Ljava/lang/String;
    .end local v23    # "timeColumn":I
    .end local v24    # "totalPower":D
    :catchall_79
    move-exception v10

    monitor-exit p0

    throw v10

    .line 1081
    .restart local v4    # "sipper":Lcom/android/internal/os/UidSipper;
    .restart local v5    # "time":J
    .restart local v8    # "power":D
    .restart local v12    # "curTime":J
    .restart local v14    # "cursor":Landroid/database/Cursor;
    .restart local v16    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "lcdColumn":I
    .restart local v18    # "lcdNtype":I
    .restart local v20    # "powerColumn":I
    .restart local v21    # "result":Lcom/android/internal/os/UidSipperImpl;
    .restart local v22    # "selectQuery":Ljava/lang/String;
    .restart local v23    # "timeColumn":I
    .restart local v24    # "totalPower":D
    :cond_7c
    const/4 v7, 0x0

    goto :goto_68

    .line 1088
    .end local v5    # "time":J
    .end local v18    # "lcdNtype":I
    :cond_7e
    :try_start_7e
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1089
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1091
    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Lcom/android/internal/os/UidSipper;->setTotalPower(D)V

    .line 1092
    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Lcom/android/internal/os/UidSipperImpl;->addUidSipper(Lcom/android/internal/os/UidSipper;)V

    .line 1093
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/UidSipperImpl;->setFinalPower(D)V

    .line 1094
    const-string v10, "BatteryStatsDBHelper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Final set to all = "

    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v19

    .line 1097
    .local v19, "out":Landroid/os/Parcel;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/internal/os/UidSipperImpl;->writeToParcel(Landroid/os/Parcel;)V

    .line 1098
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->marshall()[B

    move-result-object v15

    .line 1099
    .local v15, "data":[B
    invoke-virtual/range {v19 .. v19}, Landroid/os/Parcel;->recycle()V
    :try_end_c3
    .catchall {:try_start_7e .. :try_end_c3} :catchall_79

    .line 1100
    monitor-exit p0

    return-object v15
.end method

.method private maintainDayData(Landroid/database/sqlite/SQLiteDatabase;J)V
    .registers 22
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J

    .prologue
    .line 579
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking for old data before adding this new one at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const-string v3, "Battery_Delta"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "time"

    aput-object v5, v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 583
    .local v10, "cursor":Landroid/database/Cursor;
    const-string v2, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 584
    .local v11, "listCursor":Landroid/database/Cursor;
    const-string/jumbo v2, "time"

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 587
    .local v16, "timeColumn":I
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 589
    :cond_46
    move/from16 v0, v16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 590
    .local v14, "thisTime":J
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current entry has timestamp as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    sub-long v2, p2, v14

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-gez v2, :cond_74

    .line 609
    .end local v14    # "thisTime":J
    :cond_6d
    :goto_6d
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 610
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 611
    return-void

    .line 594
    .restart local v14    # "thisTime":J
    :cond_74
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Deleting this timestamp"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    const/4 v2, 0x1

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v2

    .line 596
    .local v13, "requestingColumn":[Ljava/lang/String;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 597
    :goto_8b
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_c0

    .line 598
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 599
    .local v12, "packageName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "time = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 601
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_8b

    .line 604
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_c0
    const-string v2, "Battery_Delta"

    const-string/jumbo v3, "time = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 605
    const-string/jumbo v2, "power_consuming_packages"

    const-string/jumbo v3, "time = ?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v13}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 606
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    .line 607
    invoke-interface {v10}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-eqz v2, :cond_46

    goto :goto_6d
.end method

.method private maintainNotifiedAppList(J)V
    .registers 14
    .param p1, "curTime"    # J

    .prologue
    .line 614
    const-string v3, "BatteryStatsDBHelper"

    const-string v6, " maintainNotifiedAppList called "

    invoke-static {v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object v3, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 616
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    .line 617
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 618
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 619
    .local v2, "packageName":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 620
    .local v4, "thisTime":J
    sub-long v6, p1, v4

    const-wide/32 v8, 0x36ee80

    cmp-long v3, v6, v8

    if-ltz v3, :cond_11

    .line 621
    const-string v3, "BatteryStatsDBHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removing package name from notified list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    .line 625
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v4    # "thisTime":J
    :cond_52
    return-void
.end method

.method private markAsNotified(Landroid/database/sqlite/SQLiteDatabase;JLjava/util/HashMap;)V
    .registers 13
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "curTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "J",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p4, "abuserMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 658
    .local v1, "notiValues":Landroid/content/ContentValues;
    const-string v4, "notified_time"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 660
    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 661
    .local v3, "packages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 662
    .local v2, "packageName":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/os/BatteryStatsDBHelper;->notifiedPowerDrainingApps:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string/jumbo v4, "power_consuming_packages"

    const-string/jumbo v5, "packageName = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 665
    const-string v4, "BatteryStatsDBHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Updated abuse notification time for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 667
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_53
    return-void
.end method

.method private static printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 65
    return-void
.end method

.method private registerReceiver()V
    .registers 4

    .prologue
    .line 196
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "send.battery.drain.broadcast"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "filter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->mFakeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    return-void
.end method


# virtual methods
.method declared-synchronized addStatsToDB(ZZJLjava/util/ArrayList;IIDI)V
    .registers 48
    .param p1, "writeForScreenChange"    # Z
    .param p2, "screenOn"    # Z
    .param p3, "time"    # J
    .param p6, "batteryDelta"    # I
    .param p7, "currentBatteryPercent"    # I
    .param p8, "curTotalPower"    # D
    .param p10, "dischargeLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/os/BatteryStatsDumper$PowerObject;",
            ">;IIDI)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p5, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatteryStatsDumper$PowerObject;>;"
    monitor-enter p0

    if-eqz p1, :cond_170

    if-nez p2, :cond_16c

    const/16 v25, 0x1

    .line 293
    .local v25, "screenCondition":Z
    :goto_7
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    .line 294
    .local v8, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19f

    .line 296
    if-eqz v25, :cond_174

    const/16 v21, 0x4

    .line 300
    .local v21, "lcdCondition":I
    :goto_12
    :try_start_12
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;

    .line 301
    .local v17, "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 304
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writing for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->powerUid:D

    move-wide/from16 v32, v0

    .line 306
    .local v32, "totalPower":D
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->networkUsage:J

    move-wide/from16 v26, v0

    .line 307
    .local v26, "networkUsage":J
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->usageTime:J

    move-wide/from16 v34, v0

    .line 308
    .local v34, "uidUsageTime":J
    move/from16 v18, v21

    .line 310
    .local v18, "finalLcdCondition":I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastEntry(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;

    move-result-object v20

    .line 311
    .local v20, "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    if-eqz v20, :cond_1a2

    .line 312
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->totalPower:D
    invoke-static/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$200(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)D

    move-result-wide v22

    .line 313
    .local v22, "lastPower":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : lastpower = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sub-double v14, v32, v22

    .line 315
    .local v14, "diff":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v14, v2

    if-ltz v2, :cond_17c

    .line 316
    move-wide/from16 v30, v14

    .line 317
    .local v30, "power":D
    const-string v3, "BatteryStatsDBHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[diff] = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v30

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v25, :cond_178

    const-string v2, " on"

    :goto_a9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_b4
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->networkUsage:J
    invoke-static/range {v20 .. v20}, Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;->access$300(Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;)J

    move-result-wide v2

    sub-long v28, v26, v2

    .line 324
    .local v28, "networkUseDiff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v28, v2

    if-eqz v2, :cond_c2

    .line 325
    or-int/lit8 v18, v18, 0x20

    .line 335
    .end local v14    # "diff":D
    .end local v22    # "lastPower":D
    .end local v28    # "networkUseDiff":J
    :cond_c2
    :goto_c2
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->isSystem:Z

    if-eqz v2, :cond_ca

    .line 336
    or-int/lit8 v18, v18, 0x10

    .line 339
    :cond_ca
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 340
    .local v36, "values":Landroid/content/ContentValues;
    const-string v2, "lcd_condition"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 341
    const-string/jumbo v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 342
    const-string/jumbo v2, "power"

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 343
    const-string/jumbo v2, "totalpower"

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 344
    const-string v2, "network_usage"

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 345
    const-string/jumbo v2, "usage_time"

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 346
    const-string/jumbo v2, "wakeup_count"

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->wakeUpCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsDumper$PowerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_148
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_148} :catch_14a
    .catchall {:try_start_12 .. :try_end_148} :catchall_19a

    goto/16 :goto_16

    .line 379
    .end local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v18    # "finalLcdCondition":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v26    # "networkUsage":J
    .end local v30    # "power":D
    .end local v32    # "totalPower":D
    .end local v34    # "uidUsageTime":J
    .end local v36    # "values":Landroid/content/ContentValues;
    :catch_14a
    move-exception v16

    .line 380
    .local v16, "e":Ljava/lang/IllegalStateException;
    :try_start_14b
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStatsToDB IllegalStateException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_167
    .catchall {:try_start_14b .. :try_end_167} :catchall_19a

    .line 382
    :try_start_167
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_16a
    .catchall {:try_start_167 .. :try_end_16a} :catchall_19f

    .line 384
    .end local v16    # "e":Ljava/lang/IllegalStateException;
    :goto_16a
    monitor-exit p0

    return-void

    .line 292
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v21    # "lcdCondition":I
    .end local v25    # "screenCondition":Z
    :cond_16c
    const/16 v25, 0x0

    goto/16 :goto_7

    :cond_170
    move/from16 v25, p2

    goto/16 :goto_7

    .line 296
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v25    # "screenCondition":Z
    :cond_174
    const/16 v21, 0x8

    goto/16 :goto_12

    .line 317
    .restart local v14    # "diff":D
    .restart local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v18    # "finalLcdCondition":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v21    # "lcdCondition":I
    .restart local v22    # "lastPower":D
    .restart local v26    # "networkUsage":J
    .restart local v30    # "power":D
    .restart local v32    # "totalPower":D
    .restart local v34    # "uidUsageTime":J
    :cond_178
    :try_start_178
    const-string v2, " off"

    goto/16 :goto_a9

    .line 320
    .end local v30    # "power":D
    :cond_17c
    const-wide/16 v30, 0x0

    .line 321
    .restart local v30    # "power":D
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[strange] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_198
    .catch Ljava/lang/IllegalStateException; {:try_start_178 .. :try_end_198} :catch_14a
    .catchall {:try_start_178 .. :try_end_198} :catchall_19a

    goto/16 :goto_b4

    .line 382
    .end local v14    # "diff":D
    .end local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v18    # "finalLcdCondition":I
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v22    # "lastPower":D
    .end local v26    # "networkUsage":J
    .end local v30    # "power":D
    .end local v32    # "totalPower":D
    .end local v34    # "uidUsageTime":J
    :catchall_19a
    move-exception v2

    :try_start_19b
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_19f
    .catchall {:try_start_19b .. :try_end_19f} :catchall_19f

    .line 292
    .end local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v21    # "lcdCondition":I
    :catchall_19f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 328
    .restart local v8    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .restart local v18    # "finalLcdCondition":I
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .restart local v21    # "lcdCondition":I
    .restart local v26    # "networkUsage":J
    .restart local v32    # "totalPower":D
    .restart local v34    # "uidUsageTime":J
    :cond_1a2
    const-wide/16 v30, 0x0

    .line 329
    .restart local v30    # "power":D
    const-wide/16 v2, 0x0

    cmp-long v2, v26, v2

    if-eqz v2, :cond_1ac

    .line 330
    or-int/lit8 v18, v18, 0x20

    .line 332
    :cond_1ac
    :try_start_1ac
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power[noLastSipper] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v32

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c2

    .line 350
    .end local v17    # "entry":Lcom/android/internal/os/BatteryStatsDumper$PowerObject;
    .end local v18    # "finalLcdCondition":I
    .end local v20    # "lastData":Lcom/android/internal/os/BatteryStatsDBHelper$LastDatabaseInfo;
    .end local v26    # "networkUsage":J
    .end local v30    # "power":D
    .end local v32    # "totalPower":D
    .end local v34    # "uidUsageTime":J
    :cond_1c8
    const-string v2, "BatteryStatsDBHelper"

    const-string v3, "Writing for db : all"

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->getLastTotalEntry(Landroid/database/sqlite/SQLiteDatabase;)Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;

    move-result-object v24

    .line 352
    .local v24, "mLastEntry":Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;
    const-wide/16 v30, 0x0

    .line 353
    .restart local v30    # "power":D
    const/4 v13, 0x0

    .line 354
    .local v13, "delta":I
    if-eqz v24, :cond_1f1

    .line 355
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->totalPower:D
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$400(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)D

    move-result-wide v2

    sub-double v30, p8, v2

    .line 356
    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->batteryLevel:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;->access$500(Lcom/android/internal/os/BatteryStatsDBHelper$LastTotalDatabaseInfo;)I

    move-result v2

    sub-int v13, p10, v2

    .line 358
    const-wide/16 v2, 0x0

    cmpg-double v2, v30, v2

    if-gez v2, :cond_1ee

    .line 359
    const-wide/16 v30, 0x0

    .line 361
    :cond_1ee
    if-gez v13, :cond_1f1

    .line 362
    const/4 v13, 0x0

    .line 365
    :cond_1f1
    new-instance v36, Landroid/content/ContentValues;

    invoke-direct/range {v36 .. v36}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .restart local v36    # "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "time"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 367
    const-string/jumbo v2, "power"

    invoke-static/range {v30 .. v31}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 368
    const-string/jumbo v2, "totalpower"

    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 369
    const-string v2, "batterydelta"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    const-string v2, "batterypercent"

    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    const-string v2, "[all]"

    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v8, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 372
    const-string v2, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Written to db : power = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v30

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    .line 374
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->addBatteryDelta(ZJIILandroid/database/sqlite/SQLiteDatabase;)V

    move-object/from16 v7, p0

    move-wide/from16 v9, p3

    move-wide/from16 v11, p8

    .line 375
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/os/BatteryStatsDBHelper;->checkForPowerThreshold(Landroid/database/sqlite/SQLiteDatabase;JD)V

    .line 377
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 378
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_26e
    .catch Ljava/lang/IllegalStateException; {:try_start_1ac .. :try_end_26e} :catch_14a
    .catchall {:try_start_1ac .. :try_end_26e} :catchall_19a

    .line 382
    :try_start_26e
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_271
    .catchall {:try_start_26e .. :try_end_271} :catchall_19f

    goto/16 :goto_16a
.end method

.method public declared-synchronized deleteRecordsExceptLatest(I)V
    .registers 11
    .param p1, "maxNumOfItems"    # I

    .prologue
    .line 1432
    monitor-enter p0

    if-nez p1, :cond_27

    .line 1433
    :try_start_3
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1434
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1f

    .line 1436
    const/4 v7, 0x6

    const/4 v8, 0x6

    :try_start_c
    invoke-virtual {p0, v2, v7, v8}, Lcom/android/internal/os/BatteryStatsDBHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 1437
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_12} :catch_17
    .catchall {:try_start_c .. :try_end_12} :catchall_22

    .line 1441
    :try_start_12
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1f

    .line 1485
    :goto_15
    monitor-exit p0

    return-void

    .line 1438
    :catch_17
    move-exception v3

    .line 1439
    .local v3, "e":Ljava/lang/Exception;
    :try_start_18
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_22

    .line 1441
    :try_start_1b
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_1f

    goto :goto_15

    .line 1432
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_1f
    move-exception v7

    monitor-exit p0

    throw v7

    .line 1441
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_22
    move-exception v7

    :try_start_23
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v7

    .line 1446
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1447
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1449
    .local v5, "tableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"
    :try_end_32
    .catchall {:try_start_23 .. :try_end_32} :catchall_1f

    .line 1451
    .local v0, "QUERY_GET_TABLES_NAME":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1453
    .local v1, "c":Landroid/database/Cursor;
    :try_start_33
    const-string v7, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name != \'android_metadata\' AND name != \'null\'"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1454
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8e

    .line 1455
    :goto_40
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_8e

    .line 1456
    const-string v7, "name"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1457
    .local v6, "tableName":Ljava/lang/String;
    if-eqz v6, :cond_5b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5b

    .line 1458
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    :cond_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_5e} :catch_5f
    .catchall {:try_start_33 .. :try_end_5e} :catchall_97

    goto :goto_40

    .line 1463
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_5f
    move-exception v3

    .line 1464
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_60
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_97

    .line 1466
    if-eqz v1, :cond_68

    .line 1467
    :try_start_65
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1469
    :cond_68
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1472
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_6b
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1473
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_1f

    .line 1475
    :try_start_72
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_76
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1476
    .restart local v6    # "tableName":Ljava/lang/String;
    invoke-direct {p0, v2, v6, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->deleteRecordsExceptLatest(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_85} :catch_86
    .catchall {:try_start_72 .. :try_end_85} :catchall_ac

    goto :goto_76

    .line 1480
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "tableName":Ljava/lang/String;
    :catch_86
    move-exception v3

    .line 1481
    .restart local v3    # "e":Ljava/lang/Exception;
    :try_start_87
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_ac

    .line 1483
    :try_start_8a
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_15

    .line 1466
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_8e
    if-eqz v1, :cond_93

    .line 1467
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1469
    :cond_93
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_6b

    .line 1466
    :catchall_97
    move-exception v7

    if-eqz v1, :cond_9d

    .line 1467
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1469
    :cond_9d
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7
    :try_end_a1
    .catchall {:try_start_8a .. :try_end_a1} :catchall_1f

    .line 1478
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_a1
    :try_start_a1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1479
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_a7} :catch_86
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_ac

    .line 1483
    :try_start_a7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_15

    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_ac
    move-exception v7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v7
    :try_end_b1
    .catchall {:try_start_a7 .. :try_end_b1} :catchall_1f
.end method

.method declared-synchronized deleteTableForApp(Ljava/lang/String;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 780
    monitor-enter p0

    :try_start_1
    const-string v1, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting table for application:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 782
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "packageName"

    aput-object v3, v2, v1
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_a7

    .local v2, "columns":[Ljava/lang/String;
    const/4 v10, 0x0

    .line 783
    .local v10, "requestingColumn":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 785
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TABLE IF EXISTS ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 786
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 788
    if-eqz v8, :cond_79

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_79

    .line 789
    const/4 v1, 0x1

    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v11, v1
    :try_end_65
    .catch Landroid/database/SQLException; {:try_start_28 .. :try_end_65} :catch_81
    .catchall {:try_start_28 .. :try_end_65} :catchall_aa

    .line 790
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .local v11, "requestingColumn":[Ljava/lang/String;
    :try_start_65
    const-string/jumbo v1, "power_consuming_packages"

    const-string/jumbo v3, "packageName = ?"

    invoke-virtual {v0, v1, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6e
    .catch Landroid/database/SQLException; {:try_start_65 .. :try_end_6e} :catch_b7
    .catchall {:try_start_65 .. :try_end_6e} :catchall_b4

    move-object v10, v11

    .line 797
    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :goto_6f
    if-eqz v8, :cond_74

    .line 798
    :try_start_71
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_74
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_a7

    .line 802
    :goto_77
    monitor-exit p0

    return-void

    .line 792
    :cond_79
    :try_start_79
    const-string v1, "BatteryStatsDBHelper"

    const-string v3, "Package not found in the table power_consuming_packages"

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catch Landroid/database/SQLException; {:try_start_79 .. :try_end_80} :catch_81
    .catchall {:try_start_79 .. :try_end_80} :catchall_aa

    goto :goto_6f

    .line 794
    :catch_81
    move-exception v9

    .line 795
    .local v9, "e":Landroid/database/SQLException;
    :goto_82
    :try_start_82
    const-string v1, "BatteryStatsDBHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " deleteTableForApp SQLException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_82 .. :try_end_9e} :catchall_aa

    .line 797
    if-eqz v8, :cond_a3

    .line 798
    :try_start_a0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_a3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_a7

    goto :goto_77

    .line 780
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "e":Landroid/database/SQLException;
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_a7
    move-exception v1

    monitor-exit p0

    throw v1

    .line 797
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    :catchall_aa
    move-exception v1

    :goto_ab
    if-eqz v8, :cond_b0

    .line 798
    :try_start_ad
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 800
    :cond_b0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v1
    :try_end_b4
    .catchall {:try_start_ad .. :try_end_b4} :catchall_a7

    .line 797
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catchall_b4
    move-exception v1

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_ab

    .line 794
    .end local v10    # "requestingColumn":[Ljava/lang/String;
    .restart local v11    # "requestingColumn":[Ljava/lang/String;
    :catch_b7
    move-exception v9

    move-object v10, v11

    .end local v11    # "requestingColumn":[Ljava/lang/String;
    .restart local v10    # "requestingColumn":[Ljava/lang/String;
    goto :goto_82
.end method

.method public declared-synchronized dumpConsumingAppDetails(Ljava/io/PrintWriter;)V
    .registers 27
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1338
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1339
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v5, "power_consuming_packages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1341
    .local v13, "cursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    new-array v12, v5, [Ljava/lang/String;

    .line 1342
    .local v12, "abuserList":[Ljava/lang/String;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1343
    const-string/jumbo v5, "time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 1344
    .local v21, "timeColumn":I
    const-string/jumbo v5, "packageName"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1345
    .local v17, "packageColumn":I
    const-string/jumbo v5, "percentage"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 1346
    .local v18, "percentageColumn":I
    const-string v5, "notified_time"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1348
    .local v16, "notifiedTimeColumn":I
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v12, v5, [Ljava/lang/String;

    .line 1349
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1350
    .local v20, "sb":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 1352
    .local v14, "index":I
    const-string v5, "Abusive app list:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v15, v14

    .line 1353
    .end local v14    # "index":I
    .local v15, "index":I
    :goto_4a
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_b2

    .line 1354
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1355
    const-string v5, "Package name: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    move/from16 v0, v17

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1357
    .local v19, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    const-string v5, " consumed "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    move/from16 v0, v18

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1360
    const-string v5, " was found abusive at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    move/from16 v0, v21

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1362
    const-string v5, " and last notified at: "

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1363
    move/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1364
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 1366
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "index":I
    .restart local v14    # "index":I
    aput-object v19, v12, v15

    move v15, v14

    .line 1367
    .end local v14    # "index":I
    .restart local v15    # "index":I
    goto :goto_4a

    .line 1369
    .end local v15    # "index":I
    .end local v16    # "notifiedTimeColumn":I
    .end local v17    # "packageColumn":I
    .end local v18    # "percentageColumn":I
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    .end local v21    # "timeColumn":I
    :cond_b2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1370
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 1373
    .local v22, "time":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->collectTotalTableData(Landroid/database/sqlite/SQLiteDatabase;J)Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;

    move-result-object v24

    .line 1374
    .local v24, "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "oneHourPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneHour:D
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$600(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAh, oneDayPower: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->totalPowerForOneDay:D
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$1100(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mAh, oneHourBatteryDelta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneHour:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$700(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%, oneDayBatteryDelta: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->batteryDeltaForOneDay:I
    invoke-static/range {v24 .. v24}, Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;->access$1200(Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "One Hour Threshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1382
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1384
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcom/android/internal/os/BatteryStatsDBHelper;->dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_13c
    .catchall {:try_start_1 .. :try_end_13c} :catchall_13e

    .line 1385
    monitor-exit p0

    return-void

    .line 1338
    .end local v4    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v12    # "abuserList":[Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v22    # "time":J
    .end local v24    # "totalData":Lcom/android/internal/os/BatteryStatsDBHelper$TotalTableData;
    :catchall_13e
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized dumpConsumingAppDetails(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 39
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "abuserList"    # [Ljava/lang/String;

    .prologue
    .line 1388
    monitor-enter p0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1389
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1390
    .local v24, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v10, p2

    .local v10, "arr$":[Ljava/lang/String;
    array-length v15, v10

    .local v15, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_12
    if-ge v12, v15, :cond_122

    aget-object v16, v10, v12

    .line 1391
    .local v16, "name":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1393
    .local v11, "cursor":Landroid/database/Cursor;
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 1394
    const-string v3, "lcd_condition"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1395
    .local v13, "lcdColumn":I
    const-string/jumbo v3, "time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .line 1396
    .local v25, "timeColumn":I
    const-string/jumbo v3, "power"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .line 1397
    .local v22, "powerColumn":I
    const-string/jumbo v3, "totalpower"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 1398
    .local v30, "totalPowerColumn":I
    const-string v3, "network_usage"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 1399
    .local v17, "networkColumn":I
    const-string/jumbo v3, "usage_time"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v31

    .line 1400
    .local v31, "usageColumn":I
    const-string/jumbo v3, "wakeup_count"

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v34

    .line 1402
    .local v34, "wakeUpColumn":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    const-string v3, "lcd |        time        |    power    |   totalpower |    network    |    usage_time |    wakeUpCount"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    :goto_91
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_118

    .line 1406
    invoke-interface {v11, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1407
    .local v14, "lcdCondition":I
    move/from16 v0, v22

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    .line 1408
    .local v20, "power":D
    and-int/lit8 v3, v14, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_110

    const-wide/16 v4, 0x0

    cmpl-double v3, v20, v4

    if-lez v3, :cond_110

    .line 1409
    move/from16 v0, v25

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1410
    .local v26, "time":J
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    .line 1411
    .local v23, "resultTime":Ljava/lang/String;
    move/from16 v0, v30

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v28

    .line 1412
    .local v28, "totalPower":D
    move/from16 v0, v17

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 1413
    .local v18, "networkUsage":J
    move/from16 v0, v31

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 1414
    .local v32, "usageTime":J
    move/from16 v0, v34

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    .line 1416
    .local v35, "wakeUpCount":I
    const-string v3, "%3d | %s | %11.5f | %11.5f | %13d | %13d | %10d"

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v23, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static/range {v32 .. v33}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    .end local v18    # "networkUsage":J
    .end local v23    # "resultTime":Ljava/lang/String;
    .end local v26    # "time":J
    .end local v28    # "totalPower":D
    .end local v32    # "usageTime":J
    .end local v35    # "wakeUpCount":I
    :cond_110
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_113
    .catchall {:try_start_1 .. :try_end_113} :catchall_115

    goto/16 :goto_91

    .line 1388
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i$":I
    .end local v13    # "lcdColumn":I
    .end local v14    # "lcdCondition":I
    .end local v15    # "len$":I
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "networkColumn":I
    .end local v20    # "power":D
    .end local v22    # "powerColumn":I
    .end local v24    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v25    # "timeColumn":I
    .end local v30    # "totalPowerColumn":I
    .end local v31    # "usageColumn":I
    .end local v34    # "wakeUpColumn":I
    :catchall_115
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1423
    .restart local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v10    # "arr$":[Ljava/lang/String;
    .restart local v11    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "i$":I
    .restart local v15    # "len$":I
    .restart local v16    # "name":Ljava/lang/String;
    .restart local v24    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_118
    :try_start_118
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1424
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1390
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_12

    .line 1426
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v16    # "name":Ljava/lang/String;
    :cond_122
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_125
    .catchall {:try_start_118 .. :try_end_125} :catchall_115

    .line 1427
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getAbusiveAppList()[Ljava/lang/String;
    .registers 15

    .prologue
    .line 1252
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1253
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "power_consuming_packages"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "packageName"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "percentage"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1256
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_71

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 1257
    const-string/jumbo v1, "packageName"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1258
    .local v12, "packageColumn":I
    const-string/jumbo v1, "percentage"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1259
    .local v13, "percentageColumn":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Ljava/lang/String;

    .line 1260
    .local v8, "abuserList":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "index":I
    move v11, v10

    .line 1261
    .end local v10    # "index":I
    .local v11, "index":I
    :goto_3e
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_6c

    .line 1262
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "index":I
    .restart local v10    # "index":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v11

    .line 1264
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move v11, v10

    .end local v10    # "index":I
    .restart local v11    # "index":I
    goto :goto_3e

    .line 1266
    :cond_6c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_6f
    .catchall {:try_start_1 .. :try_end_6f} :catchall_78

    .line 1270
    .end local v8    # "abuserList":[Ljava/lang/String;
    .end local v11    # "index":I
    .end local v12    # "packageColumn":I
    .end local v13    # "percentageColumn":I
    :goto_6f
    monitor-exit p0

    return-object v8

    .line 1269
    :cond_71
    :try_start_71
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1270
    const/4 v1, 0x0

    new-array v8, v1, [Ljava/lang/String;
    :try_end_77
    .catchall {:try_start_71 .. :try_end_77} :catchall_78

    goto :goto_6f

    .line 1252
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_78
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized getAverageLevelDropPerHour(Ljava/lang/String;)D
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 724
    monitor-enter p0

    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "SELECT usage_time,power FROM["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "]"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 726
    .local v16, "selectQuery":Ljava/lang/String;
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour:: start"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour:: for package:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 730
    .local v9, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v9, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 731
    .local v8, "cursor":Landroid/database/Cursor;
    const-string/jumbo v20, "usage_time"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 732
    .local v17, "usageTimeColumn":I
    const-string/jumbo v20, "power"

    move-object/from16 v0, v20

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 734
    .local v11, "powerColumn":I
    const-wide/16 v6, 0x0

    .line 735
    .local v6, "appUsageTime":J
    const-wide/16 v14, 0x0

    .line 736
    .local v14, "power":D
    invoke-interface {v8}, Landroid/database/Cursor;->moveToLast()Z

    move-result v20

    if-eqz v20, :cond_156

    .line 737
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 738
    .local v4, "appTotalTime":J
    move-wide v6, v4

    .line 739
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour:: start loop appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    .line 741
    :goto_90
    invoke-interface {v8}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v20

    if-eqz v20, :cond_156

    .line 742
    move/from16 v0, v17

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 743
    .local v18, "tempTime":J
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop tempTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop before appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop before appUsageTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    cmp-long v20, v18, v4

    if-lez v20, :cond_f2

    .line 750
    add-long v6, v6, v18

    .line 752
    :cond_f2
    move-wide/from16 v4, v18

    .line 753
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after appUsageTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after appTotalTime:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    add-double v14, v14, v20

    .line 758
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  loop after power:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_148
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_148} :catch_14a
    .catchall {:try_start_1 .. :try_end_148} :catchall_1fb

    goto/16 :goto_90

    .line 773
    .end local v4    # "appTotalTime":J
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "powerColumn":I
    .end local v14    # "power":D
    .end local v16    # "selectQuery":Ljava/lang/String;
    .end local v17    # "usageTimeColumn":I
    .end local v18    # "tempTime":J
    :catch_14a
    move-exception v10

    .line 774
    .local v10, "e":Ljava/lang/Exception;
    :try_start_14b
    const-string v20, "BatteryStatsDBHelper"

    const-string v21, "getAverageLevelDropPerHour::  Exception"

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_152
    .catchall {:try_start_14b .. :try_end_152} :catchall_1fb

    .line 775
    const-wide/16 v12, 0x0

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_154
    monitor-exit p0

    return-wide v12

    .line 761
    .restart local v6    # "appUsageTime":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v11    # "powerColumn":I
    .restart local v14    # "power":D
    .restart local v16    # "selectQuery":Ljava/lang/String;
    .restart local v17    # "usageTimeColumn":I
    :cond_156
    :try_start_156
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 762
    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 763
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "AverageLevelDropCalculation : Package = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Power = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " Usage Time = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " ms"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    const-wide/16 v20, 0x0

    cmp-long v20, v6, v20

    if-nez v20, :cond_19e

    .line 766
    const-wide/16 v6, 0x1

    .line 768
    :cond_19e
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " getAverageLevelDropPerHour sBatteryCapacity : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    sget-wide v22, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "appUsageTime : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    mul-double v20, v20, v14

    const-wide v22, 0x40ac200000000000L    # 3600.0

    mul-double v20, v20, v22

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    long-to-double v0, v6

    move-wide/from16 v22, v0

    sget-wide v24, Lcom/android/internal/os/BatteryStatsDBHelper;->sBatteryCapacity:D

    mul-double v22, v22, v24

    div-double v12, v20, v22

    .line 771
    .local v12, "i":D
    const-string v20, "BatteryStatsDBHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "getAverageLevelDropPerHour::  returning i:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f9
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_1f9} :catch_14a
    .catchall {:try_start_156 .. :try_end_1f9} :catchall_1fb

    goto/16 :goto_154

    .line 724
    .end local v6    # "appUsageTime":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "powerColumn":I
    .end local v12    # "i":D
    .end local v14    # "power":D
    .end local v16    # "selectQuery":Ljava/lang/String;
    .end local v17    # "usageTimeColumn":I
    :catchall_1fb
    move-exception v20

    monitor-exit p0

    throw v20
.end method

.method public declared-synchronized getBatteryTotalDelta(I)I
    .registers 9
    .param p1, "screenCondition"    # I

    .prologue
    .line 835
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 836
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "SELECT batterydelta,lcd_condition FROM Battery_Delta"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 838
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v5, "batterydelta"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 839
    .local v0, "batteryDeltaColumn":I
    const-string v5, "lcd_condition"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 841
    .local v3, "lcdColumn":I
    const/4 v4, 0x0

    .line 843
    .local v4, "totalDelta":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 845
    :cond_1f
    const/4 v5, 0x2

    if-ne p1, v5, :cond_35

    .line 846
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    add-int/2addr v4, v5

    .line 850
    :cond_27
    :goto_27
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1f

    .line 852
    :cond_2d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 853
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_43

    .line 854
    monitor-exit p0

    return v4

    .line 847
    :cond_35
    :try_start_35
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_27

    .line 848
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_43

    move-result v5

    add-int/2addr v4, v5

    goto :goto_27

    .line 835
    .end local v0    # "batteryDeltaColumn":I
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local v2    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v3    # "lcdColumn":I
    .end local v4    # "totalDelta":I
    :catchall_43
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getUsageList(I)[B
    .registers 6
    .param p1, "screenCondition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 858
    sparse-switch p1, :sswitch_data_62

    .line 881
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong screen condition. Please check BatteryStatsDBHandler.java"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :sswitch_d
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    .line 879
    :goto_18
    return-object v0

    .line 863
    :sswitch_19
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageList(Z)[B

    move-result-object v0

    goto :goto_18

    .line 866
    :sswitch_25
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-direct {p0, v2}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_18

    .line 869
    :sswitch_31
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd off data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-direct {p0, v3}, Lcom/android/internal/os/BatteryStatsDBHelper;->getScreenOffUsageListOnlyApp(Z)[B

    move-result-object v0

    goto :goto_18

    .line 872
    :sswitch_3d
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting summation of lcd all data(only app)"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getTotalUsageList()[B

    move-result-object v0

    goto :goto_18

    .line 875
    :sswitch_49
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting battery percentage data"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getBatteryPercentageList()[B

    move-result-object v0

    goto :goto_18

    .line 878
    :sswitch_55
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "Requesting lcd all data(only app) with power consumer list"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getConsumerListOnlyApp()[B

    move-result-object v0

    goto :goto_18

    .line 858
    nop

    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_d
        0x4 -> :sswitch_19
        0x8 -> :sswitch_25
        0x10 -> :sswitch_31
        0x20 -> :sswitch_3d
        0x40 -> :sswitch_49
        0x80 -> :sswitch_55
    .end sparse-switch
.end method

.method public declared-synchronized handleTimeChange()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 1274
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->calculateTimeChange()J
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9a

    move-result-wide v2

    .line 1275
    .local v2, "delta":J
    cmp-long v8, v2, v10

    if-nez v8, :cond_d

    .line 1307
    :goto_b
    monitor-exit p0

    return-void

    .line 1278
    :cond_d
    cmp-long v8, v2, v10

    if-lez v8, :cond_9d

    :try_start_11
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "deltaStr":Ljava/lang/String;
    :goto_24
    const-string v8, "BatteryStatsDBHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Time diff = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-virtual {p0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1281
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_43
    .catchall {:try_start_11 .. :try_end_43} :catchall_9a

    .line 1283
    :try_start_43
    const-string v8, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\'"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 1284
    .local v5, "listCursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 1285
    :goto_50
    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_a2

    .line 1286
    const-string v8, "name"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1287
    .local v6, "packageName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1289
    .local v7, "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1290
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_89} :catch_8a
    .catchall {:try_start_43 .. :try_end_89} :catchall_e5

    goto :goto_50

    .line 1301
    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "updateString":Ljava/lang/String;
    :catch_8a
    move-exception v4

    .line 1302
    .local v4, "e":Ljava/lang/Exception;
    :try_start_8b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_e5

    .line 1304
    :try_start_8e
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1306
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_91
    const-string v8, "BatteryStatsDBHelper"

    const-string v9, "Updated db with new timestamps"

    invoke-static {v8, v9}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catchall {:try_start_8e .. :try_end_98} :catchall_9a

    goto/16 :goto_b

    .line 1274
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "deltaStr":Ljava/lang/String;
    .end local v2    # "delta":J
    :catchall_9a
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1278
    .restart local v2    # "delta":J
    :cond_9d
    :try_start_9d
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_9a

    move-result-object v1

    goto :goto_24

    .line 1293
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1    # "deltaStr":Ljava/lang/String;
    .restart local v5    # "listCursor":Landroid/database/Cursor;
    :cond_a2
    :try_start_a2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1294
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE Battery_Delta SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1295
    .restart local v7    # "updateString":Ljava/lang/String;
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1296
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UPDATE power_consuming_packages SET time=time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notified_time=notified_time"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1298
    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 1300
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_e1} :catch_8a
    .catchall {:try_start_a2 .. :try_end_e1} :catchall_e5

    .line 1304
    :try_start_e1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_91

    .end local v5    # "listCursor":Landroid/database/Cursor;
    .end local v7    # "updateString":Ljava/lang/String;
    :catchall_e5
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v8
    :try_end_ea
    .catchall {:try_start_e1 .. :try_end_ea} :catchall_9a
.end method

.method declared-synchronized modifyThresholdIfNecessary()V
    .registers 9

    .prologue
    .line 805
    monitor-enter p0

    :try_start_1
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "modifyThresholdIfNecessary called "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_4d

    .line 807
    :try_start_8
    sget-object v0, Lcom/android/internal/os/BatteryStatsDBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/os/BatteryStatsDBHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "key"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 810
    .local v6, "cThreshold":Landroid/database/Cursor;
    if-nez v6, :cond_30

    .line 811
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor null in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2e} :catch_41
    .catchall {:try_start_8 .. :try_end_2e} :catchall_4d

    .line 832
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :goto_2e
    monitor-exit p0

    return-void

    .line 815
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_30
    :try_start_30
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_50

    .line 816
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "cursor empty in modifyThresholdIfNecessary"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_41
    .catchall {:try_start_30 .. :try_end_40} :catchall_4d

    goto :goto_2e

    .line 828
    .end local v6    # "cThreshold":Landroid/database/Cursor;
    :catch_41
    move-exception v7

    .line 829
    .local v7, "e":Ljava/lang/Exception;
    :try_start_42
    const-string v0, "BatteryStatsDBHelper"

    const-string v1, "modifyThresholdIfNecessary remote exception "

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->printDebugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4d

    goto :goto_2e

    .line 805
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 821
    .restart local v6    # "cThreshold":Landroid/database/Cursor;
    :cond_50
    :goto_50
    :try_start_50
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_72

    .line 822
    const-string v0, "one_hr_battery_threshold"

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 823
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsDBHelper;->ONE_HOUR_THRESHOLD:D

    .line 825
    :cond_6e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_50

    .line 827
    :cond_72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_75} :catch_41
    .catchall {:try_start_50 .. :try_end_75} :catchall_4d

    goto :goto_2e
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 214
    const-string v0, "CREATE TABLE Battery_Delta(lcd_condition INTEGER,time LONG,batterydelta INTEGER,batterypercent INTEGER)"

    .line 218
    .local v0, "CREATE_BATTERY_DELTA_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 221
    const-string v2, "CREATE TABLE power_consuming_packages(time LONG,packageName TEXT,percentage DOUBLE,notified_time LONG)"

    .line 224
    .local v2, "createPowerConsumingPackageTable":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 226
    const-string v1, "CREATE TABLE [all](time LONG,power DOUBLE,totalpower DOUBLE,batterydelta INTEGER,batterypercent INTEGER)"

    .line 230
    .local v1, "createAllPowerTable":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 231
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 253
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v3, "tables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "SELECT * FROM sqlite_master WHERE type=\'table\';"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 255
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 256
    :goto_f
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_32

    .line 257
    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "tableName":Ljava/lang/String;
    const-string v4, "android_metadata"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    const-string/jumbo v4, "sqlite_sequence"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 259
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_2e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_f

    .line 263
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_32
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 265
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 266
    .restart local v2    # "tableName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE IF EXISTS ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_39

    .line 270
    .end local v2    # "tableName":Ljava/lang/String;
    :cond_62
    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatteryStatsDBHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 271
    return-void
.end method
