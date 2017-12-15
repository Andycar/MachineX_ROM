.class public abstract Landroid/database/sqlite/SQLiteSecureOpenHelper;
.super Ljava/lang/Object;
.source "SQLiteSecureOpenHelper.java"


# static fields
.field private static final DEBUG_STRICT_READONLY:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEnableWriteAheadLogging:Z

.field private final mErrorHandler:Landroid/database/DatabaseErrorHandler;

.field private final mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

.field private mIsInitializing:Z

.field private final mName:Ljava/lang/String;

.field private final mNewVersion:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-class v0, Landroid/database/sqlite/SQLiteSecureOpenHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I

    .prologue
    .line 65
    new-instance v5, Landroid/database/DefaultSecureDatabaseErrorHandler;

    invoke-direct {v5}, Landroid/database/DefaultSecureDatabaseErrorHandler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteSecureOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;
    .param p4, "version"    # I
    .param p5, "errorHandler"    # Landroid/database/DatabaseErrorHandler;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    if-ge p4, v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Version must be >= 1, was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1f
    iput-object p1, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .line 92
    iput p4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    .line 93
    iput-object p5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    .line 94
    return-void
.end method

.method public static final changeDBPassword(Landroid/database/sqlite/SQLiteDatabase;[B)I
    .registers 3
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "newPassword"    # [B

    .prologue
    .line 540
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->changeDBPassword([B)I

    move-result v0

    return v0
.end method

.method public static final convert2PlainDB(Ljava/io/File;[BLjava/io/File;)V
    .registers 3
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "password"    # [B
    .param p2, "destDbFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 510
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convert2PlainDB(Ljava/io/File;[BLjava/io/File;)V

    .line 511
    return-void
.end method

.method public static final convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V
    .registers 3
    .param p0, "sourceDbFile"    # Ljava/io/File;
    .param p1, "destDbFile"    # Ljava/io/File;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 527
    invoke-static {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->convert2SecureDB(Ljava/io/File;Ljava/io/File;[B)V

    .line 528
    return-void
.end method

.method private getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;
    .registers 12
    .param p1, "writable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 180
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_10

    .line 181
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 183
    iput-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 190
    :cond_10
    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v4, :cond_29

    .line 191
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "getDatabase called recursively"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_1c
    if-eqz p1, :cond_26

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_10

    .line 186
    :cond_26
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 267
    :cond_28
    :goto_28
    return-object v0

    .line 194
    :cond_29
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 196
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x1

    :try_start_2c
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 198
    if-eqz v0, :cond_90

    .line 199
    if-eqz p1, :cond_3b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 200
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    .line 227
    :cond_3b
    :goto_3b
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 229
    if-eqz v0, :cond_126

    .line 230
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    .line 231
    .local v3, "version":I
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-eq v3, v4, :cond_fd

    .line 232
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_ea

    .line 233
    new-instance v4, Landroid/database/sqlite/SQLiteException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t upgrade read-only database from version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_83
    .catchall {:try_start_2c .. :try_end_83} :catchall_83

    .line 265
    .end local v3    # "version":I
    :catchall_83
    move-exception v4

    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 266
    if-eqz v0, :cond_8f

    iget-object v5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v5, :cond_8f

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8f
    throw v4

    .line 202
    :cond_90
    :try_start_90
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    if-nez v4, :cond_9a

    .line 203
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_83

    move-result-object v0

    goto :goto_3b

    .line 211
    :cond_9a
    :try_start_9a
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    iget-boolean v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v4, :cond_ad

    const/16 v4, 0x8

    :goto_a4
    iget-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v6, v7, v4, v8, v9}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_ab
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9a .. :try_end_ab} :catch_af
    .catchall {:try_start_9a .. :try_end_ab} :catchall_83

    move-result-object v0

    goto :goto_3b

    :cond_ad
    move v4, v5

    goto :goto_a4

    .line 215
    :catch_af
    move-exception v1

    .line 216
    .local v1, "ex":Landroid/database/sqlite/SQLiteException;
    if-eqz p1, :cond_b3

    .line 217
    :try_start_b2
    throw v1

    .line 219
    :cond_b3
    sget-object v4, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t open "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for writing (will try read-only):"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "path":Ljava/lang/String;
    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/4 v6, 0x1

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v2, v4, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_3b

    .line 237
    .end local v1    # "ex":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "path":Ljava/lang/String;
    .restart local v3    # "version":I
    :cond_ea
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_ed
    .catchall {:try_start_b2 .. :try_end_ed} :catchall_83

    .line 239
    if-nez v3, :cond_135

    .line 240
    :try_start_ef
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 248
    :goto_f2
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 249
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_fa
    .catchall {:try_start_ef .. :try_end_fa} :catchall_13f

    .line 251
    :try_start_fa
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    :cond_fd
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 257
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_126

    .line 258
    sget-object v4, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Opened "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in read-only mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v3    # "version":I
    :cond_126
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_128
    .catchall {:try_start_fa .. :try_end_128} :catchall_83

    .line 265
    iput-boolean v5, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 266
    if-eqz v0, :cond_28

    iget-object v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v4, :cond_28

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_28

    .line 242
    .restart local v3    # "version":I
    :cond_135
    :try_start_135
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-le v3, v4, :cond_144

    .line 243
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_13e
    .catchall {:try_start_135 .. :try_end_13e} :catchall_13f

    goto :goto_f2

    .line 251
    :catchall_13f
    move-exception v4

    :try_start_140
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_83

    .line 245
    :cond_144
    :try_start_144
    iget v4, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v3, v4}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_149
    .catchall {:try_start_144 .. :try_end_149} :catchall_13f

    goto :goto_f2
.end method

.method private getDatabaseLocked(ZZ[B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 15
    .param p1, "writable"    # Z
    .param p2, "secure"    # Z
    .param p3, "password"    # [B

    .prologue
    const/16 v3, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 285
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_12

    .line 286
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 288
    iput-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 295
    :cond_12
    iget-boolean v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v6, :cond_2b

    .line 296
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "getDatabase called recursively"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 289
    :cond_1e
    if-eqz p1, :cond_28

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-nez v6, :cond_12

    .line 291
    :cond_28
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 393
    :cond_2a
    :goto_2a
    return-object v0

    .line 299
    :cond_2b
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 301
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x1

    :try_start_2e
    iput-boolean v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 303
    if-eqz v0, :cond_b8

    .line 304
    if-eqz p1, :cond_3f

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 305
    if-nez p2, :cond_94

    .line 306
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    .line 354
    :cond_3f
    :goto_3f
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    if-eqz v0, :cond_155

    .line 357
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v5

    .line 358
    .local v5, "version":I
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-eq v5, v6, :cond_12f

    .line 359
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 360
    new-instance v6, Landroid/database/sqlite/SQLiteException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t upgrade read-only database from version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_87
    .catchall {:try_start_2e .. :try_end_87} :catchall_87

    .line 391
    .end local v5    # "version":I
    :catchall_87
    move-exception v6

    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 392
    if-eqz v0, :cond_93

    iget-object v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v7, :cond_93

    .line 393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_93
    throw v6

    .line 309
    :cond_94
    :try_start_94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->reopenReadWrite()V

    .line 310
    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TODO: Opening  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in read-write mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 313
    :cond_b8
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    if-nez v6, :cond_cc

    .line 314
    if-nez p2, :cond_c5

    .line 315
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/database/sqlite/SQLiteDatabase;->create(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_3f

    .line 317
    :cond_c5
    const/4 v6, 0x0

    invoke-static {v6, p3}, Landroid/database/sqlite/SQLiteDatabase;->createSecureDatabase(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_c9
    .catchall {:try_start_94 .. :try_end_c9} :catchall_87

    move-result-object v0

    goto/16 :goto_3f

    .line 333
    :cond_cc
    if-nez p2, :cond_e2

    .line 334
    :try_start_ce
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    iget-boolean v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v9, :cond_e0

    :goto_d6
    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    iget-object v10, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-virtual {v6, v8, v3, v9, v10}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto/16 :goto_3f

    :cond_e0
    move v3, v7

    goto :goto_d6

    .line 338
    :cond_e2
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "path":Ljava/lang/String;
    iget-boolean v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eqz v6, :cond_118

    .line 341
    .local v3, "flags":I
    :goto_f2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 342
    .local v1, "dbFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_10b

    .line 343
    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    const-string v8, "DB Directory does not exist"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 346
    :cond_10b
    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mFactory:Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    const/high16 v8, 0x10000000

    or-int/2addr v8, v3

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mErrorHandler:Landroid/database/DatabaseErrorHandler;

    invoke-static {v4, v6, v8, v9, p3}, Landroid/database/sqlite/SQLiteDatabase;->openSecureDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILandroid/database/DatabaseErrorHandler;[B)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_115
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_ce .. :try_end_115} :catch_11a
    .catchall {:try_start_ce .. :try_end_115} :catchall_87

    move-result-object v0

    goto/16 :goto_3f

    .end local v1    # "dbFile":Ljava/io/File;
    .end local v3    # "flags":I
    :cond_118
    move v3, v7

    .line 339
    goto :goto_f2

    .line 349
    .end local v4    # "path":Ljava/lang/String;
    :catch_11a
    move-exception v2

    .line 350
    .local v2, "ex":Landroid/database/sqlite/SQLiteException;
    :try_start_11b
    throw v2

    .line 364
    .end local v2    # "ex":Landroid/database/sqlite/SQLiteException;
    .restart local v5    # "version":I
    :cond_11c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_11f
    .catchall {:try_start_11b .. :try_end_11f} :catchall_87

    .line 366
    if-nez v5, :cond_164

    .line 367
    :try_start_121
    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 375
    :goto_124
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V

    .line 376
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_12c
    .catchall {:try_start_121 .. :try_end_12c} :catchall_16e

    .line 378
    :try_start_12c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 383
    :cond_12f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_155

    .line 384
    sget-object v6, Landroid/database/sqlite/SQLiteSecureOpenHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Opened "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in read-only mode"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    .end local v5    # "version":I
    :cond_155
    iput-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_157
    .catchall {:try_start_12c .. :try_end_157} :catchall_87

    .line 391
    iput-boolean v7, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    .line 392
    if-eqz v0, :cond_2a

    iget-object v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq v0, v6, :cond_2a

    .line 393
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto/16 :goto_2a

    .line 369
    .restart local v5    # "version":I
    :cond_164
    :try_start_164
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    if-le v5, v6, :cond_173

    .line 370
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v5, v6}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_16d
    .catchall {:try_start_164 .. :try_end_16d} :catchall_16e

    goto :goto_124

    .line 378
    :catchall_16e
    move-exception v6

    :try_start_16f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v6
    :try_end_173
    .catchall {:try_start_16f .. :try_end_173} :catchall_87

    .line 372
    :cond_173
    :try_start_173
    iget v6, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mNewVersion:I

    invoke-virtual {p0, v0, v5, v6}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    :try_end_178
    .catchall {:try_start_173 .. :try_end_178} :catchall_16e

    goto :goto_124
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3

    .prologue
    .line 403
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mIsInitializing:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Closed during initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_10
    :try_start_10
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 406
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_d

    .line 409
    :cond_24
    monitor-exit p0

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 174
    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 176
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getReadableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p1, "password"    # [B

    .prologue
    .line 279
    monitor-enter p0

    .line 280
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(ZZ[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 281
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 152
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public getWritableDatabase([B)Landroid/database/sqlite/SQLiteDatabase;
    .registers 4
    .param p1, "password"    # [B

    .prologue
    .line 273
    monitor-enter p0

    .line 274
    const/4 v0, 0x1

    const/4 v1, 0x1

    :try_start_3
    invoke-direct {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteSecureOpenHelper;->getDatabaseLocked(ZZ[B)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 275
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 428
    return-void
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 477
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t downgrade database from version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 494
    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_1
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    if-eq v0, p1, :cond_22

    .line 118
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_20

    .line 119
    if-eqz p1, :cond_24

    .line 120
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    .line 125
    :cond_20
    :goto_20
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mEnableWriteAheadLogging:Z

    .line 127
    :cond_22
    monitor-exit p0

    .line 128
    return-void

    .line 122
    :cond_24
    iget-object v0, p0, Landroid/database/sqlite/SQLiteSecureOpenHelper;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->disableWriteAheadLogging()V

    goto :goto_20

    .line 127
    :catchall_2a
    move-exception v0

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw v0
.end method
