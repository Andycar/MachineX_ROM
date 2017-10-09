.class public Lcom/android/server/enterprise/application/ApplicationUsageDb;
.super Ljava/lang/Object;
.source "ApplicationUsageDb.java"


# static fields
.field public static final APP_LAST_LAUNCH_TIME:Ljava/lang/String; = "lastlaunchtime"

.field public static final APP_LAST_PAUSE_TIME:Ljava/lang/String; = "lastpausetime"

.field public static final APP_LAST_SERVICE_START_TIME:Ljava/lang/String; = "applastservicestarttime"

.field public static final APP_LAST_SERVICE_STOP_TIME:Ljava/lang/String; = "applastservicestoptime"

.field public static final APP_TOTAL_USAGE_TIME:Ljava/lang/String; = "totalusagetime"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final LAUNCH_COUNT:Ljava/lang/String; = "launchcount"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationControl"

.field private static final TAG:Ljava/lang/String; = "ApplicationUsageDb"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private calculateLastUsageTime(JJJJ)J
    .registers 16
    .param p1, "launchTime"    # J
    .param p3, "pauseTime"    # J
    .param p5, "serviceStartTime"    # J
    .param p7, "serviceStopTime"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 298
    const-wide/16 v0, 0x0

    .line 299
    .local v0, "lastUsageTIme":J
    cmp-long v2, p5, v4

    if-eqz v2, :cond_2b

    cmp-long v2, p7, v4

    if-eqz v2, :cond_2b

    .line 300
    cmp-long v2, p1, v4

    if-eqz v2, :cond_28

    .line 301
    cmp-long v2, p3, p7

    if-lez v2, :cond_1e

    .line 302
    cmp-long v2, p1, p5

    if-gez v2, :cond_1b

    .line 303
    sub-long v0, p3, p1

    .line 329
    :cond_1a
    :goto_1a
    return-wide v0

    .line 307
    :cond_1b
    sub-long v0, p3, p5

    goto :goto_1a

    .line 311
    :cond_1e
    cmp-long v2, p1, p5

    if-gez v2, :cond_25

    .line 313
    sub-long v0, p7, p1

    goto :goto_1a

    .line 317
    :cond_25
    sub-long v0, p7, p5

    goto :goto_1a

    .line 322
    :cond_28
    sub-long v0, p7, p5

    goto :goto_1a

    .line 324
    :cond_2b
    cmp-long v2, p3, v4

    if-eqz v2, :cond_1a

    .line 325
    sub-long v0, p3, p1

    goto :goto_1a
.end method

