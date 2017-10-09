.class Lcom/android/server/LpnetManagerService$DBManager;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final COMMA_SEP:Ljava/lang/String; = ","

.field private static final DB_CREATE_LIST:Ljava/lang/String; = " CREATE TABLE AppFreezer (id INTEGER PRIMARY KEY AUTOINCREMENT,  package_name TEXT NOT NULL,  isDefaultFreezed INTEGER,  isSMFreezed INTEGER,  isUserForceStopped INTEGER,  lastUsedTime INTEGER,  versionMgmt TEXT,  extras TEXT);"

.field private static final DB_NAME:Ljava/lang/String; = "sm.db"

.field private static final DB_PATH:Ljava/lang/String; = "/data/data/com.samsung.android.sm/databases/"

.field private static final DB_TABLE:Ljava/lang/String; = "AppFreezer"

.field private static final DB_VERSION:I = 0x1

.field private static final INT_TYPE:Ljava/lang/String; = " INTEGER"

.field private static final NOT_NULL:Ljava/lang/String; = " NOT NULL"

.field private static final TEXT_TYPE:Ljava/lang/String; = " TEXT"


# instance fields
.field private final mCtx:Landroid/content/Context;

.field private mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LpnetManagerService;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 2174
    iput-object p1, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2175
    iput-object p2, p0, Lcom/android/server/LpnetManagerService$DBManager;->mCtx:Landroid/content/Context;

    .line 2176
    return-void
.end method


# virtual methods
.method public dbAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 15
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 2240
    const-wide/16 v2, -0x1

    .line 2242
    .local v2, "ret":J
    invoke-virtual {p0, p1}, Lcom/android/server/LpnetManagerService$DBManager;->dbRead(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2243
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_17

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_17

    .line 2244
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/LpnetManagerService$DBManager;->dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    int-to-long v2, v4

    .line 2277
    :goto_13
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2278
    return-wide v2

    .line 2248
    :cond_17
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2249
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "package_name"

    invoke-virtual {v1, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    iget-object v4, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mDefaultPackages:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$1200(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2251
    const-string v4, "isDefaultFreezed"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    :goto_35
    iget-object v4, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2256
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSMPackages:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$800(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    .line 2257
    const-string v4, "isSMFreezed"

    const-string v6, "1"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2261
    :goto_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_3c .. :try_end_50} :catchall_97

    .line 2263
    const-string v4, "isUserForceStopped"

    invoke-virtual {v1, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    const-string v4, "lastUsedTime"

    invoke-virtual {v1, v4, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const-string/jumbo v4, "versionMgmt"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    iget-object v4, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mPkgLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$1000(Lcom/android/server/LpnetManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 2267
    :try_start_69
    iget-object v4, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mSPCMPackages:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/LpnetManagerService;->access$700(Lcom/android/server/LpnetManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9a

    .line 2268
    const-string v4, "extras"

    const-string v6, "1"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    :goto_7c
    monitor-exit v5
    :try_end_7d
    .catchall {:try_start_69 .. :try_end_7d} :catchall_a2

    .line 2275
    iget-object v4, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "AppFreezer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_13

    .line 2253
    :cond_87
    const-string v4, "isDefaultFreezed"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 2259
    :cond_8f
    :try_start_8f
    const-string v4, "isSMFreezed"

    const-string v6, "0"

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    .line 2261
    :catchall_97
    move-exception v4

    monitor-exit v5
    :try_end_99
    .catchall {:try_start_8f .. :try_end_99} :catchall_97

    throw v4

    .line 2270
    :cond_9a
    :try_start_9a
    const-string v4, "extras"

    const-string v6, ""

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7c

    .line 2272
    :catchall_a2
    move-exception v4

    monitor-exit v5
    :try_end_a4
    .catchall {:try_start_9a .. :try_end_a4} :catchall_a2

    throw v4
.end method

.method public dbClose()V
    .registers 2

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 2228
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;->close()V

    .line 2229
    return-void
.end method

.method public dbDelete(Ljava/lang/String;)J
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2233
    const-wide/16 v0, -0x1

    .line 2234
    .local v0, "ret":J
    iget-object v2, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

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

    .line 2235
    return-wide v0
.end method

.method public dbOpen()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2218
    const-string v0, "/data/data/com.samsung.android.sm/databases/sm.db"

    .line 2219
    .local v0, "myPath":Ljava/lang/String;
    new-instance v1, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    iget-object v2, p0, Lcom/android/server/LpnetManagerService$DBManager;->mCtx:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;-><init>(Lcom/android/server/LpnetManagerService$DBManager;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    .line 2220
    iget-object v1, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.permission.READ_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2221
    iget-object v1, p0, Lcom/android/server/LpnetManagerService$DBManager;->this$0:Lcom/android/server/LpnetManagerService;

    # getter for: Lcom/android/server/LpnetManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/LpnetManagerService;->access$500(Lcom/android/server/LpnetManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.permission.WRITE_SM_DATA"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 2224
    return-void
.end method

.method public dbRead(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2310
    const/4 v0, 0x7

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "package_name"

    aput-object v0, v2, v6

    const-string v0, "isDefaultFreezed"

    aput-object v0, v2, v7

    const/4 v0, 0x2

    const-string v1, "isSMFreezed"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "isUserForceStopped"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "lastUsedTime"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "versionMgmt"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "extras"

    aput-object v1, v2, v0

    .line 2321
    .local v2, "projection":[Ljava/lang/String;
    const-string/jumbo v3, "package_name=?"

    .line 2323
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v6

    .line 2326
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "AppFreezer"

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2327
    .local v8, "c":Landroid/database/Cursor;
    if-eqz v8, :cond_3f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2328
    :cond_3f
    return-object v8
.end method

.method public dbReadAll()Landroid/database/Cursor;
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 2338
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "AppFreezer"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public dbUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "isDefaultFreezed"    # Ljava/lang/String;
    .param p3, "isSmFreezed"    # Ljava/lang/String;
    .param p4, "isUserForceStopped"    # Ljava/lang/String;
    .param p5, "lastUsedTime"    # Ljava/lang/String;
    .param p6, "versionMgmt"    # Ljava/lang/String;
    .param p7, "extras"    # Ljava/lang/String;

    .prologue
    .line 2284
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2285
    .local v2, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_d

    const-string/jumbo v3, "package_name"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2286
    :cond_d
    if-eqz p2, :cond_14

    const-string v3, "isDefaultFreezed"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2287
    :cond_14
    if-eqz p3, :cond_1b

    const-string v3, "isSMFreezed"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    :cond_1b
    if-eqz p4, :cond_22

    const-string v3, "isUserForceStopped"

    invoke-virtual {v2, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2289
    :cond_22
    if-eqz p5, :cond_29

    const-string v3, "lastUsedTime"

    invoke-virtual {v2, v3, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2290
    :cond_29
    if-eqz p6, :cond_31

    const-string/jumbo v3, "versionMgmt"

    invoke-virtual {v2, v3, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    :cond_31
    if-eqz p7, :cond_38

    const-string v3, "extras"

    invoke-virtual {v2, v3, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2294
    :cond_38
    const-string/jumbo v0, "package_name=?"

    .line 2296
    .local v0, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    .line 2299
    .local v1, "selectionArgs":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "AppFreezer"

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public dbUpgrade(II)V
    .registers 5
    .param p1, "oldVersion"    # I
    .param p2, "newVersion"    # I

    .prologue
    .line 2342
    iget-object v0, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDbHelper:Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;

    iget-object v1, p0, Lcom/android/server/LpnetManagerService$DBManager;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/LpnetManagerService$DBManager$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 2343
    return-void
.end method
