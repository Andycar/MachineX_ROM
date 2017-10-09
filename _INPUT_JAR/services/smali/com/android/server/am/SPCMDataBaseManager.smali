.class public Lcom/android/server/am/SPCMDataBaseManager;
.super Ljava/lang/Object;
.source "SPCMDataBaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;,
        Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    }
.end annotation


# static fields
.field private static final DB_CREATE_LIST:Ljava/lang/String; = " CREATE TABLE AppFreezer (id INTEGER PRIMARY KEY AUTOINCREMENT,  package_name TEXT NOT NULL,  isDefaultFreezed INTEGER,  isSMFreezed INTEGER,  isUserForceStopped INTEGER,  lastUsedTime INTEGER,  versionMgmt TEXT,  extras TEXT,  resetTime TEXT);"

.field private static final DB_NAME:Ljava/lang/String; = "sm.db"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.sm/databases/"

.field private static final DB_TABLE:Ljava/lang/String; = "AppFreezer"

.field private static final DB_VERSION:I = 0x1

.field private static final EXTRAS:Ljava/lang/String; = "extras"

.field private static final IS_DEFAULT_FREEZED:Ljava/lang/String; = "isDefaultFreezed"

.field private static final IS_SM_FREEZED:Ljava/lang/String; = "isSMFreezed"

.field private static final IS_USER_FORCESTOPPED:Ljava/lang/String; = "isUserForceStopped"

.field private static final LAST_USED_TIME:Ljava/lang/String; = "lastUsedTime"

.field private static final PACKAGENAME:Ljava/lang/String; = "package_name"

.field private static final RESETTIME:Ljava/lang/String; = "resetTime"

.field static final TAG:Ljava/lang/String; = "SPCMDataBaseManager"

.field private static final VERSION_MGMT:Ljava/lang/String; = "versionMgmt"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private dbClose()V
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 320
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDbHelper:Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;->close()V

    .line 321
    return-void
.end method

.method private dbDelete(Ljava/lang/String;)J
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 325
    const-wide/16 v0, -0x1

    .line 326
    .local v0, "ret":J
    iget-object v2, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "AppFreezer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package_name=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    int-to-long v0, v2

    .line 327
    return-wide v0
.end method

