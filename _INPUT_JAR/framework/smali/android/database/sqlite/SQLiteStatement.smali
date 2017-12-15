.class public final Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "sql"    # Ljava/lang/String;
    .param p3, "bindArgs"    # [Ljava/lang/Object;

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Landroid/os/CancellationSignal;)V

    .line 32
    return-void
.end method


# virtual methods
.method public execute()V
    .registers 7

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 44
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->execute(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)V
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1b
    .catchall {:try_start_3 .. :try_end_17} :catchall_24

    .line 49
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 51
    return-void

    .line 45
    :catch_1b
    move-exception v0

    .line 46
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1c
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 47
    throw v0
    :try_end_24
    .catchall {:try_start_1c .. :try_end_24} :catchall_24

    .line 49
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_24
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public executeInsert()J
    .registers 7

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 86
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->executeForLastInsertedRowId(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1c
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    move-result-wide v2

    .line 92
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    return-wide v2

    .line 88
    :catch_1c
    move-exception v0

    .line 89
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 90
    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 92
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_25
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public executeUpdateDelete()I
    .registers 7

    .prologue
    .line 62
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 64
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->executeForChangedRowCount(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)I
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1c
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    move-result v1

    .line 70
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    return v1

    .line 66
    :catch_1c
    move-exception v0

    .line 67
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 68
    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 70
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_25
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public simpleQueryForBlobFileDescriptor()Landroid/os/ParcelFileDescriptor;
    .registers 7

    .prologue
    .line 164
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 166
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->executeForBlobFileDescriptor(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1c
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    move-result-object v1

    .line 172
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    return-object v1

    .line 168
    :catch_1c
    move-exception v0

    .line 169
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 170
    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 172
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_25
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public simpleQueryForIntegrityCheck()Ljava/lang/String;
    .registers 7

    .prologue
    .line 143
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 145
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1c
    .catchall {:try_start_3 .. :try_end_17} :catchall_23

    move-result-object v1

    .line 151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    :goto_1b
    return-object v1

    .line 147
    :catch_1c
    move-exception v0

    .line 149
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1d
    const-string v1, "false"
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_23

    .line 151
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    goto :goto_1b

    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_23
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public simpleQueryForLong()J
    .registers 7

    .prologue
    .line 105
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 107
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->executeForLong(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)J
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1c
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    move-result-wide v2

    .line 113
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    return-wide v2

    .line 109
    :catch_1c
    move-exception v0

    .line 110
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 111
    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 113
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_25
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 128
    :try_start_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSession()Landroid/database/sqlite/SQLiteSession;

    move-result-object v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getBindArgs()[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getConnectionFlags()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteSession;->executeForString(Ljava/lang/String;[Ljava/lang/Object;ILandroid/os/CancellationSignal;)Ljava/lang/String;
    :try_end_17
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_17} :catch_1c
    .catchall {:try_start_3 .. :try_end_17} :catchall_25

    move-result-object v1

    .line 134
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    return-object v1

    .line 130
    :catch_1c
    move-exception v0

    .line 131
    .local v0, "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_1d
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->getCorruptCode()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteStatement;->onCorruption(I)V

    .line 132
    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    .line 134
    .end local v0    # "ex":Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_25
    move-exception v1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteProgram: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
