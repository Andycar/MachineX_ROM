.class public Lcom/android/server/SdpPolicyManager;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SdpPolicyManager.java"


# static fields
.field private static final COLUMN_COLUMNNAME:Ljava/lang/String; = "columnname"

.field private static final COLUMN_CONTAINERID:Ljava/lang/String; = "containerid"

.field private static final COLUMN_DBPATH:Ljava/lang/String; = "dbpath"

.field private static final COLUMN_FILEPATH:Ljava/lang/String; = "filepath"

.field private static final COLUMN_ID:Ljava/lang/String; = "id"

.field private static final COLUMN_TABLENAME:Ljava/lang/String; = "tablename"

.field private static final COLUMN_UID:Ljava/lang/String; = "uid"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final DATABSE_NAME:Ljava/lang/String; = "SDPPolicyDB.db"

.field private static final TABLE_DBPOLICY:Ljava/lang/String; = "dbpolicy"

.field private static final TABLE_FILEPOLICY:Ljava/lang/String; = "filepolicy"

.field private static final TAG:Ljava/lang/String; = "SdpPolicyManager"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    const-string v0, "SDPPolicyDB.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    return-void
.end method


# virtual methods
.method public addDBPolicy(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "dbPath"    # Ljava/lang/String;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/server/SdpPolicyManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 78
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v2, "dbpath"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string/jumbo v2, "tablename"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v2, "columnname"

    invoke-virtual {v1, v2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v2, "dbpolicy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 88
    return-void
.end method

.method public addFilePolicy(IILjava/lang/String;)V
    .registers 8
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .param p3, "filePath"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/android/server/SdpPolicyManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 62
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "containerid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string/jumbo v2, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 65
    const-string v2, "filepath"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "filepolicy"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 68
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 70
    return-void
.end method

.method public getSensitiveDBs(II)Ljava/util/List;
    .registers 15
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 120
    .local v8, "sensitiveDBs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v7, "SELECT DISTINCT containerid,uid,dbpath,tablename,columnname FROM dbpolicy"

    .line 122
    .local v7, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/SdpPolicyManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 123
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    invoke-virtual {v1, v7, v9}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 125
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_78

    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_78

    .line 127
    :cond_18
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 128
    .local v3, "lcontainerId":I
    const/4 v9, 0x1

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 129
    .local v6, "luid":I
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "ldbpath":Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "ltablename":Ljava/lang/String;
    const/4 v9, 0x4

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "lcolumnname":Ljava/lang/String;
    if-ne v3, p1, :cond_72

    if-ne v6, p2, :cond_72

    .line 134
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    const-string v9, "SdpPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " adding to DBlist :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_72
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_75
    .catchall {:try_start_12 .. :try_end_75} :catchall_7f

    move-result v9

    if-nez v9, :cond_18

    .line 142
    .end local v2    # "lcolumnname":Ljava/lang/String;
    .end local v3    # "lcontainerId":I
    .end local v4    # "ldbpath":Ljava/lang/String;
    .end local v5    # "ltablename":Ljava/lang/String;
    .end local v6    # "luid":I
    :cond_78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 145
    return-object v8

    .line 142
    :catchall_7f
    move-exception v9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v9
.end method

.method public getSensitiveFiles(II)Ljava/util/List;
    .registers 13
    .param p1, "containerId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 93
    .local v6, "sensitiveFiles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "SELECT DISTINCT containerid,uid,filepath FROM filepolicy"

    .line 95
    .local v5, "query":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/SdpPolicyManager;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 96
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v7, 0x0

    invoke-virtual {v1, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 98
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_54

    :try_start_12
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_54

    .line 100
    :cond_18
    const/4 v7, 0x0

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 101
    .local v2, "lcontainerId":I
    const/4 v7, 0x1

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 102
    .local v4, "luid":I
    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "lfilepath":Ljava/lang/String;
    if-ne v2, p1, :cond_4e

    if-ne v4, p2, :cond_4e

    .line 104
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    const-string v7, "SdpPolicyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " adding to Filelist :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_4e
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_51
    .catchall {:try_start_12 .. :try_end_51} :catchall_5b

    move-result v7

    if-nez v7, :cond_18

    .line 110
    .end local v2    # "lcontainerId":I
    .end local v3    # "lfilepath":Ljava/lang/String;
    .end local v4    # "luid":I
    :cond_54
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 112
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 113
    return-object v6

    .line 110
    :catchall_5b
    move-exception v7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v7
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 35
    const-string v1, "CREATE TABLE filepolicy (id INTEGER PRIMARY KEY AUTOINCREMENT ,containerid INTEGER ,uid INTEGER ,filepath TEXT )"

    .line 40
    .local v1, "CREATE_FILE_POLICY_TABLE":Ljava/lang/String;
    const-string v0, "CREATE TABLE dbpolicy (id INTEGER PRIMARY KEY AUTOINCREMENT ,containerid INTEGER ,uid INTEGER ,dbpath TEXT ,tablename TEXT ,columnname TEXT )"

    .line 47
    .local v0, "CREATE_DB_POLICY_TABLE":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 55
    return-void
.end method
