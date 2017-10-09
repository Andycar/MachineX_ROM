.class public Lcom/android/server/enterprise/storage/ContainerStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ContainerStorageHelper.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string v0, "ContainerStorageHelper"

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mContainerDbErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 37
    const-string v2, "/data/system/container/databases/container.db"

    const/4 v3, 0x0

    const/16 v4, 0x9

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 38
    iput-object p1, p0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mContext:Landroid/content/Context;

    .line 39
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string v1, "Created container DB Helper with version 9"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)Lcom/android/server/enterprise/storage/ContainerStorageHelper;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mContainerDbErrorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 25
    const-class v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    if-nez v0, :cond_e

    .line 26
    new-instance v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    invoke-direct {v0, p0, p1}, Lcom/android/server/enterprise/storage/ContainerStorageHelper;-><init>(Landroid/content/Context;Landroid/database/DatabaseErrorHandler;)V

    sput-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;

    .line 28
    :cond_e
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->mInstance:Lcom/android/server/enterprise/storage/ContainerStorageHelper;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    .prologue
    .line 33
    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 34
    monitor-exit p0

    return-void

    .line 33
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 44
    sget-object v0, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate container DB Helper"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVer"    # I
    .param p3, "newVer"    # I

    .prologue
    .line 54
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUpgrade container DB Helper from version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const/4 v1, 0x2

    if-ge p2, v1, :cond_2b

    .line 56
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActive:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    :cond_2b
    const/4 v1, 0x5

    if-ge p2, v1, :cond_42

    .line 59
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActivePassExpired:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 62
    :try_start_33
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActiveAdminUid:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_38} :catch_61

    .line 68
    :goto_38
    :try_start_38
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerLockType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3d} :catch_6b

    .line 74
    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerType:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_42} :catch_75

    .line 79
    :cond_42
    :goto_42
    const/4 v1, 0x6

    if-ge p2, v1, :cond_4f

    .line 80
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableContainerActiveFailedPassAttemps:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->createTableCertificateManager:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    :cond_4f
    const/4 v1, 0x7

    if-ge p2, v1, :cond_57

    .line 85
    :try_start_52
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableScreenlock:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_52 .. :try_end_57} :catch_7f

    .line 90
    :cond_57
    :goto_57
    const/16 v1, 0x8

    if-ge p2, v1, :cond_60

    .line 92
    :try_start_5b
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerDBConstants;->upgradeTableFirmwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Throwable; {:try_start_5b .. :try_end_60} :catch_89

    .line 97
    :cond_60
    :goto_60
    return-void

    .line 63
    :catch_61
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: AdminUid field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    .line 69
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_6b
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3d

    .line 75
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_75
    move-exception v0

    .line 76
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Locktype field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42

    .line 86
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_7f
    move-exception v0

    .line 87
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Screenlock field was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 93
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_89
    move-exception v0

    .line 94
    .restart local v0    # "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onUpgrade: Firmware version was already created"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method select(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 16
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "columnsToSelect"    # [Ljava/lang/String;
    .param p3, "whereClause"    # Ljava/lang/String;
    .param p4, "orderBy"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 107
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 110
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    :try_start_d
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 111
    if-eqz v9, :cond_24

    .line 112
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_21

    move-object v1, v9

    .line 121
    :goto_20
    return-object v1

    .line 115
    :cond_21
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_24} :catch_26

    .line 121
    :cond_24
    :goto_24
    const/4 v1, 0x0

    goto :goto_20

    .line 117
    :catch_26
    move-exception v10

    .line 118
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/storage/ContainerStorageHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Database query Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method