.method private static createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 364
    :try_start_0
    const-string v1, " (_id integer primary key autoincrement, pkgname text, lastpausetime long, applastservicestarttime long, applastservicestoptime long, totalusagetime long, launchcount integer, lastlaunchtime long );"

    .line 372
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationControl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 373
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::createDmAppMgrTable: Table is Created "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 378
    .end local v1    # "s":Ljava/lang/String;
    :goto_1f
    return-void

    .line 374
    :catch_20
    move-exception v0

    .line 375
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::createDmAppMgrTable: Exception while table is creating "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method private static getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, "dmappmgrDB":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "dmappmgr.db"

    .line 350
    .local v1, "dmappmgrDBPath":Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_5
    invoke-virtual {p0, v1, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_17

    move-result-object v0

    .line 356
    :goto_9
    if-eqz v0, :cond_16

    const-string v3, "ApplicationControl"

    invoke-static {v0, v3}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 357
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->createDmAppMgrTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 359
    :cond_16
    return-object v0

    .line 352
    :catch_17
    move-exception v2

    .line 353
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ApplicationUsageDb"

    const-string v4, "::getAppControlDB: Exception to create DB"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 381
    const/4 v1, 0x0

    .line 382
    .local v1, "exists":Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 384
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT 1 FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE 1=0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2b} :catch_2d

    .line 385
    const/4 v1, 0x1

    .line 391
    :cond_2c
    :goto_2c
    return v1

    .line 386
    :catch_2d
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 388
    const-string v2, "ApplicationUsageDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method public deletePackageFromDb(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v3, 0x0

    .line 177
    .local v3, "success":Z
    const/4 v1, 0x0

    .line 179
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 180
    if-nez v1, :cond_c

    .line 181
    const/4 v4, 0x0

    .line 194
    :goto_b
    return v4

    .line 182
    :cond_c
    const-string v4, "ApplicationControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgname = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2c} :catch_37

    move-result v0

    .line 184
    .local v0, "count":I
    if-lez v0, :cond_30

    .line 185
    const/4 v3, 0x1

    .line 190
    .end local v0    # "count":I
    :cond_30
    :goto_30
    if-eqz v1, :cond_35

    .line 191
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_35
    move v4, v3

    .line 194
    goto :goto_b

    .line 186
    :catch_37
    move-exception v2

    .line 187
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public getAppUsageData()Ljava/util/HashMap;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/enterprise/AppInfoLastUsage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    const/16 v16, 0x0

    .line 237
    .local v16, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 238
    .local v4, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/16 v19, 0x0

    .line 239
    .local v19, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    const/4 v5, 0x5

    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "pkgname"

    aput-object v7, v6, v5

    const/4 v5, 0x1

    const-string v7, "lastlaunchtime"

    aput-object v7, v6, v5

    const/4 v5, 0x2

    const-string v7, "lastpausetime"

    aput-object v7, v6, v5

    const/4 v5, 0x3

    const-string v7, "applastservicestarttime"

    aput-object v7, v6, v5

    const/4 v5, 0x4

    const-string v7, "applastservicestoptime"

    aput-object v7, v6, v5

    .line 245
    .local v6, "col":[Ljava/lang/String;
    :try_start_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_103
    .catchall {:try_start_22 .. :try_end_29} :catchall_101

    move-result-object v4

    .line 246
    if-nez v4, :cond_38

    .line 247
    const/4 v5, 0x0

    .line 287
    if-eqz v16, :cond_32

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_32
    if-eqz v4, :cond_37

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 293
    :cond_37
    :goto_37
    return-object v5

    .line 248
    :cond_38
    :try_start_38
    const-string v5, "ApplicationControl"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 249
    if-eqz v16, :cond_ab

    .line 251
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 252
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_50} :catch_103
    .catchall {:try_start_38 .. :try_end_50} :catchall_101

    .line 255
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .local v22, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :cond_50
    :try_start_50
    const-string/jumbo v5, "pkgname"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 257
    .local v23, "packageName":Ljava/lang/String;
    const-string v5, "lastlaunchtime"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 259
    .local v8, "lastLaunchTime":J
    const-string v5, "lastpausetime"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 261
    .local v10, "lastPauseTime":J
    const-string v5, "applastservicestarttime"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 263
    .local v12, "lastServiceStartTime":J
    const-string v5, "applastservicestoptime"

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .local v14, "lastServiceStopTime":J
    move-object/from16 v7, p0

    .line 265
    invoke-direct/range {v7 .. v15}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->calculateLastUsageTime(JJJJ)J

    move-result-wide v20

    .line 268
    .local v20, "lastUsageTime":J
    const-wide/16 v24, 0x0

    cmp-long v5, v20, v24

    if-nez v5, :cond_b8

    .line 280
    :goto_a3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_a6} :catch_dd
    .catchall {:try_start_50 .. :try_end_a6} :catchall_f3

    move-result v5

    if-nez v5, :cond_50

    move-object/from16 v19, v22

    .line 287
    .end local v8    # "lastLaunchTime":J
    .end local v10    # "lastPauseTime":J
    .end local v12    # "lastServiceStartTime":J
    .end local v14    # "lastServiceStopTime":J
    .end local v20    # "lastUsageTime":J
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .end local v23    # "packageName":Ljava/lang/String;
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :cond_ab
    if-eqz v16, :cond_b0

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_b0
    if-eqz v4, :cond_b5

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b5
    :goto_b5
    move-object/from16 v5, v19

    .line 293
    goto :goto_37

    .line 271
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v8    # "lastLaunchTime":J
    .restart local v10    # "lastPauseTime":J
    .restart local v12    # "lastServiceStartTime":J
    .restart local v14    # "lastServiceStopTime":J
    .restart local v20    # "lastUsageTime":J
    .restart local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v23    # "packageName":Ljava/lang/String;
    :cond_b8
    :try_start_b8
    new-instance v18, Landroid/app/enterprise/AppInfoLastUsage;

    invoke-direct/range {v18 .. v18}, Landroid/app/enterprise/AppInfoLastUsage;-><init>()V

    .line 272
    .local v18, "lAppInfoLastUsage":Landroid/app/enterprise/AppInfoLastUsage;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/enterprise/AppInfoLastUsage;->mPackageName:Ljava/lang/String;

    .line 273
    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/app/enterprise/AppInfoLastUsage;->mLastAppUsage:J

    .line 274
    const-wide/16 v24, 0x0

    cmp-long v5, v8, v24

    if-eqz v5, :cond_ee

    .line 275
    move-object/from16 v0, v18

    iput-wide v8, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J

    .line 278
    :goto_d3
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_dc} :catch_dd
    .catchall {:try_start_b8 .. :try_end_dc} :catchall_f3

    goto :goto_a3

    .line 283
    .end local v8    # "lastLaunchTime":J
    .end local v10    # "lastPauseTime":J
    .end local v12    # "lastServiceStartTime":J
    .end local v14    # "lastServiceStopTime":J
    .end local v18    # "lAppInfoLastUsage":Landroid/app/enterprise/AppInfoLastUsage;
    .end local v20    # "lastUsageTime":J
    .end local v23    # "packageName":Ljava/lang/String;
    :catch_dd
    move-exception v17

    move-object/from16 v19, v22

    .line 284
    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .local v17, "e":Ljava/lang/Exception;
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :goto_e0
    :try_start_e0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_e0 .. :try_end_e3} :catchall_101

    .line 287
    if-eqz v16, :cond_e8

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_e8
    if-eqz v4, :cond_b5

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_b5

    .line 277
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v8    # "lastLaunchTime":J
    .restart local v10    # "lastPauseTime":J
    .restart local v12    # "lastServiceStartTime":J
    .restart local v14    # "lastServiceStopTime":J
    .restart local v18    # "lAppInfoLastUsage":Landroid/app/enterprise/AppInfoLastUsage;
    .restart local v20    # "lastUsageTime":J
    .restart local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v23    # "packageName":Ljava/lang/String;
    :cond_ee
    :try_start_ee
    move-object/from16 v0, v18

    iput-wide v12, v0, Landroid/app/enterprise/AppInfoLastUsage;->mLastLaunchTime:J
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_f2} :catch_dd
    .catchall {:try_start_ee .. :try_end_f2} :catchall_f3

    goto :goto_d3

    .line 287
    .end local v8    # "lastLaunchTime":J
    .end local v10    # "lastPauseTime":J
    .end local v12    # "lastServiceStartTime":J
    .end local v14    # "lastServiceStopTime":J
    .end local v18    # "lAppInfoLastUsage":Landroid/app/enterprise/AppInfoLastUsage;
    .end local v20    # "lastUsageTime":J
    .end local v23    # "packageName":Ljava/lang/String;
    :catchall_f3
    move-exception v5

    move-object/from16 v19, v22

    .end local v22    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    .restart local v19    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/enterprise/AppInfoLastUsage;>;"
    :goto_f6
    if-eqz v16, :cond_fb

    .line 288
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_fb
    if-eqz v4, :cond_100

    .line 290
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_100
    throw v5

    .line 287
    :catchall_101
    move-exception v5

    goto :goto_f6

    .line 283
    :catch_103
    move-exception v17

    goto :goto_e0
