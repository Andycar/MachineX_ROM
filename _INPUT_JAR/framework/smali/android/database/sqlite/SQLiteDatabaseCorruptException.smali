.class public Landroid/database/sqlite/SQLiteDatabaseCorruptException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteDatabaseCorruptException.java"


# instance fields
.field private err_msg:[Ljava/lang/String;

.field private err_num:[I

.field private mCorrupt_code:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 33
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    .line 27
    const/16 v0, 0xb

    iput v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_1e

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    .line 29
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "database disk image is malformed"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "file is encrypted or is not a database"

    aput-object v2, v0, v1

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    .line 33
    return-void

    .line 28
    :array_1e
    .array-data 4
        0xb
        0x1a
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 36
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 27
    const/16 v2, 0xb

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    .line 28
    new-array v2, v3, [I

    fill-array-data v2, :array_38

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    .line 29
    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "database disk image is malformed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "file is encrypted or is not a database"

    aput-object v4, v2, v3

    iput-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_33

    .line 41
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_msg:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 42
    .local v1, "pos":I
    if-ltz v1, :cond_34

    .line 43
    iget-object v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->err_num:[I

    aget v2, v2, v0

    iput v2, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    .line 47
    .end local v1    # "pos":I
    :cond_33
    return-void

    .line 40
    .restart local v1    # "pos":I
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 28
    nop

    :array_38
    .array-data 4
        0xb
        0x1a
    .end array-data
.end method


# virtual methods
.method public getCorruptCode()I
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Landroid/database/sqlite/SQLiteDatabaseCorruptException;->mCorrupt_code:I

    return v0
.end method