.method private dbOpen()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 311
    const-string v0, "/data/data/com.samsung.android.sm/databases/sm.db"

    .line 312
    .local v0, "myPath":Ljava/lang/String;
    new-instance v1, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;

    iget-object v2, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;-><init>(Lcom/android/server/am/SPCMDataBaseManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDbHelper:Lcom/android/server/am/SPCMDataBaseManager$DatabaseHelper;

    .line 313
    iget-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.WRITE_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/SPCMDataBaseManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 316
    return-void
.end method

.method private dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "strResetTime"    # Ljava/lang/String;
    .param p3, "strExtras"    # Ljava/lang/String;
    .param p4, "bNoti"    # Z

    .prologue
    const/4 v6, 0x0

    .line 331
    const-string v7, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 332
    .local v0, "SMART_MGR_URI":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 334
    .local v2, "nRet":I
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 336
    .local v5, "values":Landroid/content/ContentValues;
    if-nez p1, :cond_10

    .line 357
    :goto_f
    return v6

    .line 339
    :cond_10
    const-string v7, "extras"

    invoke-virtual {v5, v7, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v7, "resetTime"

    invoke-virtual {v5, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string/jumbo v3, "package_name=? and (extras!=? or extras is null)"

    .line 343
    .local v3, "selection":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v6, 0x1

    const-string v7, "9"

    aput-object v7, v4, v6

    .line 345
    .local v4, "selectionArgs":[Ljava/lang/String;
    if-nez p4, :cond_3b

    .line 346
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v6

    const-string v7, "ignore_notify"

    const-string/jumbo v8, "true"

    invoke-virtual {v6, v7, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 350
    :cond_3b
    :try_start_3b
    iget-object v6, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, v0, v5, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_44} :catch_47

    move-result v2

    :goto_45
    move v6, v2

    .line 357
    goto :goto_f

    .line 352
    :catch_47
    move-exception v1

    .line 353
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "SPCMDataBaseManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception with contentResolver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method


# virtual methods
.method public GetLockingTimeFromSM()I
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 208
    const-string v0, "content://com.samsung.android.sm/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 209
    .local v1, "SMART_MGR_SETTING_URI":Landroid/net/Uri;
    const-string v6, "key"

    .line 210
    .local v6, "SETTING_KEY":Ljava/lang/String;
    const-string/jumbo v7, "value"

    .line 211
    .local v7, "SETTING_VALUE":Ljava/lang/String;
    const/4 v10, -0x1

    .line 213
    .local v10, "nLockingTime":I
    const/4 v8, 0x0

    .line 216
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_f
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_29} :catch_48

    move-result-object v8

    .line 224
    :goto_2a
    if-eqz v8, :cond_6c

    .line 225
    :cond_2c
    :goto_2c
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 226
    const-string/jumbo v0, "spcm_locking_time"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 227
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_2c

    .line 219
    :catch_48
    move-exception v9

    .line 220
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a

    .line 231
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_69
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_6c
    return v10
.end method

.method public GetPackgeInfofromSM(Landroid/util/ArrayMap;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mSPCMDBfromSMList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;>;"
    const/4 v12, 0x7

    const/4 v11, 0x6

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 164
    new-instance v9, Landroid/util/ArrayMap;

    invoke-direct {v9}, Landroid/util/ArrayMap;-><init>()V

    .line 165
    .local v9, "mTempList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;>;"
    invoke-virtual {v9, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 166
    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    .line 168
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    .local v1, "SMART_MGR_URI":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v6, 0x0

    .line 173
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "resetTime"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_58} :catch_9a

    move-result-object v6

    .line 182
    :goto_59
    if-eqz v6, :cond_c1

    .line 183
    :cond_5b
    :goto_5b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_be

    .line 184
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 185
    new-instance v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    invoke-direct {v8, p0}, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;-><init>(Lcom/android/server/am/SPCMDataBaseManager;)V

    .line 187
    .local v8, "mSPCMDBfromSM":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    .line 188
    iput v10, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    .line 189
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    .line 190
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    .line 192
    iget-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 193
    iget-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    iget-boolean v0, v0, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    iput-boolean v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    .line 199
    :goto_94
    iget-object v0, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5b

    .line 177
    .end local v8    # "mSPCMDBfromSM":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :catch_9a
    move-exception v7

    .line 178
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_59

    .line 196
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "mSPCMDBfromSM":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :cond_bb
    iput-boolean v10, v8, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    goto :goto_94

    .line 203
    .end local v8    # "mSPCMDBfromSM":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    :cond_be
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_c1
    return-void
.end method

.method public UpdateDBAll(Landroid/util/ArrayMap;JJ)Z
    .registers 16
    .param p2, "lCurTime"    # J
    .param p4, "lLockingTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;JJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "mSPCMDBfromSMList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 62
    const/4 v0, 0x1

    .line 64
    .local v0, "bRet":Z
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_239

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 65
    .local v3, "strPkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 67
    .local v2, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    if-eqz v2, :cond_b

    .line 71
    const-string v4, "9"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 72
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 73
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", is in the whitelist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 77
    :cond_4d
    const-string v4, "1"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    iget v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    if-nez v4, :cond_7f

    .line 78
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 79
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipped(not changed)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 83
    :cond_7f
    const-string v4, "1"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e9

    .line 84
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-eqz v4, :cond_c4

    .line 85
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    .line 86
    const-string v4, "0"

    iput-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    .line 87
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 88
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DB updated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 91
    :cond_c4
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 92
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 98
    :cond_e9
    const-string v4, "0"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_155

    iget-boolean v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    if-eqz v4, :cond_155

    .line 99
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-direct {p0, v3, v4, v5, v7}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-eqz v4, :cond_130

    .line 100
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    .line 101
    iput-boolean v7, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    .line 102
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 103
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DB updated(ResetTime)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 106
    :cond_130
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 107
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error(ResetTime)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 113
    :cond_155
    const-string v4, "0"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_188

    iget v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->AppFreezeScore:I

    if-lez v4, :cond_188

    .line 114
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 115
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipped(not changed)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 120
    :cond_188
    const-string v4, "0"

    iget-object v5, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f6

    iget-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, p2, v4

    cmp-long v4, v4, p4

    if-lez v4, :cond_1f6

    .line 121
    iget-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    const-string v5, "1"

    invoke-direct {p0, v3, v4, v5, v8}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v4

    if-eqz v4, :cond_1d1

    .line 122
    const-string v4, "1"

    iput-object v4, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    .line 123
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 124
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", DB updated"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 127
    :cond_1d1
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 128
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 134
    :cond_1f6
    sget-boolean v4, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v4, :cond_b

    .line 135
    const-string v4, "SPCMDataBaseManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Unknown : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v2, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->bNeedUpdateResetTime:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 138
    .end local v2    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .end local v3    # "strPkgName":Ljava/lang/String;
    :cond_239
    return v0
.end method

.method public UpdateDBSpecific(Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;J)V
    .registers 10
    .param p1, "mSPCMDBfromSM"    # Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .param p2, "lCurTime"    # J

    .prologue
    .line 46
    iget-object v1, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    const/4 v4, 0x1

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    .line 48
    .local v0, "nRet":I
    if-eqz v0, :cond_3f

    .line 49
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    .line 50
    const-string v1, "0"

    iput-object v1, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    .line 52
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_3e

    .line 53
    const-string v1, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", DB updated(by user)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_3e
    :goto_3e
    return-void

    .line 56
    :cond_3f
    sget-boolean v1, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v1, :cond_3e

    .line 57
    const-string v1, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e
.end method

.method public UpdateResetTime(Landroid/util/ArrayMap;J)V
    .registers 10
    .param p2, "lResetTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "mSPCMDBfromSMList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 143
    .local v2, "strPkgName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;

    .line 145
    .local v1, "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    const-string v3, "9"

    iget-object v4, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 146
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_8

    .line 147
    const-string v3, "SPCMDataBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is in the whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 152
    :cond_48
    iget-object v3, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    if-eqz v3, :cond_56

    const-string v3, "2"

    iget-object v4, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 153
    :cond_56
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/am/SPCMDataBaseManager;->dbUpdateResetTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v3

    if-eqz v3, :cond_8

    .line 154
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strResetTime:Ljava/lang/String;

    .line 155
    const-string v3, "0"

    iput-object v3, v1, Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;->strExtras:Ljava/lang/String;

    .line 156
    sget-boolean v3, Lcom/android/server/am/SmartAdjustManager;->SAMP_DEBUG_SPCM:Z

    if-eqz v3, :cond_8

    .line 157
    const-string v3, "SPCMDataBaseManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpdateResetTime pkgName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", used!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 161
    .end local v1    # "spcmdbTemp":Lcom/android/server/am/SPCMDataBaseManager$SPCMDBfromSM;
    .end local v2    # "strPkgName":Ljava/lang/String;
    :cond_91
    return-void
.end method

.method public dumpSPCMDBLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 238
    const-string v0, "content://com.samsung.android.sm/AppFreezer"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 240
    .local v1, "SMART_MGR_URI":Landroid/net/Uri;
    const-string v0, "ACTIVITY MANAGER SPCM DataBase (dumpsys activity spcm db)"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v6, 0x0

    .line 246
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_18
    iget-object v0, p0, Lcom/android/server/am/SPCMDataBaseManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "isDefaultFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "isSMFreezed"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "isUserForceStopped"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "lastUsedTime"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "versionMgmt"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "extras"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "resetTime"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_53} :catch_82

    move-result-object v6

    .line 254
    :goto_54
    if-eqz v6, :cond_a3

    .line 255
    :cond_56
    :goto_56
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 256
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 257
    const-string v0, "\tPackageName: %s, %s, %s"

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v8

    const/4 v3, 0x6

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v9

    const/4 v3, 0x7

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_56

    .line 249
    :catch_82
    move-exception v7

    .line 250
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "SPCMDataBaseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception with contentResolver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_54

    .line 262
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_a3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    return-void
.end method