.end method

.method public getLaunchCountOfAllApplication()Ljava/util/HashMap;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    const/4 v8, 0x0

    .line 199
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 200
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v11, 0x0

    .line 203
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    const-string v1, "ApplicationControl"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 206
    if-eqz v8, :cond_45

    .line 207
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_50
    .catchall {:try_start_3 .. :try_end_1c} :catchall_5f

    .line 209
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v12, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :try_start_1c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 211
    :cond_22
    const-string/jumbo v1, "pkgname"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 214
    .local v13, "packageName":Ljava/lang/String;
    const-string v1, "launchcount"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 216
    .local v10, "launchCount":I
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_41} :catch_6e
    .catchall {:try_start_1c .. :try_end_41} :catchall_6b

    move-result v1

    if-nez v1, :cond_22

    .end local v10    # "launchCount":I
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_44
    move-object v11, v12

    .line 224
    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_45
    if-eqz v8, :cond_4a

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_4a
    if-eqz v0, :cond_4f

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 231
    :cond_4f
    :goto_4f
    return-object v11

    .line 220
    :catch_50
    move-exception v9

    .line 221
    .local v9, "e":Ljava/lang/Exception;
    :goto_51
    :try_start_51
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_5f

    .line 224
    if-eqz v8, :cond_59

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_59
    if-eqz v0, :cond_4f

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4f

    .line 224
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_5f
    move-exception v1

    :goto_60
    if-eqz v8, :cond_65

    .line 225
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 226
    :cond_65
    if-eqz v0, :cond_6a

    .line 227
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6a
    throw v1

    .line 224
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_6b
    move-exception v1

    move-object v11, v12

    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_60

    .line 220
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catch_6e
    move-exception v9

    move-object v11, v12

    .end local v12    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_51
.end method

