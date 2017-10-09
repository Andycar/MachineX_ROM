.class public Lcom/android/server/enterprise/application/ApplicationIconDb;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ApplicationIconDb.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "dmappmgr.db"

.field private static final DATABASE_VERSION:I = 0x2

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final IMAGE_DATA:Ljava/lang/String; = "imagedata"

.field public static final NAME_OWNER:Ljava/lang/String; = "nameowner"

.field public static final NEW_NAME:Ljava/lang/String; = "newname"

.field public static final PKG_NAME:Ljava/lang/String; = "pkgname"

.field public static final TABLE_NAME:Ljava/lang/String; = "ApplicationIcon"

.field private static final TAG:Ljava/lang/String; = "ApplicationIconDb"

.field public static final USER_ID:Ljava/lang/String; = "userid"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string v0, "dmappmgr.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 75
    return-void
.end method

.method private insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 468
    const-string v2, "ApplicationIcon"

    invoke-static {p1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_92

    .line 471
    :try_start_8
    const-string v2, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ApplicationIcon"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "newname"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "TEXT"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 474
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "userid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "INT"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "insertUserId":Ljava/lang/String;
    const-string v2, "%s DEFAULT %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 477
    const-string v2, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ApplicationIcon"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 481
    const-string v2, "ALTER TABLE %s ADD COLUMN %s;"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ApplicationIcon"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "%s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "nameowner"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "INT"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_92
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_92} :catch_93

    .line 489
    .end local v1    # "insertUserId":Ljava/lang/String;
    :cond_92
    :goto_92
    return-void

    .line 484
    :catch_93
    move-exception v0

    .line 485
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "ApplicationIconDb"

    const-string v3, "::insertNewColumns: Exception while table is upgrading "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_92
.end method

.method private static isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .registers 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 426
    const/4 v1, 0x0

    .line 427
    .local v1, "exists":Z
    if-eqz p0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2c

    .line 429
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

    .line 430
    const/4 v1, 0x1

    .line 436
    :cond_2c
    :goto_2c
    return v1

    .line 431
    :catch_2d
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 433
    const-string v2, "ApplicationIconDb"

    const-string v3, "::isTableExists:Table Does not exists "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method


# virtual methods
.method clearChangedApplicationName(I)Ljava/util/ArrayList;
    .registers 11
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v3, "deletedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 257
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 259
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 260
    if-eqz v2, :cond_b6

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ApplicationIcon WHERE nameowner = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "imagedata"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IS NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 265
    const-string/jumbo v6, "pkgname"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    .local v0, "columnIndex":I
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 268
    :cond_44
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_44

    .line 273
    :cond_51
    const-string v6, "ApplicationIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nameowner = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "imagedata"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IS NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 277
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v5, "values":Landroid/content/ContentValues;
    const-string v6, "newname"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 279
    const-string v6, "nameowner"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 280
    const-string v6, "ApplicationIcon"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "nameowner = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "imagedata"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " IS NOT NULL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_b6} :catch_bc
    .catchall {:try_start_7 .. :try_end_b6} :catchall_c6

    .line 286
    .end local v0    # "columnIndex":I
    .end local v5    # "values":Landroid/content/ContentValues;
    :cond_b6
    if-eqz v1, :cond_bb

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 290
    :cond_bb
    :goto_bb
    return-object v3

    .line 283
    :catch_bc
    move-exception v4

    .line 284
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_bd
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c6

    .line 286
    if-eqz v1, :cond_bb

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_bb

    .line 286
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_c6
    move-exception v6

    if-eqz v1, :cond_cc

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_cc
    throw v6
.end method

