.class public Landroid/renderscript/ScriptC;
.super Landroid/renderscript/Script;
.source "ScriptC.java"


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "com.android.renderscript.cache"

.field private static final TAG:Ljava/lang/String; = "ScriptC"

.field static mCachePath:Ljava/lang/String;


# direct methods
.method protected constructor <init>(ILandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 39
    int-to-long v0, p1

    invoke-direct {p0, v0, v1, p2}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(JLandroid/renderscript/RenderScript;)V
    .registers 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 50
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)V
    .registers 8
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceID"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 60
    invoke-direct {p0, v2, v3, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 61
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J

    move-result-wide v0

    .line 62
    .local v0, "id":J
    cmp-long v2, v0, v2

    if-nez v2, :cond_15

    .line 63
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_15
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 66
    return-void
.end method

.method protected constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/String;[B[B)V
    .registers 11
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "resName"    # Ljava/lang/String;
    .param p3, "bitcode32"    # [B
    .param p4, "bitcode64"    # [B

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    invoke-direct {p0, v4, v5, p1}, Landroid/renderscript/Script;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 75
    const-wide/16 v0, 0x0

    .line 76
    .local v0, "id":J
    sget v2, Landroid/renderscript/RenderScript;->sPointerSize:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1c

    .line 77
    invoke-static {p1, p2, p3}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    .line 81
    :goto_10
    cmp-long v2, v0, v4

    if-nez v2, :cond_21

    .line 82
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Loading of ScriptC script failed."

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 79
    :cond_1c
    invoke-static {p1, p2, p4}, Landroid/renderscript/ScriptC;->internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J

    move-result-wide v0

    goto :goto_10

    .line 84
    :cond_21
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/ScriptC;->setID(J)V

    .line 85
    return-void
.end method

.method private static declared-synchronized internalCreate(Landroid/renderscript/RenderScript;Landroid/content/res/Resources;I)J
    .registers 17
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceID"    # I

    .prologue
    .line 97
    const-class v10, Landroid/renderscript/ScriptC;

    monitor-enter v10

    :try_start_3
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_59

    move-result-object v5

    .line 100
    .local v5, "is":Ljava/io/InputStream;
    const/16 v9, 0x400

    :try_start_9
    new-array v6, v9, [B

    .line 101
    .local v6, "pgm":[B
    const/4 v7, 0x0

    .line 103
    .local v7, "pgmLength":I
    :goto_c
    array-length v9, v6

    sub-int v1, v9, v7

    .line 104
    .local v1, "bytesLeft":I
    if-nez v1, :cond_20

    .line 105
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [B

    .line 106
    .local v0, "buf2":[B
    const/4 v9, 0x0

    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v9, v0, v11, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 107
    move-object v6, v0

    .line 108
    array-length v9, v6

    sub-int v1, v9, v7

    .line 110
    .end local v0    # "buf2":[B
    :cond_20
    invoke-virtual {v5, v6, v7, v1}, Ljava/io/InputStream;->read([BII)I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_4d

    move-result v2

    .line 111
    .local v2, "bytesRead":I
    if-gtz v2, :cond_4b

    .line 117
    :try_start_26
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_52
    .catchall {:try_start_26 .. :try_end_29} :catchall_59

    .line 123
    :try_start_29
    invoke-virtual/range {p1 .. p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8

    .line 126
    .local v8, "resName":Ljava/lang/String;
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    if-nez v9, :cond_43

    .line 127
    new-instance v4, Ljava/io/File;

    sget-object v9, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    const-string v11, "com.android.renderscript.cache"

    invoke-direct {v4, v9, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 128
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    .line 129
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 132
    .end local v4    # "f":Ljava/io/File;
    :cond_43
    sget-object v9, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v6, v7}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_59

    move-result-wide v12

    monitor-exit v10

    return-wide v12

    .line 114
    .end local v8    # "resName":Ljava/lang/String;
    :cond_4b
    add-int/2addr v7, v2

    .line 115
    goto :goto_c

    .line 117
    .end local v1    # "bytesLeft":I
    .end local v2    # "bytesRead":I
    .end local v6    # "pgm":[B
    .end local v7    # "pgmLength":I
    :catchall_4d
    move-exception v9

    :try_start_4e
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    throw v9
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_52} :catch_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_59

    .line 119
    :catch_52
    move-exception v3

    .line 120
    .local v3, "e":Ljava/io/IOException;
    :try_start_53
    new-instance v9, Landroid/content/res/Resources$NotFoundException;

    invoke-direct {v9}, Landroid/content/res/Resources$NotFoundException;-><init>()V

    throw v9
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_59

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "is":Ljava/io/InputStream;
    :catchall_59
    move-exception v9

    monitor-exit v10

    throw v9
.end method

.method private static declared-synchronized internalStringCreate(Landroid/renderscript/RenderScript;Ljava/lang/String;[B)J
    .registers 9
    .param p0, "rs"    # Landroid/renderscript/RenderScript;
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "bitcode"    # [B

    .prologue
    .line 137
    const-class v2, Landroid/renderscript/ScriptC;

    monitor-enter v2

    :try_start_3
    sget-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    if-nez v1, :cond_19

    .line 138
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/renderscript/RenderScript;->mCacheDir:Ljava/io/File;

    const-string v3, "com.android.renderscript.cache"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 143
    .end local v0    # "f":Ljava/io/File;
    :cond_19
    sget-object v1, Landroid/renderscript/ScriptC;->mCachePath:Ljava/lang/String;

    array-length v3, p2

    invoke-virtual {p0, p1, v1, p2, v3}, Landroid/renderscript/RenderScript;->nScriptCCreate(Ljava/lang/String;Ljava/lang/String;[BI)J
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_22

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .line 137
    :catchall_22
    move-exception v1

    monitor-exit v2

    throw v1
.end method