.method public updateBackGroundUsageDetails(Ljava/lang/String;JJ)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lastServiceStartTime"    # J
    .param p4, "lastServiceStopTime"    # J

    .prologue
    .line 130
    const/4 v5, 0x0

    .line 131
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 132
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 134
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_a9
    .catchall {:try_start_3 .. :try_end_8} :catchall_b3

    move-result-object v3

    .line 135
    if-nez v3, :cond_12

    .line 136
    const/4 v7, 0x0

    .line 164
    if-eqz v2, :cond_11

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 171
    :cond_11
    :goto_11
    return v7

    .line 137
    :cond_12
    :try_start_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 142
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 144
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 145
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string v7, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 147
    const-string v7, "ApplicationControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_6d} :catch_a9
    .catchall {:try_start_12 .. :try_end_6d} :catchall_b3

    move-result v0

    .line 149
    .local v0, "count":I
    if-lez v0, :cond_71

    .line 150
    const/4 v5, 0x1

    .line 164
    .end local v0    # "count":I
    :cond_71
    :goto_71
    if-eqz v2, :cond_76

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 167
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_76
    :goto_76
    if-eqz v3, :cond_7b

    .line 168
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7b
    move v7, v5

    .line 171
    goto :goto_11

    .line 152
    :cond_7d
    :try_start_7d
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 153
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "pkgname"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v7, "applastservicestarttime"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string v7, "applastservicestoptime"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 156
    const-string v7, "ApplicationControl"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_a0} :catch_a9
    .catchall {:try_start_7d .. :try_end_a0} :catchall_b3

    move-result-wide v0

    .line 157
    .local v0, "count":J
    const-wide/16 v8, 0x0

    cmp-long v7, v8, v0

    if-gez v7, :cond_71

    .line 158
    const/4 v5, 0x1

    goto :goto_71

    .line 161
    .end local v0    # "count":J
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_a9
    move-exception v4

    .line 162
    .local v4, "e":Ljava/lang/Exception;
    :try_start_aa
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b3

    .line 164
    if-eqz v2, :cond_76

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_76

    .line 164
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_b3
    move-exception v7

    if-eqz v2, :cond_b9

    .line 165
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b9
    throw v7
.end method

.method public updateForeGroundUsageDetails(Ljava/lang/String;IJJ)Z
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "lCount"    # I
    .param p3, "launchTime"    # J
    .param p5, "lastPauseTime"    # J

    .prologue
    .line 78
    const/4 v6, 0x0

    .line 79
    .local v6, "success":Z
    const/4 v2, 0x0

    .line 80
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 82
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationUsageDb;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/enterprise/application/ApplicationUsageDb;->getAppControlDB(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_c6
    .catchall {:try_start_3 .. :try_end_8} :catchall_d0

    move-result-object v3

    .line 83
    if-nez v3, :cond_12

    .line 84
    const/4 v8, 0x0

    .line 117
    if-eqz v2, :cond_11

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_11
    :goto_11
    return v8

    .line 85
    :cond_12
    :try_start_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM ApplicationControl WHERE pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 90
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_91

    .line 92
    const-string v8, "launchcount"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 94
    .local v5, "launchCount":I
    add-int/2addr v5, p2

    .line 95
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 96
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "launchcount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v8, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v8, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v8, "ApplicationControl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_81} :catch_c6
    .catchall {:try_start_12 .. :try_end_81} :catchall_d0

    move-result v0

    .line 101
    .local v0, "count":I
    if-lez v0, :cond_85

    .line 102
    const/4 v6, 0x1

    .line 117
    .end local v0    # "count":I
    .end local v5    # "launchCount":I
    :cond_85
    :goto_85
    if-eqz v2, :cond_8a

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 120
    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_8a
    :goto_8a
    if-eqz v3, :cond_8f

    .line 121
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8f
    move v8, v6

    .line 124
    goto :goto_11

    .line 104
    :cond_91
    :try_start_91
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 105
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string v8, "launchcount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string/jumbo v8, "pkgname"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v8, "lastlaunchtime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    const-string v8, "lastpausetime"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v8, "ApplicationControl"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_bd} :catch_c6
    .catchall {:try_start_91 .. :try_end_bd} :catchall_d0

    move-result-wide v0

    .line 110
    .local v0, "count":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v0

    if-gez v8, :cond_85

    .line 111
    const/4 v6, 0x1

    goto :goto_85

    .line 114
    .end local v0    # "count":J
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_c6
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    :try_start_c7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_d0

    .line 117
    if-eqz v2, :cond_8a

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_8a

    .line 117
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_d0
    move-exception v8

    if-eqz v2, :cond_d6

    .line 118
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d6
    throw v8
.end method