.method deleteApplicationIcon(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 120
    const/4 v5, 0x0

    .line 121
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 122
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 124
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_ce
    .catchall {:try_start_3 .. :try_end_6} :catchall_d8

    move-result-object v2

    .line 125
    if-nez v2, :cond_10

    .line 126
    const/4 v7, 0x0

    .line 156
    if-eqz v1, :cond_f

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 161
    :cond_f
    :goto_f
    return v7

    .line 128
    :cond_10
    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "userid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 133
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_90

    .line 134
    const-string v7, "newname"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "newName":Ljava/lang/String;
    if-eqz v4, :cond_98

    .line 136
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 137
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "imagedata"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 138
    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "userid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_8c} :catch_ce
    .catchall {:try_start_10 .. :try_end_8c} :catchall_d8

    move-result v0

    .line 141
    .local v0, "count":I
    if-lez v0, :cond_90

    .line 142
    const/4 v5, 0x1

    .line 156
    .end local v0    # "count":I
    .end local v4    # "newName":Ljava/lang/String;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_90
    :goto_90
    if-eqz v1, :cond_95

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_95
    :goto_95
    move v7, v5

    .line 161
    goto/16 :goto_f

    .line 144
    .restart local v4    # "newName":Ljava/lang/String;
    :cond_98
    :try_start_98
    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "userid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_c9} :catch_ce
    .catchall {:try_start_98 .. :try_end_c9} :catchall_d8

    move-result v0

    .line 149
    .restart local v0    # "count":I
    if-lez v0, :cond_90

    .line 150
    const/4 v5, 0x1

    goto :goto_90

    .line 153
    .end local v0    # "count":I
    .end local v4    # "newName":Ljava/lang/String;
    :catch_ce
    move-exception v3

    .line 154
    .local v3, "e":Ljava/lang/Exception;
    :try_start_cf
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d8

    .line 156
    if-eqz v1, :cond_95

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_95

    .line 156
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_d8
    move-exception v7

    if-eqz v1, :cond_de

    .line 157
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_de
    throw v7
.end method

.method deleteApplicationName(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 210
    const/4 v5, 0x0

    .line 211
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 212
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v1, 0x0

    .line 214
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_6} :catch_d0
    .catchall {:try_start_3 .. :try_end_6} :catchall_da

    move-result-object v2

    .line 215
    if-nez v2, :cond_10

    .line 216
    const/4 v7, 0x0

    .line 247
    if-eqz v1, :cond_f

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 251
    :cond_f
    :goto_f
    return v7

    .line 218
    :cond_10
    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "nameowner"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_93

    .line 224
    const-string v7, "imagedata"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 225
    .local v4, "icon":[B
    if-eqz v4, :cond_9b

    .line 226
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 227
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "newname"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 228
    const-string v7, "nameowner"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 229
    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "nameowner"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_8f} :catch_d0
    .catchall {:try_start_10 .. :try_end_8f} :catchall_da

    move-result v0

    .line 232
    .local v0, "count":I
    if-lez v0, :cond_93

    .line 233
    const/4 v5, 0x1

    .line 247
    .end local v0    # "count":I
    .end local v4    # "icon":[B
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_93
    :goto_93
    if-eqz v1, :cond_98

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_98
    :goto_98
    move v7, v5

    .line 251
    goto/16 :goto_f

    .line 235
    .restart local v4    # "icon":[B
    :cond_9b
    :try_start_9b
    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "nameowner"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9b .. :try_end_cb} :catch_d0
    .catchall {:try_start_9b .. :try_end_cb} :catchall_da

    move-result v0

    .line 240
    .restart local v0    # "count":I
    if-lez v0, :cond_93

    .line 241
    const/4 v5, 0x1

    goto :goto_93

    .line 244
    .end local v0    # "count":I
    .end local v4    # "icon":[B
    :catch_d0
    move-exception v3

    .line 245
    .local v3, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_d1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_d4
    .catchall {:try_start_d1 .. :try_end_d4} :catchall_da

    .line 247
    if-eqz v1, :cond_98

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_98

    .line 247
    .end local v3    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_da
    move-exception v7

    if-eqz v1, :cond_e0

    .line 248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e0
    throw v7
