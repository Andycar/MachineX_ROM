.class public Lcom/android/internal/os/SmartManagerProvider;
.super Landroid/content/ContentProvider;
.source "SmartManagerProvider.java"


# static fields
.field static final ALL_PACKAGES:I = 0x1

.field static final BATTERY_DELTA:I = 0x2

.field static final PACKAGE_NAME:I = 0x4

.field static final POWER_CONSUMING_PACKAGES:I = 0x3

.field static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 30
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 32
    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "Battery_Delta"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 33
    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string/jumbo v2, "power_consuming_packages"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 34
    sget-object v0, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.sec.smartmanager.provider"

    const-string v2, "*"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/android/internal/os/SmartManagerProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsDBHelper;->getInstance(Landroid/content/Context;)Lcom/android/internal/os/BatteryStatsDBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    .line 42
    iget-object v0, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    if-eqz v0, :cond_10

    .line 44
    const/4 v0, 0x1

    .line 46
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v9, 0x0

    .line 57
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz p1, :cond_56

    .line 58
    iget-object v12, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    monitor-enter v12

    .line 60
    :try_start_6
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsDBHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v1, Lcom/android/internal/os/SmartManagerProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_d4

    .line 92
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 93
    .local v8, "contentURI":Ljava/lang/String;
    const-string v1, "content://com.sec.smartmanager.provider"

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 95
    const-string v1, "content://com.sec.smartmanager.provider/"

    const-string v2, ""

    invoke-virtual {v8, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "newURI":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_55

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 106
    .end local v8    # "contentURI":Ljava/lang/String;
    .end local v10    # "newURI":Ljava/lang/String;
    :cond_55
    :goto_55
    monitor-exit v12

    .line 109
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_56
    return-object v9

    .line 65
    .restart local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :pswitch_57
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, "table_name":Ljava/lang/String;
    const-string v1, "*"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 68
    const-string v1, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name!=\'android_metadata\' AND name!=\'Battery_Delta\' AND name!=\'power_consuming_packages\' AND name!=\'null\' AND name!=\'all\'"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_55

    .line 71
    :cond_6b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 75
    goto :goto_55

    .line 79
    .end local v11    # "table_name":Ljava/lang/String;
    :pswitch_92
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    const-string v1, "Battery_Delta"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 82
    goto :goto_55

    .line 86
    :pswitch_a4
    iget-object v1, p0, Lcom/android/internal/os/SmartManagerProvider;->batteryStatsDBHelper:Lcom/android/internal/os/BatteryStatsDBHelper;

    const-string/jumbo v1, "power_consuming_packages"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 88
    goto :goto_55

    .line 104
    .restart local v8    # "contentURI":Ljava/lang/String;
    :cond_b7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    .end local v0    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "contentURI":Ljava/lang/String;
    :catchall_d0
    move-exception v1

    monitor-exit v12
    :try_end_d2
    .catchall {:try_start_6 .. :try_end_d2} :catchall_d0

    throw v1

    .line 62
    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_57
        :pswitch_92
        :pswitch_a4
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 133
    const/4 v0, 0x0

    return v0
.end method
