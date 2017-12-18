.class public Lcom/sec/android/app/sysscope/job/a/b;
.super Ljava/lang/Object;


# static fields
.field static final b:[B

.field static final c:[B


# instance fields
.field a:Lcom/sec/android/app/sysscope/job/a/c;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sec/android/app/sysscope/job/a/b;->c:[B

    return-void

    :array_0
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
        0x1t
        0x1t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        0x7ft
        0x45t
        0x4ct
        0x46t
        0x2t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sysscope/job/a/b;->d:Landroid/content/Context;

    new-instance v0, Lcom/sec/android/app/sysscope/job/a/c;

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sysscope/job/a/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-direct {p0}, Lcom/sec/android/app/sysscope/job/a/b;->a()V

    return-void
.end method

.method private a()V
    .locals 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-array v2, v1, [Ljava/io/InputStream;

    new-array v3, v1, [Ljava/io/BufferedInputStream;

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "/data/data/com.sec.android.app.sysscope/databases/"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v4, Ljava/io/File;

    const-string v1, "/data/data/com.sec.android.app.sysscope/databases/SysScope.db"

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    move v1, v0

    :goto_0
    array-length v6, v2

    if-ge v1, v6, :cond_2

    const-string v6, "databases/SysScope.db"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    aput-object v6, v2, v1

    new-instance v6, Ljava/io/BufferedInputStream;

    aget-object v7, v2, v1

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    aput-object v6, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x400

    new-array v5, v5, [B

    :goto_1
    array-length v6, v2

    if-ge v0, v6, :cond_4

    :goto_2
    aget-object v6, v3, v0

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v6, v5, v7, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_3
    return-void

    :cond_3
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method private b(Ljava/io/File;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    array-length v3, v3

    new-array v3, v3, [B

    sget-object v4, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    array-length v4, v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/FileInputStream;->read([BII)I

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    sget-object v2, Lcom/sec/android/app/sysscope/job/a/b;->b:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v2, Lcom/sec/android/app/sysscope/job/a/b;->c:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .locals 12

    const/4 v10, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sysscope/job/a/b;->b(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/sec/android/app/sysscope/job/a/a;

    invoke-direct {v1}, Lcom/sec/android/app/sysscope/job/a/a;-><init>()V

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/job/a/c;->a()Lcom/sec/android/app/sysscope/job/a/c;

    iget-object v2, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v2}, Lcom/sec/android/app/sysscope/job/a/c;->c()Landroid/database/Cursor;

    move-result-object v11

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x3

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v2, 0x4

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x5

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/sec/android/app/sysscope/job/a/a;->a(Ljava/io/File;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/job/a/c;->b()V

    move v0, v10

    goto :goto_0

    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    iget-object v1, p0, Lcom/sec/android/app/sysscope/job/a/b;->a:Lcom/sec/android/app/sysscope/job/a/c;

    invoke-virtual {v1}, Lcom/sec/android/app/sysscope/job/a/c;->b()V

    goto :goto_0
.end method