.end method

.method getApplicationIcon(Ljava/lang/String;I)[B
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 368
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v0, 0x0

    .line 370
    .local v0, "bitmapData":[B
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_58
    .catchall {:try_start_4 .. :try_end_7} :catchall_7b

    move-result-object v2

    .line 371
    if-nez v2, :cond_10

    .line 388
    if-eqz v1, :cond_f

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 391
    :cond_f
    :goto_f
    return-object v4

    .line 374
    :cond_10
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 378
    if-eqz v1, :cond_51

    .line 379
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 380
    const-string v4, "imagedata"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_50} :catch_58
    .catchall {:try_start_10 .. :try_end_50} :catchall_7b

    move-result-object v0

    .line 388
    :cond_51
    if-eqz v1, :cond_56

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_56
    :goto_56
    move-object v4, v0

    .line 391
    goto :goto_f

    .line 384
    :catch_58
    move-exception v3

    .line 385
    .local v3, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationIcon  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_7b

    .line 388
    if-eqz v1, :cond_56

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_56

    .line 388
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_7b
    move-exception v4

    if-eqz v1, :cond_81

    .line 389
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v4
.end method

.method getApplicationIconChangedMap()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 294
    const/4 v1, 0x0

    .line 295
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 296
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v4, "mapChangedIcon":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_6e
    .catchall {:try_start_7 .. :try_end_a} :catchall_98

    move-result-object v2

    .line 300
    if-nez v2, :cond_13

    .line 323
    if-eqz v1, :cond_12

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_12
    :goto_12
    return-object v4

    .line 303
    :cond_13
    :try_start_13
    const-string v7, "SELECT * FROM ApplicationIcon WHERE imagedata IS NOT NULL"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_91

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_91

    .line 306
    :cond_22
    :goto_22
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 307
    const-string v7, "imagedata"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 308
    .local v0, "blob":[B
    if-eqz v0, :cond_22

    .line 309
    const-string/jumbo v7, "userid"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 310
    .local v6, "userId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_55

    .line 311
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_55
    const-string/jumbo v7, "pkgname"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6d} :catch_6e
    .catchall {:try_start_13 .. :try_end_6d} :catchall_98

    goto :goto_22

    .line 319
    .end local v0    # "blob":[B
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "userId":I
    :catch_6e
    move-exception v3

    .line 320
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6f
    const-string v7, "ApplicationIconDb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getApplicationIconChangedMap  : Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_6f .. :try_end_8b} :catchall_98

    .line 323
    if-eqz v1, :cond_12

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12

    .line 323
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_91
    if-eqz v1, :cond_12

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12

    .line 323
    :catchall_98
    move-exception v7

    if-eqz v1, :cond_9e

    .line 324
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9e
    throw v7
.end method

.method getApplicationName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 398
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    .line 400
    .local v3, "newName":Ljava/lang/String;
    :try_start_4
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_58
    .catchall {:try_start_4 .. :try_end_7} :catchall_7b

    move-result-object v1

    .line 402
    if-nez v1, :cond_10

    .line 419
    if-eqz v0, :cond_f

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 422
    :cond_f
    :goto_f
    return-object v4

    .line 405
    :cond_10
    :try_start_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "userid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_51

    .line 410
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 411
    const-string v4, "newname"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_50} :catch_58
    .catchall {:try_start_10 .. :try_end_50} :catchall_7b

    move-result-object v3

    .line 419
    :cond_51
    if-eqz v0, :cond_56

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_56
    :goto_56
    move-object v4, v3

    .line 422
    goto :goto_f

    .line 415
    :catch_58
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/Exception;
    :try_start_59
    const-string v4, "ApplicationIconDb"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getApplicationName  : Exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_7b

    .line 419
    if-eqz v0, :cond_56

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_56

    .line 419
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_7b
    move-exception v4

    if-eqz v0, :cond_81

    .line 420
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_81
    throw v4
.end method

.method getApplicationNameChangedMap()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 332
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v3, "mapChangedName":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_6e
    .catchall {:try_start_7 .. :try_end_a} :catchall_98

    move-result-object v1

    .line 336
    if-nez v1, :cond_13

    .line 359
    if-eqz v0, :cond_12

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_12
    :goto_12
    return-object v3

    .line 339
    :cond_13
    :try_start_13
    const-string v7, "SELECT * FROM ApplicationIcon WHERE newname IS NOT NULL"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_91

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_91

    .line 342
    :cond_22
    :goto_22
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 343
    const-string v7, "newname"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "newname":Ljava/lang/String;
    if-eqz v4, :cond_22

    .line 345
    const-string/jumbo v7, "userid"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 346
    .local v6, "userId":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_55

    .line 347
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    :cond_55
    const-string/jumbo v7, "pkgname"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 350
    .local v5, "pkgName":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6d} :catch_6e
    .catchall {:try_start_13 .. :try_end_6d} :catchall_98

    goto :goto_22

    .line 355
    .end local v4    # "newname":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "userId":I
    :catch_6e
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    :try_start_6f
    const-string v7, "ApplicationIconDb"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getApplicationNameChangedMap  : Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catchall {:try_start_6f .. :try_end_8b} :catchall_98

    .line 359
    if-eqz v0, :cond_12

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_12

    .line 359
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_91
    if-eqz v0, :cond_12

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_12

    .line 359
    :catchall_98
    move-exception v7

    if-eqz v0, :cond_9e

    .line 360
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9e
    throw v7
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 441
    const-string v2, "ApplicationIcon"

    invoke-static {p1, v2}, Lcom/android/server/enterprise/application/ApplicationIconDb;->isTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 443
    :try_start_8
    const-string v1, " (_id integer primary key autoincrement, pkgname text, imagedata BLOB, newname text, userid int, nameowner int);"

    .line 450
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create table ApplicationIcon"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 451
    const-string v2, "ApplicationIconDb"

    const-string v3, "::onCreate: Table is Created "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Landroid/database/SQLException; {:try_start_8 .. :try_end_27} :catch_28

    .line 460
    .end local v1    # "s":Ljava/lang/String;
    :goto_27
    return-void

    .line 453
    :catch_28
    move-exception v0

    .line 454
    .local v0, "e":Landroid/database/SQLException;
    const-string v2, "ApplicationIconDb"

    const-string v3, "::onCreate: Exception while table is creating "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V

    goto :goto_27

    .line 458
    .end local v0    # "e":Landroid/database/SQLException;
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationIconDb;->insertNewColumns(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_27
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 465
    return-void
.end method

.method updateApplicationIcon(Ljava/lang/String;[BI)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "imageData"    # [B
    .param p3, "userId"    # I

    .prologue
    .line 79
    const/4 v5, 0x0

    .line 80
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 81
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 83
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b4
    .catchall {:try_start_3 .. :try_end_6} :catchall_be

    move-result-object v3

    .line 84
    if-nez v3, :cond_10

    .line 85
    const/4 v7, 0x0

    .line 113
    if-eqz v2, :cond_f

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_f
    :goto_f
    return v7

    .line 87
    :cond_10
    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "userid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 92
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 93
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "imagedata"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 95
    const-string v7, "ApplicationIcon"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "userid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v7, v6, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_80} :catch_b4
    .catchall {:try_start_10 .. :try_end_80} :catchall_be

    move-result v0

    .line 98
    .local v0, "count":I
    if-lez v0, :cond_84

    .line 99
    const/4 v5, 0x1

    .line 113
    .end local v0    # "count":I
    :cond_84
    :goto_84
    if-eqz v2, :cond_89

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_89
    :goto_89
    move v7, v5

    .line 116
    goto :goto_f

    .line 101
    :cond_8b
    :try_start_8b
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 102
    .restart local v6    # "values":Landroid/content/ContentValues;
    const-string/jumbo v7, "pkgname"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v7, "imagedata"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    const-string/jumbo v7, "userid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v7, "ApplicationIcon"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ab} :catch_b4
    .catchall {:try_start_8b .. :try_end_ab} :catchall_be

    move-result-wide v0

    .line 106
    .local v0, "count":J
    const-wide/16 v8, 0x0

    cmp-long v7, v8, v0

    if-gez v7, :cond_84

    .line 107
    const/4 v5, 0x1

    goto :goto_84

    .line 110
    .end local v0    # "count":J
    .end local v6    # "values":Landroid/content/ContentValues;
    :catch_b4
    move-exception v4

    .line 111
    .local v4, "e":Ljava/lang/Exception;
    :try_start_b5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_be

    .line 113
    if-eqz v2, :cond_89

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_89

    .line 113
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_be
    move-exception v7

    if-eqz v2, :cond_c4

    .line 114
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c4
    throw v7
.end method

.method updateApplicationName(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .prologue
    .line 166
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 167
    .local v6, "userId":I
    const/4 v5, 0x0

    .line 168
    .local v5, "success":Z
    const/4 v2, 0x0

    .line 169
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v3, 0x0

    .line 171
    .local v3, "db":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_7
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ApplicationIconDb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_a} :catch_cb
    .catchall {:try_start_7 .. :try_end_a} :catchall_d5

    move-result-object v3

    .line 172
    if-nez v3, :cond_14

    .line 173
    const/4 v8, 0x0

    .line 203
    if-eqz v2, :cond_13

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_13
    :goto_13
    return v8

    .line 175
    :cond_14
    :try_start_14
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SELECT * FROM ApplicationIcon WHERE pkgname = \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' AND "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "userid"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 180
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_99

    .line 181
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 182
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "newname"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v8, "nameowner"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 184
    const-string v8, "ApplicationIcon"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkgname = \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' AND "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "userid"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v3, v8, v7, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_8d} :catch_cb
    .catchall {:try_start_14 .. :try_end_8d} :catchall_d5

    move-result v0

    .line 187
    .local v0, "count":I
    if-lez v0, :cond_91

    .line 188
    const/4 v5, 0x1

    .line 203
    .end local v0    # "count":I
    :cond_91
    :goto_91
    if-eqz v2, :cond_96

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .end local v7    # "values":Landroid/content/ContentValues;
    :cond_96
    :goto_96
    move v8, v5

    .line 206
    goto/16 :goto_13

    .line 190
    :cond_99
    :try_start_99
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .restart local v7    # "values":Landroid/content/ContentValues;
    const-string/jumbo v8, "pkgname"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const-string v8, "newname"

    invoke-virtual {v7, v8, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string/jumbo v8, "userid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v8, "nameowner"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v8, "ApplicationIcon"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_99 .. :try_end_c2} :catch_cb
    .catchall {:try_start_99 .. :try_end_c2} :catchall_d5

    move-result-wide v0

    .line 196
    .local v0, "count":J
    const-wide/16 v8, 0x0

    cmp-long v8, v8, v0

    if-gez v8, :cond_91

    .line 197
    const/4 v5, 0x1

    goto :goto_91

    .line 200
    .end local v0    # "count":J
    .end local v7    # "values":Landroid/content/ContentValues;
    :catch_cb
    move-exception v4

    .line 201
    .local v4, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_cc
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_cf
    .catchall {:try_start_cc .. :try_end_cf} :catchall_d5

    .line 203
    if-eqz v2, :cond_96

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_96

    .line 203
    .end local v4    # "e":Landroid/database/sqlite/SQLiteException;
    :catchall_d5
    move-exception v8

    if-eqz v2, :cond_db

    .line 204
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_db
    throw v8
.end method
